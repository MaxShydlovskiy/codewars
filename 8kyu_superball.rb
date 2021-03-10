#!/usr/bin/ruby
=begin
class Ball

end 
=end

class Ball
  attr_accessor :ball_type
  def initialize(ball_type = "regular")
    @ball_type = ball_type
  end
end 