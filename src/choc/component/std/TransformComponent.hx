package choc.component.std;

import choc.component.Component;

/**
  Transform component contains information like position, width and speed.
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
    public var color : Int;


    public function new(
            x:Float  = 1,
            y:Float  = 1,
            dx:Float = 1,
            dy:Float = 1,
            w:Float  = 10,
            h:Float  = 10,
            speed : Float = 100,
            color : Int = 0xFF00FFFF
            )
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
