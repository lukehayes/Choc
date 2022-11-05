package test;

import choc.World;
import choc.system.DrawSystem;
import test.TestEntity;
import test.TransformComponent;

class Main extends hxd.App {

    var o : h2d.Object;
    var g : h2d.Graphics;
    var c : Float = 0.0;
    var world : World;
    var drawSystem : DrawSystem;
    var entity : TestEntity;

    override function init() {
        g = new h2d.Graphics(s2d);
        o = new h2d.Object();
        world = World.instance;

        trace(world);
        drawSystem  = new DrawSystem("Draw", g);

        world.addSystem(0, drawSystem);

        for(i in 1...10)
        {
            var rng = new hxd.Rand(i);
            var rx = (rng.random(1) - 1) + 2;
            var ry = (rng.random(1) - 1) + 2;

            trace("----");
            trace((rng.random(2)-3) + 1);


            var e = new TestEntity();
            var t = new TransformComponent(200,250, rx, ry,rng.rand() * 300);
            e.addComponent("Transform", t);
            world.addEntity(i, e);
        }
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
