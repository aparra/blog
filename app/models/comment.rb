class Comment < ActiveRecord::Base
  validates :name, :email, :body, :presence => true
  validate :article_should_be_published

  belongs_to :article
  
  def article_should_be_published
    errors.add(:article_id, I18n.t('comments.errors.not_published_yet')) if article && !article.published?
  end
  
end
