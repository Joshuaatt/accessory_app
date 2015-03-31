class CreateToyotaModels < ActiveRecord::Migration
  def change
    create_table :toyota_models do |t|
      t.column :name, :string
      t.column :year, :string

      t.timestamps
    end
    add_reference :toyota_models, :toyota, :index => true
    add_foreign_key :toyota_models, :toyotas
  end
end
