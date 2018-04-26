class CreateUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :urls do |t|
      t.string :title
      t.string :url
      t.string :short_url
      t.integer :user_id
      t.datetime :expired_at

      t.timestamps
    end
  end
end
