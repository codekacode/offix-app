class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :manager, class_name: 'Employee', optional: true
  has_many :employees, class_name: 'Employee', foreign_key: 'manager_id', 
            dependent: :nullify, inverse_of: false
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
