class Article < ApplicationRecord
    validates :title, presence: true

    # p.errors.objects.first.full_message - path to check error messages
end
