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
            var tc = cast(e.getComponent('Transform'), TransformComponent);

            tc.x += tc.dx + tc.speed * dt;
            tc.y += tc.dy + tc.speed * dt;

            // TODO Create a proper collision system solution.
            //
            // Edge of screen check.
            if(tc.x < 2 || tc.x > 580)
            {
                tc.dx = -tc.dx;
            }

            if(tc.y < 2 || tc.y > 580)
            {
                tc.dy = -tc.dy;
            }

        }


    }
}
