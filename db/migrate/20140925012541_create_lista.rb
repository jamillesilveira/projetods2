class CreateLista < ActiveRecord::Migration
  def change
    create_table :lista do |t|
      t.string :titulo
      t.references :bimestre, index: true

      t.timestamps
    end
  end
end
