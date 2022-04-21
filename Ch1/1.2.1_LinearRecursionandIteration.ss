(define (factorial_recursion n)
    (if (= n 1)
        1
    (* n (factorial_recursion (- n 1)))))
(display (factorial_recursion 5))

(define (factorial_iteration n)
    (fact_iter 1 1 n))
(define (fact_iter product counter max_count)
    (if (> counter max_count)
        product
        (fact_iter (* counter product)
                        (+ counter 1)
                        max_count)))
(display (factorial_iteration 5))
(exit)

