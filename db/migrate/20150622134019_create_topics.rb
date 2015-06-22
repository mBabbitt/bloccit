class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.boolean :public, default: true
      t.string :description
      t.string :text

      t.timestamps null: false
    end
  end
end
