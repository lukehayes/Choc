package choc.component;

/**
  Base class for all components.
**/
class Component
{
    var name : String;

    /**
      Constructor.
    **/
    public function new()
    {
        this.name = "Component";
    }

    /**
      Get the string representation of the component.
    **/
    public function toString()
    {
        return this.name + " Component";
    }
}
