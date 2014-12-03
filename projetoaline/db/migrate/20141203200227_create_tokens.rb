class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|
      t.string :dono
      t.string :valor

      t.timestamps
    end
  end
end
