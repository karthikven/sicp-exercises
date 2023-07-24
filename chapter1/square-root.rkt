#lang sicp
; finding the square root of a number using newton's method

(define (square n) (* n n))
(define (good-enough? guess number) (if (< (abs (- (square guess) number)) 0.0000001) #t #f))
(define (improve-guess guess number) (/ (+ guess (/ number guess)) 2))
(define (sqrt-iter guess target) (if (good-enough? guess target)
  guess
  (sqrt-iter (improve-guess guess target) target)))
(define (square-root x) (sqrt-iter 1.0 x))                                  
(square-root 25)

