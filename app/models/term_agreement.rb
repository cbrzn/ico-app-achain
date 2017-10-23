class TermAgreement < ApplicationRecord
  validates :shareholder_address, presence: true#, length: { is: 42 }
                            #     ,format: { with: /[0]+[x]+[a-fA-F\d]*$/ }
  validates :term_accepted, presence: true

  def self.existing_account(address)
   if find_or_create_by(shareholder_address: address)
      if self.find_by_shareholder_address( address )
       add = self.find_by_shareholder_address( address )
       add.adding_one
       add.save!
      else
       add = self.create!(shareholder_address: address, term_accepted: true)
       add.save!
      end
    end
  end

  def adding_one
    self.update_attributes(counter: self.counter + 1)
  end


end
