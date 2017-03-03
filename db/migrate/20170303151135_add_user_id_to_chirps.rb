class AddUserIdToChirps < ActiveRecord::Migration[5.0]
  def change
    add_column :chirps, :user_id, :integer
  end
end
