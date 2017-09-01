#lang racket
(define (cuberoot x)
  (cuberoot-iter 1.0 x))

(define (cuberoot-iter guess x)
  (if (good-enough? guess x)
      guess
      (cuberoot-iter (improve guess x)
                x)))
(define (improve y x)
  (/ (+ (/ x (* y y)) (* 2 y)) 3))

(define (good-enough? guess x)
  (< (abs (- (expt guess 3) x)) 0.001))

(cuberoot 125)
