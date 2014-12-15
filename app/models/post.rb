class Post < ActiveRecord::Base
  	belongs_to :user
 	has_and_belongs_to_many :tags

	before_save :update_published_at

  private

  def update_published_at
    if published_changed?
      self.published_at = published? ? Time.now : nil
    end
  end
end
