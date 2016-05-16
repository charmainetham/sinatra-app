class AddMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :author
      t.string :content
      t.string :link

      t.timestamps
    end
  end
end
