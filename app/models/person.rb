class Person < ApplicationRecord
     validates :new, presence: true
     validates :age, numericality: true
end
