class AddCounterToTermAgreement < ActiveRecord::Migration[5.1]
  def change
    add_column :term_agreements, :counter, :integer, :default => 0
  end
end
