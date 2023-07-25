package choc;

import choc.system.System;
import choc.entity.Entity;
import choc.Global;

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
    public var entities:Array<Array<choc.component.Component>>;

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
        this.entities = [];
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
      Remove a system from the world.

      @param name    The name of the system.

      @return Bool
    **/
    public function removeSystem(name:String) : Bool
    {
        if(this.systems.exists(name))
        {
            this.systemCount--;
            return this.systems.remove(name);
        }else {
            return false;
        }
    }

    /**
      Remove a entity from the world.

      @param name    The name of the system.

      @return Bool
    **/
    public function removeEntity(index:Int) : Bool
    {
        return this.entities.remove(index);
    }

    /**
      Add a system to the world.

      @param system
    **/
    public function addSystem(system:System)
    {
        this.systems[system.name] = system;
        this.systemCount++;
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

