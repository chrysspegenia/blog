class Article < ApplicationRecord
    validates :title, presence: true
    validates :body, length: {maximum: 1000, message: "Maximum of 1000 characters"}

    # validates :author_name, presence: true, format: { with: /^[a-zA-Z]+(?: [a-zA-Z]+)+$/, message: "Please input author's first name and last name." }
    # This regex will match names like "John Smith", "Mary Ann Jones", "Jean-Luc Picard", etc., where there can be one or 
    # more first names separated by spaces, followed by a last name.

    # validates :author_age, numericality: {only_integer: true, greater_than: 17, message: "Age must be over 18 years."}
    validate :must_be_adult

    private

    def must_be_adult
        if author_age.present? && author_age < 18
            errors.add(:author_age, "Age must be over 18 years.")
        end
    end
end

    # variable_name.valid? - to check validity
    # variable_name.errors.objects.first.full_message - path to check error messages
    #                                     - paste in ruby console
