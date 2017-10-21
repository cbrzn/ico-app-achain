class TermAgreement < ApplicationRecord
  validates :shareholder_address, presence: true
  validates :term_accepted, presence: true
end
