# frozen_string_literal: true

class Trainee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable, :omniauthable
  # :recoverable, :rememberable
  devise :database_authenticatable, :registerable, :validatable, :confirmable
  include DeviseTokenAuth::Concerns::User
end
