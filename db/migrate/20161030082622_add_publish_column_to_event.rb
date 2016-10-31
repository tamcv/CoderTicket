class AddPublishColumnToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :publish, :bool, default: false
  end
end
