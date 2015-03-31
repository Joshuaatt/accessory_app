class CreateSubaruAccessories < ActiveRecord::Migration
  def change
    create_table :subaru_accessories do |t|
      t.column :name, :string
      t.column :description, :text
      t.column :price, :integer
      t.column :parts_cost, :integer
      t.column :labor, :integer

      t.timestamps
    end
    add_reference :subaru_accessories, :subaru_model, index: true
    add_foreign_key :subaru_accessories, :subaru_models
  end
end
