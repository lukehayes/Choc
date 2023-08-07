package choc.component.std;

import choc.component.Component;

/**
  Sprite component should hold a reference to an image.
**/
class SpriteComponent extends Component
{
    public var tile        : h2d.Tile;
    public var tileSize    : Int;
    public var scaleFactor : Int;
    public var tileScale   : Int;
    public var bitmap      : h2d.Bitmap;
    public var image       : hxd.res.Image;

    /**
    * Create a new SpriteComponent instance.
    *
    * @param ?path The full path to where an image is stored.
    * @param tileSize The size of the tile on both the X and Y axis.
    * @param scaleFactor The scale multiplier of the tile - defaults to 1.
    */
    public function new(?path:String, tileSize: Int = 16, scaleFactor:Int = 10)
    {
        super();

        this.tileSize = tileSize;
        this.scaleFactor = scaleFactor;
        this.tileScale = this.tileSize * this.tileScale * 100;

        // If path is null, create a texture squre, else use the image.
        this.tile = !Std.isOfType(path, null) ?
                    hxd.Res.load(path).toTile() :
                    h2d.Tile.fromColor(0x00FFFF, this.tileSize, this.tileSize);

        this.image = !Std.isOfType(path, null) ?
                    hxd.Res.load(path).toImage() : null;


        //this.bitmap = this.tile.toBitmap();
        //this.bitmap.scaleX = 16 * 10;
        //this.bitmap.scaleY = 16 * 10;

        //this.tile = this.image.toTile();
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
