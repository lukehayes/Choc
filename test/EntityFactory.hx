package test;

import choc.World;
import choc.component.std.TransformComponent;
import choc.component.std.ColorComponent;
import Random;

class EntityFactory
{
    public function new(){}

    /**
      Generate N amount of entities for testing.

      @param count    The number of entities to add to the world.

      @return Void
     **/
    static public function generate(count:Int) : Void
    {
        var world  = World.instance;

        for(i in 1...count)
        {
            var rx = Random.int(0,400);
            var ry = Random.int(0,400);
            var rdx = Random.int(-1,1);
            var rdy = Random.int(-1,1);

            var e = new TestEntity();
            var c = new ColorComponent(0xAAAAAA);
            c.random();

            e.addComponent("Transform", 
                new TransformComponent(rx, ry, rdx, rdy, Random.int(150,400))
            );

            e.addComponent("Color", c);

            world.addEntity(i, e);
        }
    }
}
