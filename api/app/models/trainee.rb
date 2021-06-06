# frozen_string_literal: true

class Trainee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable, :omniauthable
  # :recoverable, :rememberable
  devise :database_authenticatable, :registerable, :validatable
  include DeviseTokenAuth::Concerns::User
end
