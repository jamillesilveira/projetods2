#enconding: UTF-8

class AlunosController < ApplicationController

	def index
		@aluno = Aluno.all
	end

	def new
		@aluno = Aluno.new
	end

	def edit
		@aluno = Aluno.find(params[:id])
	end

	def create
		@aluno = Aluno.new(params.require(:aluno).permit(:nome, :matricula, :dataDeNascimento, :email, :senha))
		@aluno.save	
		redirect_to :alunos
	end

	def update
		@aluno = Aluno.find(params[:id])
		@aluno.update(params.require(:aluno).permit(:nome, :matricula, :dataDeNascimento, :email, :senha))
		redirect_to :aluno
	end

	def show
		@aluno = Aluno.find(params[:id])
	end

	def destroy
		a = Aluno.find(params[:id])
		a.destroy
		redirect_to :aluno
	end
end
