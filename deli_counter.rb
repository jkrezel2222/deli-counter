katz_deli = []

take_a_number(katz_deli, "Ada")
take_a_number(katz_deli, "Grace")
take_a_number(katz_deli, "Kent")

def line(deli)
    if deli.empty?
        puts "The line is currently empty."
    else
        current_line = "The line is currently:"
        deli.each.with.index(1) do | person, i |
            current_line << "#{i}. #{person}"
        end
        puts current_line
    end
end

def take_a_number(deli, name)
    deli << name
    puts "Welcome, #{name}. You are nunber #{deli.length} in line."
end

def now_serving(deli)
    if deli.empty?
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{deli.first}."
        deli.shift
    end
end

line(katz_deli)
now_serving(katz_deli)

line(other_deli)
now_serving(other_deli)

line(another_deli)
now_serving(another_deli)