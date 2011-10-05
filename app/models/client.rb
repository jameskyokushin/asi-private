class Client < ActiveRecord::Base
  has_many :invoice, :dependent => :destroy
  
  validates :name, :presence => true
  validates :email, :format => { :with => /^(.+@.+\..+)?$/, :message => "is not a valid email address." }
end
