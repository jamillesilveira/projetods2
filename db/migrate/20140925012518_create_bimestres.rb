class CreateBimestres < ActiveRecord::Migration
  def change
    create_table :bimestres do |t|
      t.string :descricaoBimestre
      t.integer :codigoBimestre
      t.references :disciplina, index: true

      t.timestamps
    end
  end
end
