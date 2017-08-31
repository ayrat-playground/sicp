#lang racket
(define (myfunc2 a b)
  (+ (* a a) (* b b)))
(define (myfunc1 a b c)
    (cond 
        ((and(>= c b)(>= a b)) (myfunc2 c a))
        ((and(>= a c)(>= b c)) (myfunc2 a b))
        ((and(>= c a)(>= b a)) (myfunc2 c b))))
