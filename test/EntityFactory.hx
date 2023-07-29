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

      @return Array<Array<Component>>;
     **/
    static public function generateEntities() : Entities
    {
        var entities = [];

        for(i in 0...Global.ENTITY_COUNT)
        {
            var components = new Array<Component>();

            var rx  = Random.int(0,400);
            var ry  = Random.int(0,400);
            var rsz = Random.int(2,10);
            var rsp = Random.int(2,130);
            var rdx = Random.int(-1,1);
            var rdy = Random.int(-1,1);

            var chance = Random.int(0,10);

            components[Global.TRANSFORM_COMPONENT_INDEX] = new TransformComponent(rx, ry, rsz, rsz, rsp, rdx, rdy);
            components[Global.SPRITE_COMPONENT_INDEX] = chance % 2 == 0 ? new SpriteComponent('debug.png',20,20) : null;

            entities[i] = components;
        }

        return entities;
    }


    /**
      Generate N amount of entities for testing.

      @param count    The number of entities to add to the world.

      @return Void
     **/
    static public function generate(count:Int) : Void
    {
        var world  = World.instance;

        for(i in 0...Global.ENTITY_COUNT - 1)
        {
            var rx  = Random.int(0,400);
            var ry  = Random.int(0,400);
            var rw  = Random.int(5,40);
            var rh  = Random.int(5,40);
            var rdx = Random.int(-1,1);
            var rdy = Random.int(-1,1);

            var e = new TestEntity(i);

            e.addComponent("Transform",
                new TransformComponent(rx, ry, rdx, rdy, rw,rh, Random.int(150,400))
            );

            world.addEntity(i,e);
        }

    }
}
