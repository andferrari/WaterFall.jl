Simple [Plots.jl](https://github.com/JuliaPlots/Plots.jl) receipe for waterfall plots 
(a la [Unknown Pleasures](https://en.wikipedia.org/wiki/Unknown_Pleasures)). Install using:
```julia
pkg> add https://github.com/andferrari/WaterFall.jl
```
and
```julia
using WaterFall
x = [exp(-(n - 1e-2*τ^2)^2/τ)  for n in 0:300, τ in 40:10:160]
plotfall(x, w=2)
```
<img src="https://user-images.githubusercontent.com/8927904/149515384-b1f3808c-c479-49c2-9d9f-40e81022a1a2.png" width="600">
