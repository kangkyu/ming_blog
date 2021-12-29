class Comment < ActiveRecord::Base

  belongs_to :article
  broadcasts_to :article
end
