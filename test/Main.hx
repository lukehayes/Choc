package test;

import choc.World;
import choc.system.DrawSystem;
import choc.component.std.TransformComponent;
import choc.component.std.ColorComponent;
import test.TestEntity;
import test.EntityFactory;
import Random;

class Main extends hxd.App {

    var g : h2d.Graphics;
    var world : World;
    var drawSystem : DrawSystem;

    override function init() {
        g = new h2d.Graphics(s2d);
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
