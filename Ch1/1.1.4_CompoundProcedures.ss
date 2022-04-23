(define (square x)
    (* x x))

(define (sum_of_squares x y)
    (+ (square x) (square y)))

(display (square 5))
(display (sum_of_squares 3 4))

(exit)