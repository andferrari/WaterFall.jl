[Plots.jl](https://github.com/JuliaPlots/Plots.jl) receipe for waterfall plots as in:
```julia
t = [n - τ for n in -100:100, τ in -50:5:50]
x = @. exp(-t^2/10)*sin(2*π*0.1*t)

plotfall(x)
```

![dataviewer](waterfall.png)