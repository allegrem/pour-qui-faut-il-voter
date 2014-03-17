class AddAdminUser < ActiveRecord::Migration
  def up
    a = Admin.new email: ENV['DEFAULT_ADMIN_EMAIL'], password: ENV['DEFAULT_ADMIN_PASSWORD']
    unless a.save
      raise "Can't create admin. Check if you have set DEFAULT_ADMIN_EMAIL and DEFAULT_ADMIN_PASSWORD env variables."
    end
  end

  def down    
  end
end
