def hack
    puts "Hack"
    
    yield # block을 호출
end
hack { puts "your life"}


[1, 2, 3, 4].each {|x| puts x}


class Numeric
    def bitcoin
        self * 83100000
    end
end
20.bitcoin