#=Linear algebra basics=#
using LinearAlgebra
#Create a 2D vector struct (x,y)
struct Vector2D
    x::Int64
    y::Int64
end

a = Vector2D(4,5)
b = Vector2D(6,7)

#Dot product non-primitive
·(v::Vector2D, w::Vector2D) = (v.x*w.x + v.y*w.y)

#Generics
struct Vector2D_2{T}
    x::T
    y::T
end

#Components product
~(k::Vector2D_2, z::Vector2D_2) = (k.x * z.x * k.y * z.y)

