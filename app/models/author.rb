class Author < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments

  def self.sign_in_from_omniauth(auth)
    find_by(provider: auth['provider'], uid: auth['uid']) || create_author_from_omniauth(auth)
  end

  def self.create_author_from_omniauth(auth)
    create(provider: auth['provider'], uid: auth['uid'], name: auth['info']['name'], image: auth['info']['image'])
  end
end
