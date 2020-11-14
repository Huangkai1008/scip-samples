#lang scheme
;;;Section 1.1.1 Expressions

;486

;; `combination examples`
;; The leftmost element in the list is called the `operator`,
;; the other elements are called `operands`.
(+ 137 349)
(- 1000 334)
(* 5 99)
(/ 10 5)
(+ 2.7 10)

(+ 21 35 12 7)
(* 25 4 12)
(+ (* 3 5) (- 10 6))

;; pretty-printting
(+ (* 3
     (+ (* 2 4)
       (+ 3 5)))
  (+ (- 10 7)
    6))

;;; Section 1.1.2 Naming and the Environment

(define size 2)
size
(* 5 size)
size

(define pi 3.14159)
(define radius 10)
(* pi (* radius radius))
(define circumference (* 2 pi radius))
circumference

;;; Section 1.1.3 Evaluating Combinations
(* (+ 2 (* 4 6))
  (+ 3 5 7))

;;; Section 1.1.4 Compound Procedures
(define (square x) (* x x))
(square 21)
(square (+ 2 5))
(define (sum-of-squares x y)
  (+ (square x) (square y)))
(sum-of-squares 3 4)
(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))
(f 5)

;;; Section 1.1.5 The Substitution Model for Procedure Application
(f 5)

;;; Section 1.1.6 Conditional Expressions and Predicates
(define (abs x)
  (cond ((> x 0) x)
    ((= x 0) 0)
    ((< x 0) (- x))))
(define (abs1 x)
  (cond ((< x 0) (- x))
    (else x)))
(define (abs2 x)
  (if (< x 0)
    (- x)
    x))
(abs -3)
(abs1 -3)
(abs2 -3)
