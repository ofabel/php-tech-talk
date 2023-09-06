class Box
    def initialize(number)
        @number = number
    end
end

(0..99_999_999).each do |i|
     o = Box. new(i)
end
