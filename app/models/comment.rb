class Comment < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :info, required: false
end
