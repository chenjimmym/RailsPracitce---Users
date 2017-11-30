class User < ActiveRecord::Base
    validates :first_name, :last_name, :email, :age, presence: true
    validates :age, numericality: true
    validates :first_name, :last_name, length: { minimum: 2 }
    validates :age, numericality: { greater_than: 9 }, numericality: { less_than: 151 }
end
