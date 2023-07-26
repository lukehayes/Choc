package choc.system;

import choc.Global;
import choc.component.Component;
import choc.component.std.TransformComponent;
import choc.system.System;

import choc.World;
import choc.Typedefs;

class MoveSystem extends System
{
    private var entities = null;

    public function new(ents : Entities)
    {
        super();
        this.entities = ents;
    }

    public function update(dt: Float)
    {

        for(e in this.entities)
        {
            var tc = cast(e[Global.TRANSFORM_COMPONENT_INDEX], TransformComponent);

            if(Std.isOfType(tc, TransformComponent))
            {
                tc.x += tc.dx + tc.speed * dt;
                tc.y += tc.dy + tc.speed * dt;
            }

        }


    }
}
