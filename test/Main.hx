package test;

import choc.World;
import choc.entity.Entity;

import choc.component.std.TransformComponent;

import Random;


class Main extends hxd.App {

    var world : World;

    override function init() 
    {
        this.world = new World(s2d);

        for(i in 0...10)
        {
            var rx = Std.random(400);
            var ry = Std.random(400);
            var dx = Random.int(-1,1);
            var dy = Random.int(-1,1);

            var e = new Entity(this.world.entityCount);
            e.addComponent("Transform", new TransformComponent(rx,ry,10,10,Std.random(100), dx,dy));

            this.world.addEntity(e);
        }
    }

    override function update(dt:Float) 
    {
        this.world.update(dt);
    }

    static function main() {
        hxd.Res.initEmbed();
        new Main();
    }
}
