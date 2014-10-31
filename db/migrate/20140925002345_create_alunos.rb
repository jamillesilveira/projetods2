class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.string :nome
      t.string :matricula, limit: 8
      t.string :senha, limit: 10
      t.string :email
      t.date :dataDeNascimento
      t.string :nota

      t.timestamps
    end
  end
end
