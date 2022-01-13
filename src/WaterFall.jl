module WaterFall

using Reexport
@reexport using Plots
using Statistics

@userplot PlotFall
@recipe function f(in::PlotFall; cover=0.5, n_init = 1, Δ = nothing)
           y = length(in.args) == 1 ? in.args[1] : in.args[2]
           t = length(in.args) == 2 ? in.args[1] : 1:size(y)[1]

           n_sig = size(y)[2]
           if isnothing(Δ)
            y .-= mean(y, dims=1)
            Δ = cover*maximum([maximum(y[:,k]) - minimum(y[:,k+1]) for k in 1:n_sig - 1])
           end
           y .+= (1:n_sig)'*Δ

           @series begin
               legend := false
               seriescolor := :black
               yaxis := false
               grid := false
               #yticks := false
               yticks := (Δ*cover*[1, n_sig], string.(n_init .+ [0, n_sig - 1]))
           t, y
           end
       end

end 
