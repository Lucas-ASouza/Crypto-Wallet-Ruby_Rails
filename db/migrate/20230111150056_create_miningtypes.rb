class CreateMiningtypes < ActiveRecord::Migration[5.2]
  def change
    create_table :miningtypes do |t|
      t.string :description
      t.string :string
      t.string :acronym

      t.timestamps
    end
  end
end
