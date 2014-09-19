class CreateLista < ActiveRecord::Migration
  def change
    create_table :lista do |t|
      t.string :questoes
      t.string :titulo
      t.Bimestre :references

      t.timestamps
    end
  end
end
