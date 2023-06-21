class RemoveTeamFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :team, :integer
  end
end
