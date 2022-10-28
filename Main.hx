class Main extends hxd.App {

    var o : h2d.Object;
    var g : h2d.Graphics;

    override function init() {
        g = new h2d.Graphics(s2d);
        o = new h2d.Object();

        g.beginFill(0xEA8220);
        g.drawRect(10, 10, 30, 200);
        g.endFill();
    }

    override function update(dt:Float) 
    {
        g.x = Math.cos(c) * this.speed * dt;
        g.y = Math.sin(c) * this.speed * dt;
        c++;
    }

    static function main() {
        new Main();
    }

}
