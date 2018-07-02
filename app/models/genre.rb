class Genre < ActiveRecord::Base
  validates :name, presence: true
  has_many :films

  def self.total_sales
    select("genres.*, sum(box_office_sales) AS total_sales").joins(:films).group(:genre_id).order("total_sales DESC")
  end
end
