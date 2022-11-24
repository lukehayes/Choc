package choc.system;

import choc.component.Component;
import choc.entity.Entity;

/**
  Base class for all systems. 

  Class is abstract and should subclasses should inherit the update() method.
**/
abstract class System
{
    /**
      The name of the system.
    **/
    public var name : String;

    /**
      List of components the system requires.
    **/
    public var requirements: Array<String>;

    /**
      List of all entities that have the required components.
    **/
    private var filteredEntities : Array<Entity>;

    /**
      Constructor.

      @param name    The name of the system.
    **/
    public function new(name)
    {
        this.name = name;
        this.requirements   = [];
        this.filteredEntities = [];
    }

    /**
      List all of the components this system needs to work.

      @param args    All of the required components.

      @return Array
    **/
    public function requires(...args:String) : Array<String>
    {
        for(arg in args)
        {
            this.requirements.push(arg);
        }

        return this.requirements;
    }

    /**
      Loop through all of the entities in the world and extract all of
      the ones have have the required components the system needs.

      Runs once every frame.
    **/
    public function filterEntities()
    {
        for(entity in World.instance.entities)
        {
            var meetsRequirement = false;
            var requirementCount = 0;

            for(req in this.requirements)
            {
                if(entity.hasComponent(req))
                {
                    requirementCount += 1;
                }
            }

            if(requirementCount == requirements.length)
            {
                this.filteredEntities.push(entity);
            }
        }
    }

    /**
      Get the name of the system. Concatenates the name of the child system
      with the string "System".

      @return The name of the system.
     **/
    public function toString() : String
    {
        return this.name + " System";
    }

    /**
      Update the system. Method is abstract so a subsystem should implement it.

      @param dt    Delta time.
    **/
    abstract public function update(dt: Float) : Void;
}
