# encoding: UTF-8

class LoginController < ApplicationController
  def index
  
  end

  def login
  	logado = Aluno.find_by_matricula_and_senha(params[:usuario], params[:senha])

    if logado.nil?
  		redirect_to root_path
    else
  		session[:aluno] = logado.nome
  		redirect_to '/inicio', notice: 'Login efetuado.'
  	end
  end

  def logout
    reset_ session 
    redirect_to root_path, notice: 'Deslogado com sucesso'
  end
end
