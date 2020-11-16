#lang racket
;;;Exercise 1.3
;; Define a procedure that takes three numbers as arguments
;; and returns the sum of the squares of the two larger numbers.

;; `max` returns maximum of two numbers.
(define (max x y)
    (if (> x y)
        x
        y))

;; `min` returns minimum of two numbers.
(define (min x y)
    (if (< x y)
        x
        y))

;; `sum-of-squares` returns the sum of two number's squares.
(define (sum-of-squares x y)
    (+ (* x x) (* y y)))

;; `sum-of-two-larger-squares` returns the sum of the squares of the two larger numbers.
(define (sum-of-two-larger-squares x y z)
    (sum-of-squares (max x y)
                    (max (min x y) z)))

(sum-of-two-larger-squares 0 1 2)
(sum-of-two-larger-squares 0 2 2)
(sum-of-two-larger-squares 2 1 2)
(sum-of-two-larger-squares -2 -1 2)
(sum-of-two-larger-squares 3 6 9)
