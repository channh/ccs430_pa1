#
# CS 430 Spring 2019 P1 (Ruby 1)
#
# Name: Nathan Chan
# Date: 1/11/2019
#

# return an array of all factors of n
def factors(n)
    return Array.new(n) { |index| index +=1}.select { |a| n % a == 0}
end
print factors(12)
puts

# return an array of all prime numbers less than or equal to n
def primes(n)
    return (2..n).select {|a| factors(a).length == 2}
end
print primes(10)
puts

# return an array of all prime factors of n
def prime_factors(n)
    return factors(n) & primes(n)
end
print prime_factors(12)
puts

# return an array of all perfect numbers less than or equal to n
def perfects(n)
    return (2..n).select { |a| factors(a).sum == a*2}
end
print perfects(10)
puts

# return an array of Pythagorean triples whose elements are less than or equal to n
def pythagoreans(n)
    return (1..n).to_a.combination(3).to_a.select {|a| Math.hypot(a[0], a[1]) == a[2]}
end
print pythagoreans(15)
puts