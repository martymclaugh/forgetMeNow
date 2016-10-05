class CreateReminders < ActiveRecord::Migration[5.0]
  def change
    create_table :reminders do |t|
      t.date :date
      t.integer :user_id
      t.string :title
      t.string :message
      t.string :time

      t.timestamps
    end
  end
end
