package choc.system;

import choc.component.Component;
import choc.component.std.TransformComponent;
import choc.component.std.ColorComponent;
import choc.system.System;
import choc.entity.Entity;

import choc.World;

class MovementSystem extends System
{
    public function new()
    {
        super("Movement");

        this.requires("Transform");
    }

    public function update(dt: Float)
    {
        this.filterEntities();

        for(entity in this.filteredEntities)
        {
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
        }

        this.filteredEntities = [];
    }
}
