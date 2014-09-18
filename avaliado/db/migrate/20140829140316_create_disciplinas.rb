class CreateDisciplinas < ActiveRecord::Migration
  def change
    create_table :disciplinas do |t|
      t.string :descricaoDisciplina
      t.integer :codigoDisciplina
      t.Aluno :references

      t.timestamps
    end
  end
end
