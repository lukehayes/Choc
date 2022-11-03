package choc.system;

import choc.component.Component;
import choc.system.System;

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

        g.beginFill(0x00ff00);
        g.drawRect(100, 110, 330, 200);
        g.endFill();
    }
}
