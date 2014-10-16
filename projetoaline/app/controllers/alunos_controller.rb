#enconding: UTF-8

class AlunosController < ApplicationController

	def index

	end

	def new
		@aluno = Aluno.new
	end

	def create
		@aluno = Aluno.new(params.require(:aluno).permit(:nome, :matricula, :dataDeNascimento, :email, :senha))
		@aluno.save	
		redirect_to :alunos
	end

	def show
		@aluno = Aluno.all
	end

	def destroy
		a = Aluno.find(params[:id])
		a.destroy
		redirect_to :aluno
	end
end
