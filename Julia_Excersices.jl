#Exercise 3 (JULIA)
#Create a 2x4 two dimensional matrix with random floats in it and in the next step determine the biggest element.
a = rand(Float64,2,4)
ind = findall(x->x<maximum(a), a)
elements = a[ind]


#Exercise 4 (JULIA)

#1. Create two matrices of the same layout and test if addition and subtraction of the matrix works as expected: C = A + B

A = [4.0 7; -10.6 89.8]
B = [19 -34.7; 20 1]

C = A + B
#2×2 Matrix{Float64}:
# 23.0  -27.7
#  9.4   90.8

C = A - B
#2×2 Matrix{Float64}:
# -15.0  41.7
# -30.6  88.8

#Now compare matrix multiplication either this way A * B and this way A .* B. Whats the difference?!
C = A * B
#2×2 Matrix{Float64}:
#  216.0  -131.8
# 1594.6   457.62
#multiplication with scalar product
C = A .* B
#2×2 Matrix{Float64}:
#   76.0  -242.9
# -212.0    89.8

#3. What about matrix division with "/" or "\"?!
#Right division operator: multiplication of x by the inverse of y on the right. Gives floating-point results for integer arguments.
/(A,B)
#equals
C = A / B
#2×2 Matrix{Float64}:
# -0.190743  0.381206
# -2.5338    1.87711

#Left division operator: multiplication of y by the inverse of x on the left. Gives floating-point results for integer arguments.
\(A,B)
#equals
C = A \ B
#2×2 Matrix{Float64}:
# 3.61375   -7.20595
# 0.649285  -0.839455

#4. Create a 3x3 integer matrix A with useful numbers. Now try A+1, A-1, A*2, A/2.
A = rand(Int8, 3,3)
#3×3 Matrix{Int8}:
# 91    62   -23
# 75  -118   -18
# 53    50  -108
A + 1
#ERROR: MethodError: no method matching +(::Matrix{Int8}, ::Int64)
#For element-wise addition, use broadcasting with dot syntax: array .+ scalar
A .+ 1
#3×3 Matrix{Int64}:
# 92    63   -22
# 76  -117   -17
# 54    51  -107
A - 1
#ERROR: MethodError: no method matching -(::Matrix{Int8}, ::Int64)
#For element-wise subtraction, use broadcasting with dot syntax: array .- scalar
A .- 1
#3×3 Matrix{Int64}:
# 90    61   -24
# 74  -119   -19
# 52    49  -109
A * 2
#3×3 Matrix{Int64}:
# 182   124   -46
# 150  -236   -36
# 106   100  -216
A / 2
#3×3 Matrix{Float64}:
# 45.5   31.0  -11.5
# 37.5  -59.0   -9.0
# 26.5   25.0  -54.0

#5. Now multiply a 3x4 matrix with a suitable (4)vector.
#create Vector
y = rand(Int8, 4)
#4-element Vector{Int8}:
# -54
# -99
#  92
# -60

#create Matrix
X = rand(Int8, 3,4)
#3×4 Matrix{Int8}:
# 112  102   66  119
# -16  104   13  101
# -93  -87  109   84

Xy = X * y
#3-element Vector{Int8}:
# -62
#  40
# -65


