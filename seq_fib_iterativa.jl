# Exercicio para contruir a sequencia de Fibonacci para o caso iterativo e para o caso recursivo

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
