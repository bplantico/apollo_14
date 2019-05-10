# controllers/astronautss_controller.rb

class AstronautsController < ApplicationController

  def index
    @astronauts = Astronaut.all
  end
end
