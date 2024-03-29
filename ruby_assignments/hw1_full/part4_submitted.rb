class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def name
     @name
  end

  def name=(new_name)
    @name = new_name
  end

  def calories
     @calories
  end

  def calories=(new_calories)
    @calories = new_calories
  end

  def healthy?
    if @calories < 200
      return true
    end
  end
  
  def delicious?
    return true
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    @name = name
    @calories = calories
    @flavor = flavor
  end

  def flavor
      @flavor
  end

  def flavor=(new_flavor)
    @flavor = new_flavor
  end

  def delicious?
    if @flavor == "black licorice"
       return false
    else
       return true
    end
  end
end
