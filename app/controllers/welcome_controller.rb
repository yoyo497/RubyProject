class WelcomeController < ApplicationController

  	def index
  		last_number = 200   	
  		@numbers = (0..last_number).step(7).to_a
  		@numbers_contain_7 = (0..last_number).select { |number| number.to_s.include?('7') }

		#@both = @numbers.select { |number| number.to_s.include?('7') }  

  	end

 end
