class CreateTrucks < ActiveRecord::Migration[6.1]
  def change
    create_table :trucks do |t|
      t.string :name
      t.integer :company_id
      t.string :type
      t.integer :year
      t.integer :capacity
      t.boolean :reserved
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end