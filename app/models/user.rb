class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :bandnames, foreign_key: "submitter"

  def admin?
    role == 'admin'
  end

  def user?
    role == 'user'
  end

end
