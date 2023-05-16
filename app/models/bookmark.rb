# == Schema Information
#
# Table name: bookmarks
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  movie_id   :integer
#  user_id    :integer
#
class Bookmark < ApplicationRecord
belongs_to :user
belongs_to :movie

has_many :bookmarks
has_many :movies, :through => :bookmarks
end
