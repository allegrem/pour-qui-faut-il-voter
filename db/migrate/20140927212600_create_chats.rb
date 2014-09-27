class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.string :pseudo
      t.string :message
      t.string :ip

      t.timestamps
    end
  end
end
