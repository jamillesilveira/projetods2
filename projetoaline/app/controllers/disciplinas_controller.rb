class DisciplinasController < ApplicationController
	def index

		@disciplinas = Disciplina.all
	end
end
