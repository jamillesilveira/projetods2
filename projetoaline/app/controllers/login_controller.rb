# encoding: UTF-8
require 'digest'
class LoginController < ApplicationController
  def index
  end

  def login
  	logado = Aluno.acharSupostoAluno(params[:usuario], Digest::MD5.hexdigest(params[:senha]))
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