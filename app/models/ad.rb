class Ad < ApplicationRecord
  #Constant
  QTT_PER_PAGE = 6

  #Ratyrate
  ratyrate_rateable "quality"

  #Callbacks
  before_save :markdown_to_html

  #Association
  belongs_to :category, counter_cache: true
  belongs_to :member
  has_many :comment

  #Validation
  validates :title, :category, :finish_date, :picture, :description_markdown, :description_short, presence: true
  validates :price, numericality: { greater_than: 0 }

  #scope
  scope :descending_order, -> (page) {
    order(created_at: :asc).page(page).per(QTT_PER_PAGE)
  }
  scope :to_the, -> (member) { where(member: member) }
  scope :by_category, -> (id, page) {
    where(category: id).page(page).per(QTT_PER_PAGE)
  }
  scope :search, -> (term, page) {
    where("title LIKE lower(?)", "%#{term.downcase}%").page(page).per(QTT_PER_PAGE)
  }

  #paperclip
  has_attached_file :picture, styles: { large: "900x400#", medium: "320x150#", thumb: "100x100#" },
  default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  #money ruby
  monetize :price_cents

  private
  def markdown_to_html
    options = {
      filter_html: true,
      link_attributes: {
        rel: "nofollow",
        target: "_blank"
      }
    }

    extensions = {
      space_after_headers: true,
      autolink: true
    }

    renderer = Redcarpet::Render::HTML.new(options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)

    self.description = markdown.render(self.description_markdown).html_safe
  end
end
