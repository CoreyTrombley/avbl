class AddCommentsTable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comments

      t.timestamp
    end
  end
end
