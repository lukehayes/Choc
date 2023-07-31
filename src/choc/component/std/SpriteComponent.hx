package choc.component.std;

import choc.component.Component;

/**
  Sprite component should hold a reference to an image.
**/
class SpriteComponent extends Component
{
    private var tile:h2d.Tile;

    public var scaleFactor : Int;

    /**
    * Create a new SpriteComponent instance.
    *
    * @param ?path The full path to where an image is stored.
    * @param tileSize The size of the tile on both the X and Y axis.
    * @param scaleFactor The scale multiplier of the tile - defaults to 1.
    */
    public function new(?path:String, tileSize: Int = 1, scaleFactor:Int = 1)
    {
        super();

        // If path is null, create a texture squre, else use the image.
        this.tile = !Std.isOfType(path, null) ?
                    hxd.Res.load(path).toTile() :
                    h2d.Tile.fromColor(0x00FFFF, tileSize, tileSize);
        
        this.scaleFactor = scaleFactor;
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
