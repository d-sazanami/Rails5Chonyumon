class Person < ApplicationRecord
     validates :new, presence:{ message: 'は、必須項目です。'}
     validates :age, numericality: { message: 'は、数字で入力してください。'}
end
