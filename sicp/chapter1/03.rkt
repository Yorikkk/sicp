#lang sicp

(#%require rackunit)

(define (square x) (* x x))
(define (sum_of_sqrt x y) (+ (square x) (square y)))
(define (solution x y z) (cond (
        (> x y) (if (> y z) (sum_of_sqrt x y) (sum_of_sqrt x z)))
        (else (if (> x z) (sum_of_sqrt y x) (sum_of_sqrt y z)))
))

(check-equal? (solution 1 2 3) 13)
(check-equal? (solution 4 2 3) 25)
(check-equal? (solution 0 0 0) 0)
(check-equal? (solution 1 0 1) 2)
(check-equal? (solution 2 3 0) 13)
