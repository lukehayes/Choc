package choc.system;

import choc.component.Component;

/**
  Base class for all systems.
**/
class System
{
    public var name : String;

    public function new(name)
    {
        this.name = name;
    }

    public function toString()
    {
        return this.name + " System";
    }

    public function update(dt: Float)
    {
        trace("Updating " + this);
        trace("Delta  " + dt);
    }
}
