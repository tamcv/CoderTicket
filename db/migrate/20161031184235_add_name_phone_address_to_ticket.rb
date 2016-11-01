class AddNamePhoneAddressToTicket < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.references :ticket_type, index: true, foreign_key: true
      t.timestamps null: false
    end
    add_column :tickets, :name, :string
    add_column :tickets, :address, :string
    add_column :tickets, :phone, :string
    add_column :tickets, :count, :integer
  end
end
