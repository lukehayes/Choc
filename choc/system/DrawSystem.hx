package choc.system;

import choc.component.Component;
import test.TransformComponent;
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

    override public function update(dt: Float)
    {
        trace("Updating " + this);
        trace("Delta  " + dt);

        g.clear();
        g.beginFill(0x00ff00);
        for(entity in World.instance.entities)
        {
            if(entity.hasComponent("Transform"))
            {
                var t = cast(entity.getComponent("Transform"), TransformComponent);
                t.x += 0.1 * 100 *  dt;
                g.drawRect(t.x, t.y, 10,10 );
            };
        }
       g.endFill();
    }
}
