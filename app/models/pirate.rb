class Pirate

    attr_accessor :name, :weight, :height, :ship_1, :ship_2

    @@pirates = []

    def initialize(name, weight, height)
        @name = name
        @weight = weight
        @height = height
        @@pirates << self
    end

    def self.all
        @@pirates
    end

    def self.clear
        @@pirates = []
    end

end