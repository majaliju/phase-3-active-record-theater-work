class CreateAuditions < ActiveRecord::Migration[5.2]
  def change
    create_table :auditons do |t|
      t.string :actor
      t.string :location
      t.integer :phone
      t.boolean :hired
      t.integer :role_id
    end
  end
end
