class CreateProtocols < ActiveRecord::Migration[6.0]
  def change
    create_table :protocols do |t|
      t.string :name
      t.integer :resolution
      t.integer :weight

      t.timestamps
    end
  end
end
