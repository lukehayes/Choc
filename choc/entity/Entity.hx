package choc.entity;

import choc.component.Component;

/**
  Base class for all entities.
**/
class Entity
{
    public var components : Map<String, Component>;

    public function new(){
        this.components = new Map<String, Component>();
    }

    public function addComponent(name: String, component: Component)
    {
        this.components[name] = component;
    }
}
