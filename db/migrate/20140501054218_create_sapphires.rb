class CreateSapphires < ActiveRecord::Migration
  def change
    create_table :sapphires do |t|
      t.string :name
      t.references :whale, index: true

      t.timestamps
    end
  end
end
