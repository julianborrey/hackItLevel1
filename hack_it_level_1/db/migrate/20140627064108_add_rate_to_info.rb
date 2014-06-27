class AddRateToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :rate, :float
  end
end
