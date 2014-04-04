class Bandname < ActiveRecord::Base
  belongs_to :submitter, class_name: "User"
  has_many :votes, dependent: :destroy
end
