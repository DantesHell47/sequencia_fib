# A memoização é uma tecnica muito útil para armazenar resultados de funções em cache. 
# Sendo assim, permitindo que chamadas futuras com os mesmos parametros sejam resolvidas
# mais rapidamente sem precisar calcular novamente.

function fib_recursivo_memo(n, dict_memo = Dict{Int,Int}(0=>0, 1=>1))
    if n < 0
        error("n não deve ser um número negativo")
    end
    
    if haskey(dict_memo, n)
        return dict_memo[n]
    else
        dict_memo[n] = fib_recursivo_memo(n-1, dict_memo) + fib_recursivo_memo(n-2, dict_memo)
    end
    return dict_memo[n]
end


# Uma outra maneira de fazer este código acima é a seguinte:

function fib_recursivo_memo1(n, dict_memo = Dict{Int,Int}(0=>0, 1=>1))
    if n < 0
        error("n não deve ser um número negativo")
    end
    
    if !haskey(dict_memo, n)
        dict_memo[n] = fib_recursivo_memo(n-1, dict_memo) + fib_recursivo_memo(n-2, dict_memo)
    end
    return dict_memo[n]
end