class AddOmniauthToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :uid, :string, null: false, default: ''
    add_column :users, :provider, :string, null: false, default: ''
  end
end
