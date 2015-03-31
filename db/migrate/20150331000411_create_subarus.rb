class CreateSubarus < ActiveRecord::Migration
  def change
    create_table :subarus do |t|
      t.column :make, :string

      t.timestamps
    end
  end
end
