class DisciplinasController < ApplicationController
	def index
		@disciplinas = Disciplina.all
	end
	def new
	end
end
