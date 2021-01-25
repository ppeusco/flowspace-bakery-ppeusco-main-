class AddStatusToCookie < ActiveRecord::Migration[5.1]
  def change
    add_column :cookies, :status, :string, default: 'cooking'
  end
end
