class PeopleController < ApplicationController

	def index #home pagina (T)
		@people = Person.all
	end

	def show #toon personen (T)
		@person = Person.find(params[:id])
	end

	def new # form voor nieuw persoon (T)
		@person = Person.new
	end

	def create #opslaan nieuw persoon
		@person = Person.new(allowed_params)

		if @person.save
			redirect_to people_path
		else
			render 'new'
		end
	end

	def edit #wijzigen persoon (T)
		@person = Person.find(params[:id])
	end

	def update #opslaan wijzigingen persoon
		
		@person = Person.find(params[:id])
		if @person.update_attributes(allowed_params)
			redirect_to people_path
		else
			render 'new'
		end

	end

	def destroy # verwijder persoon
		@person = Person.find(params[:id])
		@person.destroy
		redirect_to people_path
	end

	private 
		def allowed_params
			params.require(:person).permit(:name, :age)
		end

end
