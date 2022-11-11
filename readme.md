# Choc

A very small ECS library designed specifically to work with the
[Heaps Framework](https://www.heaps.io).

__This project is very much a work in progress so will change a lot but if you use it or have tips, let me know!__

### Usage

#### World

The main class that manages the Choc and all of its systems is ```choc.World```
```World``` is defined as a singleton object and has been designed to be
available throughout a project.

It can be accessed like this:

```
import choc.World;
var world = World.instance;
```

Systems and entities should be added to this instance:

```
import choc.World;
import choc.system.ExampleSystem;

var world = World.instance;
var exampleSystem = new ExampleSystem();

world.addSystem(moveSystem);

```

Then in your main loop, the update method on the World instance should be called:

```
// Main Loop:
function update(dt:Float)
{
    world.update(dt);
}

```
