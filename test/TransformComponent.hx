package test;

import choc.component.Component;

/**
  Base class for all components.
**/
class TransformComponent extends Component
{
    public var x : Int;
    public var y : Int;


    public function new(x:Int, y:Int)
    {
        super("Transform");

        this.x = x;
        this.y = y;
    }
}
