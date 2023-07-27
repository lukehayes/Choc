package choc.component.std;

import choc.component.Component;

/**
  Sprite component should hold a reference to an image.
**/
class SpriteComponent extends Component
{
    public var tile:h2d.Tile;

    public function new(path:String, width:Int, height: Int)
    {
        super();
        this.tile = h2d.Tile.fromColor(0x00FFFF, width, height);
    }

    override public function toString()
    {
        var s = "Sprite Component ";
        return s;
    }

}
