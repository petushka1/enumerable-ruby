require_relative 'enumerable_spec'
# Class with instance variable impelmented

class MyList
  include MyEnumerable

  def initialize(*number)
    @list = number
  end

  def each
    yield(@list)
  end
end

list = MyList.new(1, 2, 3, 4)
list.all? { |e| e < 5 }
list.all? { |e| e > 5 }

list.any? { |e| e == 2 }
list.any? { |e| e == 5 }

# list.filter { |e| e.even? }
