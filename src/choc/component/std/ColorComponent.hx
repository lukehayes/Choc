package choc.component.std;

import choc.component.Component;
import Random;

/**
  Color component contains RGB hex value,helpful for rendering simple things.
**/
class ColorComponent extends Component
{
    public var color : Int;

    public function new(color:Int = 0xFF00FF)
    {
        super("Color");
        this.color = color;
    }

    /**
      Generate a random color value.

      @return A randomized color value.
     **/
    public function random() : Int
    {
        var values = "0123456789abcdef".split("");
        var color = "0x";

        for(i in 0...6)
        {
            color += Random.fromArray(values);
        }

        this.color = Std.parseInt(color);

        return this.color;
    }
}
