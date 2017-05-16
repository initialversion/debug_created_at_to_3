class AddBucketListWineCountToWines < ActiveRecord::Migration[5.0]
  def change
    add_column :wines, :bucket_list_wines_count, :integer
  end
end
