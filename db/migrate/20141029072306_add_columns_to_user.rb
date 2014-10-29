class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users ,:firstname,:string
    add_column :users ,:lastname,:string
    add_column :users ,:phone_number,:string
    add_column :users ,:city,:string
    add_column :users ,:state,:string
    add_column :users ,:country,:string
  end
end
