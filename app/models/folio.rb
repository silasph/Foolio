class Folio < ActiveRecord::Base
  has_attached_file :image, styles: { large: "800x800>", medium: "400x400#", thumb: "250x170#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  def self.search(search)
    where("title LIKE ?", "%#{search}%")
    where("description LIKE ?", "%#{search}%")
  end

  def self.random
    @random = Folio.all.order("RANDOM() LIMIT 3")
  end
end
