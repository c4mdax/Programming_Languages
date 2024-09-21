#=Testing plots=#
using Plots

#=Set a function=#
function f(x)
    result = x^2 + 2x + 3
    return result
end
#Domain 1-300, with a precision of 1000.
x = range(1, 300, length=1000)

#The set of images: iterating over the domain applying f(x) to each value
y = @.f(x)

#This is a continous graphic
plot(x,y)

#=Set another function=#
function g(x)
    result = x*x*x
    return result
end

x = range(-5,5, length=100)
y = @.g(x)
#This is a points graphic
scatter(x,y,length=5)    

