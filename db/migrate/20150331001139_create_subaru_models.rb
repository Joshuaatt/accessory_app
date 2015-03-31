class CreateSubaruModels < ActiveRecord::Migration
  def change
    create_table :subaru_models do |t|
      t.column :name, :string
      t.column :year, :string

      t.timestamps
    end
    add_reference :subaru_models, :subaru, :index => true
    add_foreign_key :subaru_models, :subarus  
  end
end
