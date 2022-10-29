package Choc.system;

/**
  Base class for all systems.
**/
class System
{
    var name : String;

    public function new(name)
    {
        this.name = name;
    }

    public function update(dt: Float)
    {
        trace("Updating " + this.name);
    }
}
