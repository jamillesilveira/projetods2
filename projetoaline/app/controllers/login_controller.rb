# encoding: UTF-8
class LoginController < ApplicationController
  def index
  end

  def login
  	logado = Usuario.autenticar(params[:usuario],params[:senha])
  	if logado.nil?
  		flash[:error] = 'Dados incorretos'
  		render :index

  	else
  		session[:sessao] = logado.nome
  		redirect_to root_path, notice: 'Login efetuado.'
  	end
  end

  def logout
  end
end
