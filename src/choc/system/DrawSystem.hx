package choc.system;

import choc.Global;
import choc.component.Component;
import choc.component.std.TransformComponent;
import choc.component.std.ColorComponent;
import choc.system.System;

import choc.World;

typedef Entities = Array<Array<Component>>;

class DrawSystem extends System
{
    private var g : h2d.Graphics;

    private var entities = null;

    public function new(ents : Entities, scene: h2d.Scene )
    {
        super("Draw");
        this.g = new h2d.Graphics(scene);

        this.entities = ents;
    }

    public function update(dt: Float)
    {

        this.g.clear();

        var entityCount = Global.ENTITY_COUNT;

        for(e in this.entities)
        {
            var tc = cast(e[Global.TRANSFORM_COMPONENT_INDEX], TransformComponent);

            if(Std.isOfType(tc, TransformComponent))
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
