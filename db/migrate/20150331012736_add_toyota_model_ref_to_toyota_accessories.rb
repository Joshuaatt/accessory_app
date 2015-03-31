class AddToyotaModelRefToToyotaAccessories < ActiveRecord::Migration
  def change
    add_reference :toyota_accessories, :toyota_model, index: true
    add_foreign_key :toyota_accessories, :toyota_models
  end
end
