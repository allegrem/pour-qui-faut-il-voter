class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.reference :admin
      t.reference :item
      t.text :content

      t.timestamps
    end
  end
end
