class CreateCases < ActiveRecord::Migration[6.0]
  def change
    create_table :cases do |t|
      t.string :caseid
      t.integer :hemi
      t.integer :age
      t.boolean :blocked

      t.timestamps
    end
  end
end
