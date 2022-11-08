package choc.component.std;

import choc.component.Component;

/**
  Base class for all components.
**/
class TransformComponent extends Component
{
    public var x      : Float;
    public var y      : Float;
    public var dx     : Float;
    public var dy     : Float;
    public var speed : Float;


    public function new(
            x:Float,
            y:Float,
            dx:Float,
            dy:Float,
            speed : Float = 100)
    {
        super("Transform");

        this.x = x;
        this.y = y;
        this.dx = dx;
        this.dy = dy;
        this.speed = speed;
    }
}
