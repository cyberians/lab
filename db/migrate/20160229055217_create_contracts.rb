class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.references :client, index: true, foreign_key: true
      t.references :insurance_type, index: true, foreign_key: true
      t.references :insurer, index: true, foreign_key: true
      t.references :auto, index: true, foreign_key: true
      t.datetime :date_begin
      t.datetime :date_end

      t.timestamps null: false
    end
  end
end
