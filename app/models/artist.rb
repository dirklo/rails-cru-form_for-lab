class Artist < ApplicationRecord
    has_many :songs

    def self.find_by_name_or_create(name)
        find_by(name: name) || create(name: name)
    end
end
