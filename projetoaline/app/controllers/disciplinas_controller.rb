class DisciplinasController < ApplicationController
	def index
		@disciplinas = Disciplina.all
	end

	def new
		@disciplina = Disciplina.new
	end

	def create
		@novaDisciplina = Disciplina.new(params.require(:disciplina).permit(:codigoDisciplina, :descricaoDisciplina))
		#@novaDisciplina.codigoDisciplina = 
		#@novaDisciplina.descricaoDisciplina = 
		@novaDisciplina.save
		redirect_to :disciplinas
	end

	#def uptade
	#	@disciplina = d.ip
	#end
end
