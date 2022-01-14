Simple [Plots.jl](https://github.com/JuliaPlots/Plots.jl) receipe for waterfall plots 
(a la [Unknown Pleasures](https://fr.wikipedia.org/wiki/Unknown_Pleasures)). Install using:
```julia
pkg> add https://github.com/andferrari/WaterFall.jl
```
and
```julia
using WaterFall
t = [n - τ for n in -100:100, τ in -50:5:50]
x = @. exp(-t^2/10)*sin(2*π*0.1*t)
plotfall(x)
```
<img src="https://user-images.githubusercontent.com/8927904/149405910-5f054f17-741b-4327-8b6a-a651c25ed825.png" width="600">
