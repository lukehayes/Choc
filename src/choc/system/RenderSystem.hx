package choc.system;

import choc.World;
import choc.component.std.TransformComponent;
import choc.component.std.SpriteComponent;
import choc.system.System;

class RenderSystem extends System
{
    private var g : h2d.Graphics;

    public var scene : h2d.Scene;

    public function new(world :World, scene: h2d.Scene )
    {
        super(world);
        this.g = new h2d.Graphics(scene);
        this.scene = scene;
    }

    public function update(dt: Float)
    {

        this.g.clear();

        for(e in Global.entities)
        {
            var tc = cast(e.getComponent('Transform'), TransformComponent);
            var sc = e.hasComponent('Sprite') ? cast(e.getComponent('Sprite'), SpriteComponent) : null;
            
            // Scales the sprites to the components scale factor.
            this.g.scaleX = sc.scaleFactor;
            this.g.scaleY = sc.scaleFactor;

            if(sc != null)
            {

                this.g.drawTile(tc.x,tc.y, sc.getTile());
            }else
            {
                this.g.beginFill(tc.color);
                    this.g.drawRect(
                        tc.x,
                        tc.y,
                        tc.w,
                        tc.h
                    );
                this.g.endFill();
            }

        }
    }
}
