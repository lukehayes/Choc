package test;

import choc.component.std.SpriteComponent;
import choc.World;
import choc.Global;

import choc.entity.Entity;

import choc.component.std.TransformComponent;

import Random;


class Main extends hxd.App {

    var world : World;

    override function init() 
    {
        this.world = new World();

        this.world.setScene(s2d);
        this.world.setDefaultSystems();
        
        // Generate some test entities.
        EntityFactory.generate(Global.ENTITY_COUNT, this.world);
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
