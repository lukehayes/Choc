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

        entity = new TestEntity();
        var tComp = new TransformComponent(200,250);
        entity.addComponent("Transform", tComp);

        world.addEntity(0, entity);
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
