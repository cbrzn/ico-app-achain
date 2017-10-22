class TermAgreement < ApplicationRecord
  validates :shareholder_address, presence: true, length: { is: 42 },
                                  format: { with: /[0]+[x]+[a-fA-F\d]*$/ }
  validates :term_accepted, presence: true
end
