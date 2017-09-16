#lang racket
(define (solution limit)
  (sum_fib limit 0 1 0))

(define (sum_fib limit fib1 fib2 acc)
  (let ([next-fib (+ fib1 fib2)])
    (cond
      [(> next-fib limit) acc]
      [(even? next-fib) (sum_fib limit fib2 next-fib (+ acc next-fib))]
      [else (sum_fib limit fib2 next-fib acc)])))
 
