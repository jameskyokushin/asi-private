class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :company_name
      t.string :company_address
      t.string :contact_number
      t.string :email
      t.string :tin_#

      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
