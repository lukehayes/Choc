package choc.component;

/**
  Base class for all components.
**/
class MoveComponent extends Component
{
    /**
      The x position.
    **/
    public var x : Int;

    /**
      The y position.
    **/
    public var y : Int;

    public function new()
    {
        super("Move");
    }

    public function toString()
    {
        return this.name + " Component";
    }

    public function update(dt: Float)
    {
        trace("Updating " + this);
    }
}
