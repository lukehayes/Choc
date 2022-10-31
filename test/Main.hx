package test;
import choc.World;
import choc.system.System;


class Main extends hxd.App {

    var o : h2d.Object;
    var g : h2d.Graphics;
    var c : Float = 0.0;
    var world : World;
    var system : System;

    override function init() {
        g = new h2d.Graphics(s2d);
        o = new h2d.Object();
        world = new World();
        system  = new System("Position");
        world.systems[0] = system;

    }

    override function update(dt:Float) 
    {
        trace(system);
        g.x = Math.cos(c) * 10 * dt;
        g.y = Math.sin(c) * 10 * dt;
        c++;

        g.beginFill(0x00ff00);
        g.drawRect(15, 10, 30, 200);
        g.endFill();
        system.update(dt);
    }

    static function main() {
        new Main();
    }

}
