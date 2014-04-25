class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :voteable_type
      t.integer :voteable_id
      t.boolean :vote_type

      t.timestamps
    end
  end
end
