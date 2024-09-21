#= Basics calculus functions and operations=#

#Absolut valor.
function absolute(b)
    if b < 0
        return -1b
    else
        return b
    end
end

#"Hardcoring" a function
function f(x)
    return (4/(1+(x*x)))
end

#Square root of a number without sqrt primitive method.
function sqrt(x, tolerance)
    a = x
    b = 1
    img = 1
    if x < 0
        img = 1im
        x = -x
    end
    while absolute((a-b)) > tolerance
        a = (a+b)/2
        b = x/a
    end
    return a*img
end

#Integral of a function
function integralNum(start, fin, steps)
    delta = (fin - start)/steps
    x = delta / 2 + start
    sum = 0
    for i = 1:steps
        sum = sum + f(x)
        x = x+delta
    end
    result = sum*delta
    return result
end

#Derivative of a function
function derivativeNum(y, size, delta)
    result = y
    for i = 1 : size-1
        result[i] = (y[i+1] - y[i])/delta[i]
    end
    return result
end

    
