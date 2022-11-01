package choc.entity;

/**
  Base class for all entities.
**/
class Entity
{
    public var components : Map<String, Component>;

    public function new(){}

    public function addComponent(name: String, component: Component)
    {
        this.components[name] = component;
    }
}
