class Project <ActiveRecord::Base
    belongs_to :customer
    has_many :items
end