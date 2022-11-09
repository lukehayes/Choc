package test;

import choc.World;
import choc.system.DrawSystem;
import choc.component.std.TransformComponent;
import choc.component.std.ColorComponent;
import test.TestEntity;
import test.EntityFactory;
import Random;

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

        drawSystem  = new DrawSystem("Draw", g);
        world.addSystem(0, drawSystem);

        EntityFactory.generate(100);

    }

    override function update(dt:Float) 
    {
        world.update(dt);
    }

    static function main() {
        new Main();
    }

}
