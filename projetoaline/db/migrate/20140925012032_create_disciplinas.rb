class CreateDisciplinas < ActiveRecord::Migration
  def change
    create_table :disciplinas do |t|
      t.string :descricaoDisciplina
      t.integer :codigoDisciplina
      t.references :aluno, index: true

      t.timestamps
    end
  end
end
