class CreateEntities < ActiveRecord::Migration[7.0]
  def change
    create_table :entities do |t|
      t.string :name, null: false
      t.money :amount, default: 0, null: false
      t.timestamps
    end
  end
end
