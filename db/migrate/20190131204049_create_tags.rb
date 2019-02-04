class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :content
      t.timestamps
      t.belongs_to :gossip, index: true
      t.belongs_to :user, index: true 
    end
  end
end
