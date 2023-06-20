class AddTeamToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :team, :integer
  end
end
