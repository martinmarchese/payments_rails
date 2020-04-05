class Building < ApplicationRecord
  def formatted_name
    "#{street} #{streetNumber}"
  end
end
