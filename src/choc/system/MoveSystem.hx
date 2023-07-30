package choc.system;

import choc.Global;
import choc.World;
import choc.component.std.TransformComponent;
import choc.system.System;

class MoveSystem extends System
{
    public function new(world : World)
    {
        super(world);
    }

    public function update(dt: Float)
    {
        for(e in Global.entities)
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
                
                this.world.removeEntity(e);
            }

            if(tc.y < 2 || tc.y > 580)
            {
                tc.dy = -tc.dy;
            }
        }
    }
}
