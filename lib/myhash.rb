require('pry')

class MyHash < Array

  def initialize
    @array = []
  end

  def myStore(key, value)
    @array.push([key, value])
  end

  def myFetch(key)
    @array.each_with_index do |value_pair_array, index|
      if (value_pair_array[0] == key)
        return value_pair_array[1]
      end
    end
  end

  def myHas_key(key)
    @array.each_with_index do |value_pair_array, index|
      if (value_pair_array[0] == key)
        return true
      end
    end
    return false
  end

  def myLength()
    @array.length
  end

  def myMerge(array)
    array.each do |value_pair_array|
      @array.push(value_pair_array)
    end
  end


end
