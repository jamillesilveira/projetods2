class AlunosController < ApplicationController

	def index
		@alunos = Aluno.all
	end
end
