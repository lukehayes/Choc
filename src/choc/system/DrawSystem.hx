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

    public function new(ents : Entities)
    {
        super("Draw");
        this.g = new h2d.Graphics();
    }

    public function update(dt: Float)
    {
        this.g.clear();
    }
}
