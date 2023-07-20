package test;

import choc.World;

import choc.system.DrawSystem;
import choc.system.MovementSystem;

import choc.component.Component;
import choc.component.std.ColorComponent;
import choc.component.std.TransformComponent;

import Random;

class Main extends hxd.App {

    var entities : Map<Int, Array<Component>> = [];

    var drawSystem : DrawSystem;

    override function init() 
    {
        // TODO Implement working draw system
        var n = 100;
        for(i in 0...10)
        {
            var rx = Random.float(0,n);
            var ry = Random.float(0,n);
            var dx = Random.float(0,1);
            var dy = Random.float(0,1);

            var components : Array<Component> = [];

            for(c in 0...10)
            {
                components[c] = null;
            }

            this.entities[i] = [];

            var tc = new TransformComponent(rx,ry,rx,dy);
            components.push(tc);

            this.entities[i] = components;
            
        }


        this.drawSystem = new DrawSystem(this.entities);
    }

    override function update(dt:Float) 
    {
        this.drawSystem.update(dt);
    }

    static function main() {
        new Main();
    }

}
