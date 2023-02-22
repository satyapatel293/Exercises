class Machine

  def start
    flip_switch(:on)
  end

  def stop
    flip_switch(:off)
  end

  def switch_status
    "Switch is :#{switch}"
  end 

  private

  attr_accessor :switch
  
  def flip_switch(desired_state)
    self.switch = desired_state
  end
end


light = Machine.new
light.start
p light.switch_status
light.stop
p light.switch_status
