class CreateQuestaos < ActiveRecord::Migration
  def change
    create_table :questaos do |t|
      t.integer :cod
      t.string :enunciado
      t.string :resposta
      t.[]String :pergunta

      t.timestamps
    end
  end
end
