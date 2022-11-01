package choc;

import choc.system.System;

/**
  This class is the main class that controls the ECS.
**/
class World
{
    public var systems:Array<System> = [];
    public var systemCount:Int = 0;

    public function new(){}

    public function update(dt: Float)
    {
        for(system in systems)
        {
            system.update(dt);
        }
    }

    public function addSystem(position:Int, system:System)
    {
        this.systems.insert(position, system);
        this.systemCount++;
        trace("Adding element");
    }
}

