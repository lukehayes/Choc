package test;
import choc.World;
import choc.system.DrawSystem;

class Main extends hxd.App {

    var o : h2d.Object;
    var g : h2d.Graphics;
    var c : Float = 0.0;
    var world : World;
    var drawSystem : DrawSystem;

    override function init() {
        g = new h2d.Graphics(s2d);
        o = new h2d.Object();
        world = new World();
        drawSystem  = new DrawSystem("Draw", g);

        world.addSystem(0, drawSystem);
    }

    override function update(dt:Float) 
    {
        world.update(dt);
        //trace(system);
        //g.x = Math.cos(c) * 10 * dt;
        //g.y = Math.sin(c) * 10 * dt;
        //c += 0.1;

        //g.beginFill(0x00ff00);
        //g.drawRect(100, 110, 330, 200);
        //g.endFill();
        //system.update(dt);
    }

    static function main() {
        new Main();
    }

}
