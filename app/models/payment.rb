class Payment < ApplicationRecord
  belongs_to :building, required: true
  validates :unit, presence: true
  validates :date, presence: true
  validates :amount, presence: true
  validates :name, presence: true

  filterrific(
   default_filter_params: { sorted_by: 'date' },
   available_filters: [
     :sorted_by,
     :search_query,
     :with_country_id,
     :with_created_at_gte
   ]
 )
 # define ActiveRecord scopes for
 # :search_query, :sorted_by, :with_country_id, and :with_created_at_gte
end
