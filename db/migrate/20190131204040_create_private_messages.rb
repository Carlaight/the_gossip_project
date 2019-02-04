class CreatePrivateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :private_messages do |t|
      t.text :content
      t.timestamps
      t.belongs_to :sender, class_name: 'User'
      t.belongs_to :recipient, class_name: 'User'
    end
  end
end
