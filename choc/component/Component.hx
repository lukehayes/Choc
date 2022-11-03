package choc.component;

/**
  Base class for all components.
**/
class Component
{
    public var name : String;

    public function new(name)
    {
        this.name = name;
    }

    public function toString()
    {
        return this.name + " Component";
    }
}
