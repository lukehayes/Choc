# Choc

A very small ECS library designed specifically to work with the
[Heaps Framework](https://www.heaps.io).

__This project is very much a work in progress so will change a lot but if you use it or have tips, let me know!__

---

### Usage

#### World

The main class that manages Choc and all of its systems is ```choc.World```.

```World``` is defined as a singleton object and should be used globally.

It can be accessed like this:

```haxe
import choc.World;
var world = World.instance;
```

Systems and entities should be added to this instance:

```haxe
import choc.World;
import choc.system.ExampleSystem;

var world = World.instance;
var exampleSystem = new ExampleSystem();

world.addSystem(moveSystem);

```

Then in your main loop, the update method on the World instance should be called:

```haxe
function update(dt:Float)
{
    world.update(dt);
}

```

#### System

All systems should inherit from the abstract base class choc.system.System;

```haxe
package myGame;

import choc.system.System;

class ExampleSystem extends System
{
    public function new()
    {
        // The name of the class should be based to its parent.
        super("Example");
    }
}

```

In the above example, the name of the system should be passed to the parent class.

The name that you pass into the super constructor is the name that is attached
the instance that is stored inside the ```map<System>``` member of the World class.

A system can be added to the instance of ```World``` like this:

```haxe
import choc.World;
import myGame.ExampleSystem;

var world = World.instance;
var exampleSystem = new ExampleSystem();

world.addSystem(exampleSystem);
```

Once the system has been added to the instance of ```World``` then it will be updated
automatically when ```world.update())``` is called.

#### Components

All components should inherit from ```choc.component.Component``` and they are almost
exclusively only meant to hold data. A specific system will update and transform
that data at another time.

```haxe
package myComponent;

import choc.component.Component;

class ExampleComponent extends Component
{
    public function new()
    {
        super("ExampleComponent");
    }
}

```

Just like children of ```choc.system.System```, children of ```choc.component.Component```
should also pass in a string into it's super constructor so that the ```choc.World``` 
instance can identify it internally.

Any properties that are appropriate can then be added to it:

```haxe
package myComponent;

import choc.component.Component;

class ExampleComponent extends Component
{
    var foo:Int;

    public function new(bar:Int)
    {
        super("ExampleComponent");

        this.foo = bar;
    }
}

```
