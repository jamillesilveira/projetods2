class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.string :nome
      t.string :matricula
      t.string :senha
      t.string :email
      t.Date :dataDeNascimento
      t.float :nota

      t.timestamps
    end
  end
end
