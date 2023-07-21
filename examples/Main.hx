package examples;

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

    override function init() {
        g = new h2d.Graphics(s2d);
        world = World.instance;

        var drawSystem  = new DrawSystem(g);

        world.addSystem(drawSystem);
        world.addSystem(moveSystem);

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
