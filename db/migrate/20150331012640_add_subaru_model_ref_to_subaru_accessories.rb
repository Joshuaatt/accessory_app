class AddSubaruModelRefToSubaruAccessories < ActiveRecord::Migration
  def change
    add_reference :subaru_accessories, :subaru_model, index: true
    add_foreign_key :subaru_accessories, :subaru_models
  end
end
