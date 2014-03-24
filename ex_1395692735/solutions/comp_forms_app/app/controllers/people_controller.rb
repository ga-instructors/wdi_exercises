class PeopleController < ApplicationController 
	
	def index 
		@people = Person.all
		@person = Person.new
		@states = State.all
	end

	def create 
		person = Person.create(person_params)
		render json: {name: person.name, abrv: person.state.abrv, message: 'dolla billzz'}
	end

	private 

	def person_params 
		params.require(:person).permit(:name, :zip, :address, :state_id)
	end

end