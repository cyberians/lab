class CreateInsurers < ActiveRecord::Migration
  def change
    create_table :insurers do |t|
      t.string :fio
      t.string :login
      t.string :password

      t.timestamps null: false
    end
  end
end
