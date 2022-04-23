(define (squares x)
    (* x x))

(define (sum_of_squares x y)
    (+  (squares x)
        (squares y)))

(define (sum_of_squares_of_two_largest x y z) 
    (sum_of_squares (max x y) (max (min x y) z))) 

(display (sum_of_squares_of_two_largest 1 2 3))
(exit)