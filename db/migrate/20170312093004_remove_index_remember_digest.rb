class RemoveIndexRememberDigest < ActiveRecord::Migration[5.0]
  def change
    remove_index :users, :remember_digest
  end
end
