class CreateToyotaAccessories < ActiveRecord::Migration
  def change
    create_table :toyota_accessories do |t|
      t.column :name, :string
      t.column :description, :text
      t.column :price, :integer
      t.column :parts_cost, :integer
      t.column :labor, :integer

      t.timestamps
    end
    add_reference :toyota_accessories, :toyota_model, index: true
    add_foreign_key :toyota_accessories, :toyota_models
  end
end
