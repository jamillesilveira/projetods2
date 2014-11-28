class AlunosMailer < ActionMailer::Base
  default from: "nao.responda.ifrs.riogrande@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.alunos_mailer.cadastrado.subject
  #
  def cadastrado(u)
    @aluno = u
    mail to: u.email, subject: "[SITE ALINE] Confirme seu cadastro"
  end
end
