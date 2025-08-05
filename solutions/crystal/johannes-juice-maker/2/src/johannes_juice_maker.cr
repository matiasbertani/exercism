class JuiceMaker

  def self.debug_light_on?
    true
  end

  def initialize(fluid : Int32)
    @running = false
    @fluid = fluid
  end

  def start
    @running = true
  end

  def running?
    @running
  end

  def add_fluid(more_fluid : Int32)
    @fluid += more_fluid
  end

  def stop(fluid_used : Int32)
    @running = false
    @fluid -= (fluid_used * 5)
    @fluid
  end

end
