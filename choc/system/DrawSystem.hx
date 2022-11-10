package choc.system;

import choc.component.Component;
import choc.component.std.TransformComponent;
import choc.component.std.ColorComponent;
import choc.system.System;

import choc.World;

class DrawSystem extends System
{
    private var g : h2d.Graphics;

    public function new(g : h2d.Graphics)
    {
        super("Draw");
        this.g = g;
    }

    public function update(dt: Float)
    {
        g.clear();
        for(entity in World.instance.entities)
        {
            if(entity.hasComponent("Transform"))
            {
                var t = cast(entity.getComponent("Transform"), TransformComponent);
                var c = cast(entity.getComponent("Color"), ColorComponent);

                g.beginFill(c.color);
                    g.drawRect(t.x, t.y, t.w,t.h);
                g.endFill();
            };
        }
    }
}
