class AddBucketListWineCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :bucket_list_wines_count, :integer
  end
end
