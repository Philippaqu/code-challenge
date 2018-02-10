class AddUserToMemory < ActiveRecord::Migration[5.1]
  def change
    add_reference :memories, :user, foreign_key: true
  end
end
