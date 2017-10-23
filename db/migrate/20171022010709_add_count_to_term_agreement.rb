class AddCountToTermAgreement < ActiveRecord::Migration[5.1]
  def change
    add_column :term_agreements, :count, :integer, default: 0
  end
end
