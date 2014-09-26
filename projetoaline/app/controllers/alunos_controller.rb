class AlunosController < ApplicationController

	def index

	end

	def new
		@aluno = Aluno.new
	end

	def create
		@aluno = Aluno.new(params.require(:aluno).permit(:nome, :matricula, :dataDeNascimento, :email, :senha))
		redirect_to :alunos
	end

	def show
		
	end

	def destroy
		a = Aluno.find(params[:id])
		a.destroy
		redirect_to :alunos, notice: "Seu cadastro foi excluído, #{a.nome}"
	end
end
