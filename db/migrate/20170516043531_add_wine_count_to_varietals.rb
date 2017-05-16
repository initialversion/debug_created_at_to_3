class AddWineCountToVarietals < ActiveRecord::Migration[5.0]
  def change
    add_column :varietals, :wines_count, :integer
  end
end
