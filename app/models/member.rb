class Member < ApplicationRecord
  class << self #クラスメソッド
    def search(query)
      rel = order("number")
      if query.present?
        rel = rel.where("name LIKE ? OR full_name LIKE ?", "%#{query}%", "%#{query}%") # SQL: %は*, _は?
      end
      rel
    end
  end
end
