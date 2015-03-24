require 'uri'

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :website, allow_blank: true, format: { with: URI::regexp(%w(http https)) }

  has_attached_file :cv
end
