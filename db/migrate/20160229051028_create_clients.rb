class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :fio
      t.string :passport
      t.string :licence
      t.datetime :drive_date_begin
      t.datetime :birthday

      t.timestamps null: false
    end
  end
end
