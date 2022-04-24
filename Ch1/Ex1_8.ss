(define (square x)
    (* x x))

(define (cube x)
    (* x x x))

(define (abs x)
(cond ((< x 0) (- x))
  (else x)))

(define (sqrt_iter guess x)
    (if (good_enough guess x)
        guess
        (sqrt_iter (improve guess x) x)))

(define (curt_iter guess x)
    (if (good_enough_cube guess x)
    guess
    (curt_iter (improve_curt guess x) x)))

(define (improve guess x)
    (/ (+ guess (/ (+ x guess) 2)) 2))

(define (improve_curt guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))


(define (good_enough guess x)
    (< (abs (- (square guess) x)) 0.01))

(define (good_enough_cube guess x)
    (< (abs (- (cube guess) x)) 0.01))

(define (sqrt x)
    (sqrt_iter 1.0 x))

(define (curt x)
    (curt_iter 1.0 x))

(display(sqrt 4))
(newline)
(display(curt 27))
(exit)