class CreateProspects < ActiveRecord::Migration
  def change
    create_table :prospects do |t|
      t.string :name
      t.string :phone
      t.references :user

      t.timestamps null: false
    end
  end
end
