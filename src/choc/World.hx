package choc;

import choc.Global;
import choc.Typedefs;

import choc.system.System;
import choc.system.RenderSystem;
import choc.system.MoveSystem;

import choc.entity.Entity;

/**
  This class is the main class that controls the ECS.
**/
class World
{
    /**
      All of systems used inside the world.
    **/
    public var systems:Map<String, System>;

    /**
      All of entities used inside the world.
    **/
    public var entities:Entities;

    /**
      The total number of systems defined in the world.
    **/
    public var systemCount:Int = 0;

    /**
      The total number of entities in the world.
    **/
    public var entityCount:Int = 0;

    /**
      The scene being rendered to.
    **/
    public var scene : h2d.Scene;

    /**
      World should be used as a singleton, so constructor is private.
    **/
    public function new(scene: h2d.Scene)
    {
        this.systems  = new Map<String,System>();
        this.entities = [];

        // Add default systems.
        this.addSystem(
            "Render",
            new RenderSystem(this.entities, scene)
        );

        // Add default systems.
        this.addSystem(
            "Move",
            new MoveSystem(this.entities)
        );

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
    public function removeEntity(entity:Entity) : Bool
    {
        return this.entities.remove(entity);
    }

    /**
      Add a system to the world.

      @param name    The name of the system.

      @param system  Instance of the system to add.

      @param system
    **/
    public function addSystem(name:String, system:System)
    {
        this.systems[name] = system;
        this.systemCount++;
    }

    /**
      Add a entity to the world.

      @param entity
    **/
    public function addEntity(entity:Entity)
    {
        this.entityCount++;
        this.entities.push(entity);
    }
}

