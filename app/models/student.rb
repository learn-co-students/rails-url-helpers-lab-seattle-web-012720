class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active 
    if @active == 't'
      status = true 
    elsif @active = 'f'
      status = false 
    end
    status
  end
end