class Cell
  def initialize(state, neighbours)
    @state = state # either 1 or 0 for alive or dead
    @neighbours = neighbours # an array that represents the surrounding cells
  end

  def regenerate
  	# @alive = 0

  	if @state == 1
  		@alive = 0
  		@neighbours.each do |neighbour|
  			@alive += neighbour.to_i
  		end
  		
  		if @alive > 3
  			0
  		elsif @alive > 1
  			1
  		else
  			0
  		end
	

	elsif @state == 0
		@alive = 0
		@neighbours.each do |neighbour|
  			@alive += neighbour.to_i
  		end

  		if @alive == 3
  			1
  		else
  			0
  		end
  	end

		
  end

end
