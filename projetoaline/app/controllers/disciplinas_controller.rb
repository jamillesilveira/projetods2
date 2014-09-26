class DisciplinasController < ApplicationController
	def index
		@disciplinas = Disciplina.all
	end
	def new
		@disciplina = Disciplina.new
	end
	/def uptade
		@disciplina = d.ip
	end/
end
