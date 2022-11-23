. The index should be an integer
representing the location in the Map that stores it.# Choc

A very small ECS library designed specifically to work with the
[Heaps Framework](https://www.heaps.io).

__This project is very much a work in progress so will change a lot but pull requests are welcome__

---


### Overview

The main types in Choc are: World, Systems, Components and Entities.

#### World

The `World` type represents a global class that manages all of the systems, entities and components.
It defines a single `update()` method that will update all of it's subsystems sequentially.

#### System

A system should manage components with a specific or multiple specific components. If an entity defines
comonents that meet that systems requirements then that entity will be updated. If not, then it will
be ignored.

#### Component

A component is a simple class that holds data. Properties should be defined in a component that are 
related to the job that it needs to do. The component should be added to the entity for it to be
updated in a system.

#### Entities

Entities are classes that should hold component classes. Those component classes give specific
functionality to the entity.


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

##### Remove an entity

To remove an entity, pass the index into world.removeEntity(). The index should be an Integer type
representing the location in the Map that stores it.

```haxe
var world = World.instance;

world.removeEntity(index);
```
##### Remove an system

To remove a system, pass the index into world.removeSystem(). The index should be an String type
representing the location in the Map that stores it.

The index of the system is passed into is constructor during initialization.

```haxe
var world = World.instance;

world.removeSystem(index);
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
To add a system to the World, call the `world.addSystem()` method passing an instance of
the system to be added.

Once the system has been added to the ```World```, it will be updated
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

Just like children of ```choc.system.System``` , children of ```choc.component.Component``` 
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

#### Entities

All entities should inherit from ```choc.entity.Entity```. The super construct
must also be called.

```haxe
package entity;

import choc.entity.Entity;

class ExampleEntity extends Entity
{
    public function new()
    {
        super();
    }
}

```

Components that you have created can then be added to the entity:

```haxe
var entity = new TestEntity();

var exampleComponent = new ExampleComponent(1,2,3);
entity.addComponent("ExampleComponent", exampleComponent);
```

They should then be added to the ```World``` instance:

```haxe
import choc.World;
var world = World.instance;
world.addEntity(exampleComponent);
```

##### Remove an entity

To remove an entity, pass the index into world.removeEntity(). The index should be an integer
representing the location in the Map that stores it.

```haxe
var world = World.instance;

world.removeEntity(index);
```
