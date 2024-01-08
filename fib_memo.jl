# A memoização é uma tecnica muito útil para armazenar resultados de funções em cache. 
# Sendo assim, permitindo que chamadas futuras com os mesmos parametros sejam resolvidas
# mais rapidamente sem precisar calcular novamente.

dict_memo = Dict(0=>0, 1=> 1) # Dicionario vazio para armazenar os valores já calculado.

function fib_recursivo_memo(n)
    
    if n in keys(dict_memo)
        return dict_memo[n]
    else
        dict_memo[n] = fib_recursivo_memo(n-1) + fib_recursivo_memo(n-2)
    end
    return dict_memo[n]

end