class CreateInsuranceTypes < ActiveRecord::Migration
  def change
    create_table :insurance_types do |t|
      t.string :name
      t.string :desc
      t.float :price

      t.timestamps null: false
    end
  end
end
