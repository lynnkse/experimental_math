
module VectorSpaces

# Define an abstract type for vectors
abstract type AbstractVector end

# Define an interface for vector addition
abstract type AbstractVectorAddition end

# Define an interface for scalar multiplication
abstract type AbstractScalarMultiplication end

# Define an abstract type for vector spaces
abstract type AbstractVectorSpace end

# Define an interface for field addition
abstract type AbstractFieldAddition end

# Define an interface for field multiplication
abstract type AbstractFieldMultiplication end

# Define an abstract type for fields
abstract type AbstractField end

# Define a concrete type for vectors that implement addition
# struct AdditionVector{T<:AbstractVectorAddition} <: AbstractVector
#     data::T
# end

# Define a concrete type for vectors that implement scalar multiplication
# struct ScalarMultiplicationVector{T<:AbstractScalarMultiplication} <: AbstractVector
#     data::T
# end

# Define the field
struct NumericField{T<:Number} <: AbstractField{T} # AbstractField{T<:Number} ??
    add::(T,T) -> T
    mul::(T,T) -> T
    zero::T
    one::T
end

struct MyField{T} <: AbstractField{T}
    data::T
end
# MyField should not compile if some functions required by its interface are not defined from global scope. MyField constructor will only accept one parameter
# what does it mean if the functions are available?

#Vector2DField, we would need to either define the required binary operations and identities for Vector2D outside of the class 
#definition and pass them in as arguments, or define them directly inside the class definition.

#Could there be a field over a data type that requires only addition but not multiplication?

function add(x::Float64, y::Float64)
    return x + y
end

function mul(x::Float64, y::Float64)
    return x * y
end

function zero_el{T<:Number}()
    return zero(T)
end

function one_el{T<:Number}()
    return one(T)
end

# Create an instance of NumericField for Float64
# field_float64 = NumericField{Float64}(add, mul, zero_el, one_el)




# # Define the vector space
# struct MyVectorSpace{T<:AbstractFloat} <: AbstractVectorSpace
#     field::MyField{T}
#     dimension::Int
# end

# # Define a concrete type for vector spaces that implement addition and scalar multiplication
# struct VectorSpace{T1<:AbstractVectorAddition, T2<:AbstractScalarMultiplication} <: AbstractVectorSpace
#     addition::T1
#     scalar_multiplication::T2
# end


