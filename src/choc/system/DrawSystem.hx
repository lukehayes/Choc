package choc.system;

import choc.component.Component;
import choc.component.std.TransformComponent;
import choc.component.std.ColorComponent;
import choc.system.System;

import choc.World;

class DrawSystem extends System
{
    private var g : h2d.Graphics;
    private var entities : EntityMap;

    public function new(ents : EntityMap)
    {
        super("Draw");
        this.g = new h2d.Graphics();
        this.entities = ents;
    }

    public function update(dt: Float)
    {
        this.g.clear();

        for(i in 0...10)
        {
            var t = this.entities[i].component[0];

            this.g.beginFill(c.color);
                this.g.drawRect(t.x, t.y, t.w,t.h);
            this.g.endFill();

        }

    }
}
