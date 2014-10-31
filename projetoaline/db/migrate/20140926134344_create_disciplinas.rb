class CreateDisciplinas < ActiveRecord::Migration
  def change
    create_table :disciplinas do |t|
      t.string :descricaoDisciplina
      t.string :codigoDisciplina

      t.timestamps
    end
  end
end
