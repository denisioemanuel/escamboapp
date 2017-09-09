class Ad < ApplicationRecord
  #Callbacks
  before_save :markdown_to_html

  #Association
  belongs_to :category
  belongs_to :member

  #Validation
  validates :title, :category, :finish_date, :picture, :description_markdown, :description_short, presence: true
  validates :price, numericality: { greater_than: 0 }

  #scope
  scope :descending_order, -> (quantity = 10) { order(created_at: :asc).limit(quantity) }
  scope :to_the, -> (member) { where(member: member) }

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
