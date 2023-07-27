package choc.component.std;

import choc.component.Component;

/**
  Sprite component should hold a reference to an image.
**/
class SpriteComponent extends Component
{
    private var tile:h2d.Tile;

    /**
    * Create a new SpriteComponent instance.
    *
    * @param ?path The full path to where an image is stored.
    * @param width The width of the sprite component. Default: 16.
    * @param height The height of the sprite component. Default: 16.
    */
    public function new(?path:String, width:Int = 16, height: Int = 16)
    {
        super();

        // If path is null, create a texture squre, else use the image.
        this.tile = !Std.isOfType(path, null) ?
                    hxd.Res.load(path).toTile() :
                    h2d.Tile.fromColor(0x00FFFF, width, height);
    }

    /**
    * Get the stored instance of Tile.
    *
    * @return h2d.Tile.
    */
    public function getTile() : h2d.Tile
    {
        return this.tile;
    }

    override public function toString()
    {
        var s = "Sprite Component ";
        return s;
    }
}
