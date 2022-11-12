package choc.component;

/**
  Base class for all components.
**/
class Component
{
    var name : String;

    /**
      Constructor.

      @param name    The name of the component
    **/
    public function new(name)
    {
        this.name = name;
    }

    /**
      Get the string representation of the component.
    **/
    public function toString()
    {
        return this.name + " Component";
    }
}
