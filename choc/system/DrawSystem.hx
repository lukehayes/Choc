package choc.system;

import choc.component.Component;
import choc.component.std.TransformComponent;
import choc.component.std.ColorComponent;
import choc.system.System;

import choc.World;

class DrawSystem extends System
{
    private var g : h2d.Graphics;

    public function new(name, g : h2d.Graphics)
    {
        super(name);
        this.g = g;
    }

    public function update(dt: Float)
    {
        g.clear();
        for(entity in World.instance.entities)
        {
            if(entity.hasComponent("Transform"))
            {
                var c = cast(entity.getComponent("Color"), ColorComponent);
                g.beginFill(c.color);
                var t = cast(entity.getComponent("Transform"), TransformComponent);

                t.x += t.dx * t.speed * dt;
                t.y += t.dy * t.speed * dt;

                // Simple collision detection.
                if(t.x < 0 || t.x > 600)
                {
                    t.dx = -t.dx;
                }

                if(t.y < 0 || t.y > 600)
                {
                    t.dy = -t.dx;
                }

                g.drawRect(t.x, t.y, t.w,t.h);
                g.endFill();
            };
        }
    }
}
