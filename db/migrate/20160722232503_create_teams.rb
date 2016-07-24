class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :tag
      t.text :mission
      t.text :image

      t.timestamps null: false
    end
  end
end
