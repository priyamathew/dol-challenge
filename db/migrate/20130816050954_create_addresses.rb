class CreateAddresses < ActiveRecord::Migration
  def up
    create_table :addresses do |t|
      t.string  :street
      t.string  :city
      t.string  :state
      t.integer :zip
      t.belongs_to :company
    end
  end

  def down
    drop_table :addresses
  end
end
