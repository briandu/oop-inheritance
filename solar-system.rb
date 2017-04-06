class System

  attr_reader :bodies

  @@bodies = []

  def initialize()
  end

  def add
    @@bodies.push()
  end

  def total_mass
    sum = 0
    @@bodies.each do |body|
      sum += body
    end
    return sum
  end
end

class Body < System

  attr_reader :name

  def initialize(name)
    @name = name
  end

end

class Planet < Body

  attr_reader :name, :body

  def initialize(name, body)
    @name = name
    @body = body
  end

end


class Star < Body

  attr_reader :name, :body, :type

  def initialize(name, body, type)
    @name = name
    @body = body
    @type = type
  end

end

class Moon < Body

  attr_reader :name, :body

  def initialize(name, body)
    @name = name
    @body = body
  end

  def months

  end

  def planet

  end

end


# PLANETS
earth = Planet.new("Earth", 5.972 * 10**24)
mars = Planet.new("Mars", 246.39 * 10**23)

# STARS

sun = Star.new("Sun", 1.989 * 10**30, "Type-G")

# MOON

moon = Moon.new("Moon", 7.34767309 * 10**22)
