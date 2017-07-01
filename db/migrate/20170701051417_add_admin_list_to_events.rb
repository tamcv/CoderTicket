class AddAdminListToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :admin_list, :integer, array: true, :default => []
  end
end
