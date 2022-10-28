import Choc.World;


class Main extends hxd.App {

    var o : h2d.Object;
    var g : h2d.Graphics;
    var c : Float = 0.0;
    var world : World;

    override function init() {
        g = new h2d.Graphics(s2d);
        o = new h2d.Object();
        world = World.new();

    }

    override function update(dt:Float) 
    {
        g.x = Math.cos(c) * 10 * dt;
        g.y = Math.sin(c) * 10 * dt;
        c++;

        g.beginFill(0xEA8220);
        g.drawRect(10, 10, 30, 200);
        g.endFill();
    }

    static function main() {
        new Main();
    }

}
