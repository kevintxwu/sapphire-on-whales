class CreateWhales < ActiveRecord::Migration
  def change
    create_table :whales do |t|
      t.string :name
      t.string :color
      t.text :description

      t.timestamps
    end
  end
end
