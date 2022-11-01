package choc.system;

import choc.system.System;
import choc.component.Component;

class DrawSystem extends System
{
    var g : h2d.Graphics;

    public function new(name, g : h2d.Graphics)
    {
        super(name);
        this.g = g;
    }

    public function render()
    {
        g.beginFill(0x00ff00);
        g.drawRect(40, 310, 30, 40);
        g.endFill();
    }

    override public function update(dt: Float)
    {
        trace("Updating " + this);
        trace("Delta  " + dt);
    }
}
