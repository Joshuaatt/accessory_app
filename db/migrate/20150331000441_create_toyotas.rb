class CreateToyotas < ActiveRecord::Migration
  def change
    create_table :toyotas do |t|
      t.column :make, :string

      t.timestamps
    end
  end
end
