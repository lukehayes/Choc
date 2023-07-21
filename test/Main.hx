package test;

import choc.World;
import choc.Global;

import choc.system.DrawSystem;

import choc.component.Component;
import choc.component.std.ColorComponent;
import choc.component.std.TransformComponent;

import Random;

typedef Entities = Array<Array<Component>>;

class Main extends hxd.App {

    var entities : Entities = new Array();

    var drawSystem : DrawSystem;

    override function init() 
    {
        for(i in 0...Global.ENTITY_COUNT - 1)
        {
            var components = new Array<Component>();

            for(j in 0...Global.COMPONENT_COUNT - 1)
            {
                components[i] = null;
                trace(j);
            }

            components[Global.TRANSFORM_COMPONENT_INDEX] = new TransformComponent();

            this.entities.push(components);
        }
    }

    override function update(dt:Float) 
    {
        this.drawSystem.update(dt);
    }

    static function main() {
        new Main();
    }

}
