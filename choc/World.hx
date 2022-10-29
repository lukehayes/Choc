package choc;

//import choc.system;

/**
  This class is the main class that controls the ECS.
**/
class World
{
    public var systems = [];

    public function new(){}

    public function update(dt: Float)
    {
        for(system in systems)
        {
            system.update(dt);
        }
    }
}

