module AccessCount
  extend ActiveSupport::Concern

    def set_counter 
      	@counter = session[:counter]
	    if @counter.nil?
	       session[:counter] = 1
           @counter = session[:counter]
	    else
	    	@counter = @counter + 1
	    end
    end	
end