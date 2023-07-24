package test;

import choc.Global;

import choc.system.DrawSystem;

import choc.component.Component;
import choc.component.std.TransformComponent;

import Random;

typedef Entities = Array<Array<Component>>;

class Main extends hxd.App {

    var entities : Entities = new Array();

    var drawSystem : DrawSystem;

    override function init() 
    {
        for(i in 0...Global.ENTITY_COUNT)
        {
            var components = new Array<Component>();

            var rx = Random.int(0,400);
            var ry = Random.int(0,400);
            var rs = Random.int(2,10);

            components[Global.TRANSFORM_COMPONENT_INDEX] = new TransformComponent(rx, ry, rs);
            components[Global.SPRITE_COMPONENT_INDEX] = null;

            this.entities[i] = components;
        }

        this.drawSystem = new DrawSystem(entities, s2d);
    }

    override function update(dt:Float) 
    {
        this.drawSystem.update(dt);
    }

    static function main() {
        new Main();
    }

}
