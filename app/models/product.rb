class Product < ActiveRecord::Base
  KINDS = %w(packet crown bouquet)

  has_many :services

  validates :name, :description, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :kind, presence: true, inclusion: { in: KINDS }

  # == Public instance methods
  KINDS.each do |kind_name|
    define_method("#{kind_name}?") do
      kind == kind_name
    end
  end

end
