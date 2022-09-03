# module with Enumerable methods built and implemented

module MyEnumerable
  def all?
    result = true
    @list.each do |e|
      check = yield e
      result = false unless check
      break
    end
    puts result
  end

  def any?
    result = false
    @list.each do |e|
      check = yield e
      result = true if check
    end
    puts result
  end

  def filter
    result = []
    @list.each do |e|
      check = yield e
      result.push(e) if check
    end
    return result
  end
end
