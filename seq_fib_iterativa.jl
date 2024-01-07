function fib(n)
    if n == 0 || n == 1
        return n
    end
    last = 0
    next = 1
    for _ in 1:n
        last, next = next, next + last
    end
    return next
end
