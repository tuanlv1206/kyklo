class CreateOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :public_name
      t.string :type
      t.string :pricing_policy

      t.timestamps null: false
    end
  end
end
