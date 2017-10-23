class DeletingCount < ActiveRecord::Migration[5.1]
  def change
    remove_column :term_agreements, :count
  end
end
