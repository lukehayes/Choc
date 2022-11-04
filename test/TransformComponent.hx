package test;

import choc.component.Component;

/**
  Base class for all components.
**/
class TransformComponent extends Component
{
    public var x : Float;
    public var y : Float;


    public function new(x:Float, y:Float)
    {
        super("Transform");

        this.x = x;
        this.y = y;
    }
}
