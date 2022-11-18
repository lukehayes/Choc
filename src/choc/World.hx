package choc;

import choc.system.System;
import choc.entity.Entity;

/**
  This class is the main class that controls the ECS.
**/
class World
{
    /**
      Singleton instance of the World object.
    **/
    public static final instance : World = new World();

    /**
      All of systems used inside the world.
    **/
    public var systems:Map<String, System>;

    /**
      All of entites used inside the world.
    **/
    public var entities:Map<Int, Entity>;

    /**
      The total number of systems defined in the world.
    **/
    public var systemCount:Int = 0;

    /**
      The total number of entities in the world.
    **/
    public var entityCount:Int = 0;

    /**
      World should be used as a singleton, so constructor is private.
    **/
    private function new()
    {
        this.systems  = new Map<String,System>();
        this.entities = new Map<Int,Entity>();
    }

    /**
      Iterate over every system available to the World instance.

      This in turn will iterate over every entity inside each system.
    **/
    public function update(dt: Float)
    {
        for(system in systems)
        {
            system.update(dt);
        }
    }

    /**
      Add a system to the world.

      @param system
    **/
    public function addSystem(system:System)
    {
        this.systems[system.name] = system;
    }

    /**
      Add a entity to the world.

      @param entity
    **/
    public function addEntity(index:Int, entity:Entity)
    {
        this.entities[index] = entity;
    }
}

