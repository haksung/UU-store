class Book < ActiveRecord::Base
    has_many :buyers
end
