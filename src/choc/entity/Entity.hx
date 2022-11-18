package choc.entity;

import choc.component.Component;

/**
  Base class for all entities.
**/
class Entity
{
    /**
      All of the components defined for this entity.
    **/
    public var components : Map<String, Component>;

    /**
      The id(integer) of the entity.
    **/
    public var id : Int;

    /**
      Constructor.
    **/
    public function new(id:Int) {
        this.id = id;
        this.components = new Map<String, Component>();
    }

    /**
      Add a new component to the entity.

      @param name         The name of the component.

      @param component    An instance of Component.

      @return Bool
    **/
    public function addComponent(name: String, component: Component)
    {
        this.components[name] = component;
    }

    /**
      Check a particular component exists for this entity.

      @param name    The name of the component.

      @return Bool
    **/
    public function hasComponent(name: String) : Bool
    {
        return !!this.components.exists(name);
    }

    /**
      Get a particular component from this entities Map.

      @param name    The name of the component.

      @return The Component class if found, null otherwise.
    **/
    public function getComponent(name: String) : Component
    {
        return this.components[name];
    }
}
