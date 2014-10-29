class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 
  has_many :conversations, :foreign_key => :sender_id   
  def name
    "#{self.firstname.to_s}  #{self.lastname.to_s}"
  end      
end
