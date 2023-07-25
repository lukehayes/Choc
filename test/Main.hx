package test;

import choc.World;
import choc.Global;

import choc.system.DrawSystem;

import choc.component.std.TransformComponent;

import Random;

class Main extends hxd.App {

    override function init() 
    {
        /**
        TODO Refactor this into a useable API so that it can be
             used outsied of this project.
        */

        World.instance.entities = EntityFactory.generateEntities();

        World.instance.addSystem(
            new DrawSystem(World.instance.entities, s2d)
        );
    }

    override function update(dt:Float) 
    {
        World.instance.update(dt);
    }

    static function main() {
        new Main();
    }

}
