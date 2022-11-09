package choc.component.std;

import choc.component.Component;

/**
  Transform component containts information like position.
**/
class TransformComponent extends Component
{
    public var x      : Float;
    public var y      : Float;
    public var w      : Float;
    public var h      : Float;
    public var dx     : Float;
    public var dy     : Float;
    public var speed : Float;


    public function new(
            x:Float,
            y:Float,
            dx:Float,
            dy:Float,
            w:Float = 10,
            h:Float = 10,
            speed : Float = 100)
    {
        super("Transform");

        this.x = x;
        this.y = y;
        this.dx = dx;
        this.dy = dy;
        this.w = w;
        this.h = h;
        this.speed = speed;
    }
}
