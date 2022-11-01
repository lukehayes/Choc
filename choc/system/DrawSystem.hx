package choc.system;

import choc.component.Component;

class DrawSystem
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
