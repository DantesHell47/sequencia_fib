# Exercicio para contruir a sequencia de Fibonacci para o caso iterativo e para o caso recursivo
using Plots; gr()
function fib_iterativo(n)
    if n == 0
        return n
    end
    last, next  = 0, 1
    for i in 1:n-1
        last, next = next, next + last # Descompacatção. O `last` recebe o `next` e o `next` recebe a soma `last` + `next`
    end
    return next # Retorna o n-ésima posição da sequencia de Fibonacci
end


function fib_recursivo(n)
    if n < 2
        return n
    else
        return fib_recursivo(n-1) + fib_recursivo(n-2)
    end
end



function sequence_fib(n)
    fib = [0, 1]
    while length(fib) < n
        push!(fib, fib[end] + fib[end - 1])
    end
    return fib
end

# Grafivos das sequencia de Fibonacci
function grafico(N, y_offset=20)
    valores = sequence_fib(N+1)
    indice = collect(0:N)
    scatter(indice,valores, legend=false,markershape=:circle, xlabel="Índice", ylabel="Valores")

    anotation = annotate!()
    for i in (N-5):N+1
        anotation = annotate!(i-1,valores[i] + y_offset, text("($(i-1), $(valores[i]))  ",9,:right))
    end
    anotation
    savefig("graf.svg")