def my_all
    result = true
    [1, 2, 3].each do |e|
    check = yield e
        result = false unless check
        break
    end
    puts result
end

my_all { |e| e > 1 }


class MyList
    def initialize (*number)
        @list = number
    end

    def test_class 
        puts @list
    end
end

list = MyList.new(1, 2, 3)
list.test_class()


