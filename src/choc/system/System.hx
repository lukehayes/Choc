package choc.system;

/**
  Base class for all systems. 

  Class is abstract and should subclasses should inherit the update() method.
**/
abstract class System
{
    /**
      Constructor.
    **/
    public function new()
    {
    }

    /**
      Get the name of the system. Concatenates the name of the child system
      with the string "System".

      @return The name of the system.
     **/
    public function toString() : String
    {
        return "Base System";
    }

    /**
      Update the system. Method is abstract so a subsystem should implement it.

      @param dt    Delta time.
    **/
    abstract public function update(dt: Float) : Void;
}
