package choc.component.std;

import choc.component.Component;

/**
  Color component contains RGB hex value,
  helpful for rendering simple things.
**/
class ColorComponent extends Component
{
    public var color : Int;

    public function new(
            color:Int = 0xFF00FF
    )
    {
        super("Color");
        this.color = color;
    }
}
