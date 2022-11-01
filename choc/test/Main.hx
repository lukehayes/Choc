package test;

import choc.World;
import choc.system.DrawSystem;

class Main extends hxd.App {

    var g : h2d.Graphics;
    var c : Float = 0.0;
    var world : World;
    var system : DrawSystem;

    override function init() {
        g = new h2d.Graphics(s2d);
        world = new World();

        system  = new DrawSystem("Draw", g);

        world.addSystem(0, system);
    }

    override function update(dt:Float)
    {
        world.update(dt);
        system.render();

    }

    static function main() {
        new Main();
    }

}
