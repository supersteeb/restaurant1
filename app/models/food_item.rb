class FoodItem < ApplicationRecord
  belongs_to :section

  def image_url_or_auto
  	if image_url.present?
  		image_url
  	else
  		"http://loremflickr.com/320/240/#{name}"
  	end

  	# image_url.presence || "http://loremflickr.com/320/240/#{name}".
  end

  def self.filter_by_section(section)
  	where (section: section)
  end
end
