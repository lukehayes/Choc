package choc.system;

import choc.Global;
import choc.Typedefs;
import choc.component.std.TransformComponent;
import choc.component.std.SpriteComponent;
import choc.system.System;

class RenderSystem extends System
{
    private var g : h2d.Graphics;

    private var entities = null;

    public function new(ents : Entities, scene: h2d.Scene )
    {
        super();
        this.g = new h2d.Graphics(scene);
        this.entities = ents;
    }

    public function update(dt: Float)
    {

        this.g.clear();

        for(e in this.entities)
        {
            var tc = cast(e[Global.TRANSFORM_COMPONENT_INDEX], TransformComponent);
            var sc = cast(e[Global.SPRITE_COMPONENT_INDEX], SpriteComponent);


            if(Std.isOfType(sc, SpriteComponent))
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
