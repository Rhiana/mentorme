class Profile < ActiveRecord::Base
validates :name, :email, presence: true
validates :post_code, length: { is: 4 }

	def self.search(search, person)
	  search_condition = "%" + search + "%"
	  search_results = where(['
	  	name LIKE ? OR
	  	category LIKE ? OR
	  	post_code LIKE ? OR
	  	tag_line LIKE ? OR
	  	email LIKE ? OR
	  	short_biography LIKE? OR
	  	what_do_you_want_to_achieve LIKE?',
	  	search_condition, search_condition, search_condition, search_condition, search_condition, search_condition, search_condition
	  	])

	  if (person == "mentor")
	  	search_results.where :mentor => true
	  elsif (person == "mentee")
	  	search_results.where :mentee => true
	  else
	  	search_results
	  end
	end
end
