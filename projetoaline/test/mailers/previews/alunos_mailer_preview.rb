# Preview all emails at http://localhost:3000/rails/mailers/alunos_mailer
class AlunosMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/alunos_mailer/cadastrado
  def cadastrado
    AlunosMailer.cadastrado
  end

end
