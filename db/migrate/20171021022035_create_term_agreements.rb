class CreateTermAgreements < ActiveRecord::Migration[5.1]
  def change
    create_table :term_agreements do |t|
      t.string :shareholder_address
      t.boolean :term_accepted
      t.text :terms_description

      t.timestamps
    end
  end
end
