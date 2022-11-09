package test;

import choc.World;
import choc.system.DrawSystem;
import choc.system.MovementSystem;
import choc.component.std.TransformComponent;
import choc.component.std.ColorComponent;
import test.TestEntity;
import test.EntityFactory;
import Random;

class Main extends hxd.App {

    var g : h2d.Graphics;
    var world : World;

    override function init() {
        g = new h2d.Graphics(s2d);
        world = World.instance;

        var drawSystem  = new DrawSystem("Draw", g);
        var moveSystem = new MovementSystem();

        world.addSystem(0, drawSystem);
        world.addSystem(1, moveSystem);

        EntityFactory.generate(10);
    }

    override function update(dt:Float) 
    {
        world.update(dt);
    }

    static function main() {
        new Main();
    }

}
