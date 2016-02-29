class Post < ActiveRecord::Base
	belongs_to  :user
  has_many  :comments
  validates :category, :inclusion => { :in => ["Louis Vuitton","Hermes","Gucci","Prada"], :message => "Louis Vuitton, Hermes, Gucci, Prada 중 하나를 선택하셔야 합니다." }
  validates :title, :presence => { :message => "제목을 반드시 입력하셔야 합니다." }
end
