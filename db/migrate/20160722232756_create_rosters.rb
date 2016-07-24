class CreateRosters < ActiveRecord::Migration
  def change
    create_table :rosters do |t|
      t.references :team, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.boolean :is_owner
      t.string :role

      t.timestamps null: false
    end
  end
end
