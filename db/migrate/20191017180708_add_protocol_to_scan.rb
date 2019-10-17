class AddProtocolToScan < ActiveRecord::Migration[6.0]
  def change
    add_reference :scans, :protocol,foreign_key: true
  end
end
