#= Mandelbrot Fractal iterative code
Supported by: Ing. Julio César Clemente González
=#

using Plots

# Function to multiplicate two complex numbers as vectors
function multCmplj(operando1, operando2)
    prodReal = operando1[1]*operando2[1] - operando1[2]*operando2[2]
    prodImg = operando1[1]*operando2[2] + operando1[2]*operando2[1]
    return [prodReal, prodImg]
end

# Function to calculate module of a complex numbers represented as vector
function modulo(complejo)
    r_2 = complejo[1]*complejo[1]
    i_2 = complejo[2]*complejo[2]
    resultado = sqrt(r_2 + i_2)
    return resultado
end

# Function to verify if a complex number diverges
function DivergeQ(z)
    if modulo(z) > 2
        return true
    else
        return false
    end
end

Nx = 2000
Ny = Nx
Fractal = zeros(Nx,Ny)
x = range(-2,2, length=Nx)

for i = 1:Nx
    for j = 1:Ny
        a = x[i]
        b = x[j]
        dato = [a,b]
        z = [0,0]
        for k = 1:500
            z = multCmplj(z,z) .+ dato
            if DivergeQ(z)
                Fractal[i,j] = NaN
                break
            end
        end
    end
end

heatmap(Fractal, color = :greys)
