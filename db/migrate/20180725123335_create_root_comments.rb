class CreateRootComments < ActiveRecord::Migration[5.2]
  def change
    create_table :root_comments do |t|
      t.string :title
      t.text :content
      t.belongs_to :user, index: true
      t.belongs_to :url, index: true
      t.timestamps
    end
  end
end
