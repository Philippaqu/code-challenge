class AddHeaderToMemory < ActiveRecord::Migration[5.1]
  def change
    add_column :memories, :header, :string
  end
end
