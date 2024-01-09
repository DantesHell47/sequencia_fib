# Exercicio para contruir a sequencia de Fibonacci para o caso iterativo e para o caso recursivo

function fib_iterativo(n)
    if n == 0 || n == 1 # Valores iniciais. Retorna 0 ou 1
        return n
    end
    last, next = 0, 1
    for _ in 1:n
        last, next = next, next + last # Descompacatção. O `last` recebe o `next` e o `next` recebe a soma `last` + `next`
    end
    return next # Retorna o n-ésima posição da sequencia de Fibonacci
end


function fib_recursivo(n)
    if n == 0 || n == 1
        return n
    else
        return fib_recursivo(n-1) + fib_recursivo(n-2)
    end
end