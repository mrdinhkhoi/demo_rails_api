class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
