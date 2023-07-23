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

    public function new(ents : Entities)
    {
        super("Draw");
        this.g = new h2d.Graphics();

        this.entities = ents;
    }

    public function update(dt: Float)
    {

        this.g.clear();
        trace(this.entities.length);
        for(e in this.entities)
        {
            trace(e);
            var transform_comp = cast(e[Global.TRANSFORM_COMPONENT_INDEX], TransformComponent);

            this.g.beginFill(0xFF00FF);
            this.g.drawRect(10,10,10,10);
            this.g.endFill();
        }

    }
}
