class AddPartyToPlaylists < ActiveRecord::Migration[5.2]
  def change
    add_column :playlists, :party, :boolean
  end
end
