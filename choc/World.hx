package choc;

import choc.system.System;
import choc.entity.Entity;

/**
  This class is the main class that controls the ECS.
**/
class World
{
    public static final instance : World = new World();

    /**
      All of systems used inside the world.
    **/
    public var systems:Array<System> = [];

    /**
      All of entites used inside the world.
    **/
    public var entities:Array<Entity> = [];

    /**
      The total number of systems defined in the world.
    **/
    public var systemCount:Int = 0;

    /**
      The total number of entities in the world.
    **/
    public var entityCount:Int = 0;

    private function new(){}

    public function update(dt: Float)
    {
        for(system in systems)
        {
            system.update(dt);
        }
    }

    /**
      Add a system to the world.

      @param index

      @param system
    **/
    public function addSystem(index:Int, system:System)
    {
        this.systems.insert(index, system);
        this.systemCount++;
    }

    /**
      Add a entity to the world.

      @param index

      @param entity
    **/
    public function addEntity(index:Int, entity:Entity)
    {
        this.entities.insert(index, entity);
        this.entityCount++;
    }
}

