class Flattener
  def make_flat(array)
    unnested_array = []
    
    array.each do |element|
      if element.is_a?(Array)
        element.each { |i| array << i }
      else
        unnested_array << element
      end
    end

    unnested_array.sort
  end
end