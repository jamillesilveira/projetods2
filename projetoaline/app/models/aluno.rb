# encoding: UTF-8

class Aluno < ActiveRecord::Base
 def autentica(usuario,senha)
 	acharSupostoAluno
 end
end
