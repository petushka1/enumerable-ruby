# module with Enumerable methods built and implemented

module MyEnumerable

    def all?
        result = true
        [1, 2, 3].each do |e|
        check = yield e
            result = false unless check
            break
        end
        puts result
    end

end

# Class with instance variable impelmented

class MyList
include MyEnumerable

    def initialize (*number)
        @list = number
    end

    def each(&block)
        yield( @list )
        @list.all? &block
    end
end

list = MyList.new(1, 2, 3)
list.all? { |e| e > 1 }


