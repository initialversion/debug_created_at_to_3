class AddMySuggestionsForOtherCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :my_suggestions_for_others_count, :integer
  end
end
