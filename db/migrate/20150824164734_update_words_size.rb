class UpdateWordsSize < ActiveRecord::Migration
  def change
    add_column :words, :size, :integer
  end
end