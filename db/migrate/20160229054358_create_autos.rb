class CreateAutos < ActiveRecord::Migration
  def change
    create_table :autos do |t|
      t.integer :client_id
      t.string :gosnomer
      t.string :tech_passport
      t.string :marka_model
      t.datetime :date_release
      t.string :color

      t.timestamps null: false
    end
    add_index :autos, :client_id
  end
end
