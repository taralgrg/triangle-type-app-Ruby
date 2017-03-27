require('pry')

class Triangle
    define_method(:initialize) do |a, b, c|
        @a = a
        @b = b
        @c = c
    end


    define_method(:equilateral) do

        (@a.eql?(@b)) && (@b.eql?(@c))
    end

    define_method(:isosceles) do
        (@a.eql?(@b)) || (@b.eql?(@c)) || (@a.eql?(@c))

    end

    define_method(:scalene) do
        (@a != @b) && (@b != @c) && (@a != @c)

    end

    define_method(:not_triangle) do
        (@c>=(@a+@b)) ||  (@b>=(@a+@c)) || (@a>=(@b+@c))
    end

    define_method(:triangle_type) do
        if self.not_triangle == true
             return "It is not a Triangle "
        elsif
          self.equilateral == true
            return "It is an Equilateral Triangle"
        elsif
            self.isosceles == true
            return "It is an Isosceles Triangle"
        elsif
            self.scalene == true
            return "It is a Scalene Triangle"

        else
            return "It is some other form of Triangles"
        end

    end

end
