class CreateUpvoteDownvotes < ActiveRecord::Migration
  def change
    create_table :upvote_downvotes do |t|

      t.timestamps null: false
    end
  end
end
