(define (square x)
    (* x x))

(define (abs x)
(cond ((< x 0) (- x))
      (else x)))

(define (sqrt-iter guess x)
    (if (good_enough guess x)
        guess
    (sqrt-iter (improve guess x) x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good_enough guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
    (sqrt-iter 1.0 x))

(display(sqrt 9))
(exit)