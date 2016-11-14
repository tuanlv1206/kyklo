class CreateModelTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :model_types do |t|
      t.string :name
      t.string :model_type_slug
      t.string :model_type_code
      t.integer :base_price
      t.belongs_to :model, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :model_types, :model_type_slug
  end
end
