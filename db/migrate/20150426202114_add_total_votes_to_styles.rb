class AddTotalVotesToStyles < ActiveRecord::Migration
  def change
    add_column :styles, :total_votes, :integer
  end
end
