class Person < ActiveRecord::Base
	validates_presence_of :name
	validates :age, numericality: { only_integer: true }
end
