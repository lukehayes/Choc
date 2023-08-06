package test;

import choc.World;
import choc.Global;
import choc.Typedefs;

import choc.component.Component;
import choc.component.std.TransformComponent;
import choc.component.std.SpriteComponent;

import Random;

typedef EntityMap = Array<Array<Component>>;

class EntityFactory
{
    /**
      Generate N amount of entities for testing.

      @param count    The number of entities to add to the world.

      @return Void
     **/
    static public function generate(count:Int, world : World) : Void
    {
        for(i in 0...count - 1)
        {
            var rx   = Random.int(0,400);
            var ry   = Random.int(0,400);
            var rsz  = Random.int(5,40);
            var rsp  = Random.int(1,10);
            var rdx  = Random.int(-1,1);
            var rdy  = Random.int(-1,1);

            var e = new TestEntity(i);

            e.addComponent("Transform",
                new TransformComponent(rx, ry, rsz, rsz, rsp, rdx, rdy)
            );
            
            var chance = Std.random(10);

            if(chance % 2 == 0)
           {
                e.addComponent("Sprite",
                    new SpriteComponent('debug.png')
                );
           }

            world.addEntity(e);
        }
    }
}
