class CreateScans < ActiveRecord::Migration[6.0]
  def change
    create_table :scans do |t|
      t.string :path
      t.date :scandate
      t.references :case, null: false, foreign_key: true

      t.timestamps
    end
  end
end
