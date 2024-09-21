#=Method for the factorial of a number=#

#Recursive factorial method
function recursive_factorial(x)
    if (x == 1)
        return 1;
    end
    if (x == 0)
        return 1;
    end
    return x * recursive_factorial(x-1)
end

#Iterative factorial method
function iterative_factorial(x)
    result = 1;
    while (x != 0)
        result*=x
        x = x-1;
    end
    return result
end

println("Enter a number: ")
input = readline()

number = parse(Int, input)

println("Factorial (recursive): ", recursive_factorial(number))
println("Factorial (iterative): ", iterative_factorial(number))
