#lang racket
(define (product term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* a result)))
    )
  (iter a 1)
)

(define (general term a next b op inicio)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (op (term a) result)))
    )
  (iter a inicio)
)

(define (next-pi x) (+ x 4))
(define (op-pi x y)(+ y (/ 1 x)))
(define (term-pi x) x)

(define (calcula-pi max) (general term-pi 1 next-pi max + 0))
(calcula-pi 100)

#|
(define (increase x) (+ x 1))
(define (nothing x) x)
(product nothing 1 increase 5)

(define (factorial x)
  (product nothing 1 increase x))

(factorial 5)
|#





