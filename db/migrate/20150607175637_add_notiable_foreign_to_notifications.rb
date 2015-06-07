class AddNotiableForeignToNotifications < ActiveRecord::Migration
  def change
    add_column :notifications, :notiable_foreign, :integer
  end
end
