package choc.system;

import choc.component.Component;

/**
  Base class for all systems. 

  Class is abstract and should subclasses should inherit the update() method.
**/
abstract class System
{
    public var name : String;

    /**
      Constructor.

      @param name    The name of the system.
    **/
    public function new(name)
    {
        this.name = name;
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
