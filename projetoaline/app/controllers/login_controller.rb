# encoding: UTF-8
require 'digest'

class LoginController < ApplicationController
  def index
  end

  def login
    #o digest tem que ser feito e verificado com outro digest
  	logado = Aluno.find_by_nome_and_senha(params[:usuario], Digest::MD5.hexdigest(params[:senha]))
  	puts logado
    if logado.nil?
  		render :index
    else
  		session[:sessao] = logado.nome
  		redirect_to root_path, notice: 'Login efetuado.'
  	end
  end

  def logout
  end
end
