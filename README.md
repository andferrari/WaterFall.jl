Simple [Plots.jl](https://github.com/JuliaPlots/Plots.jl) receipe for waterfall plots 
(a la [Unknown Pleasures](https://en.wikipedia.org/wiki/Unknown_Pleasures)). Install using:
```julia
pkg> add https://github.com/andferrari/WaterFall.jl
```
and
```julia
using WaterFall
x = [exp(-(n - 1e-2*τ^2)^2/τ)  for n in 0:300, τ in 40:10:160]
plotfall(x, w=2, dpi=300)
```
<img src="https://user-images.githubusercontent.com/8927904/149500543-dbe084a4-ab63-4bdc-8822-88dc9827cfce.png" width="600">
