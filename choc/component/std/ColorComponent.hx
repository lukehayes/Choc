package choc.component.std;

import choc.component.Component;
import Random;

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

    /**
      Generate a random color value.
     **/
    public function random() : Int
    {
        var values = ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"];
        var color = "0x";

        for(i in 0...6)
        {
            color += Random.fromArray(values);
        }

        return Std.parseInt(color);
    }
}
