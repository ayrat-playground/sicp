#lang racket
(define (recur_func n)
  (if (< n 3)
      n
      (+ (recur_func (- n 1))
         (* 2 (recur_func (- n 2)))
         (* 3 (recur_func (- n 3))))))

(define (iter_func n)
  (if (< n 3)
      n
      (iter 0 1 2 4 n)))

(define (iter first second third counter n)
  (if (> counter n)
      (+ third (* 2 second) (* 3 first))
      (iter second third (+ third (* 2 second) (* 3 first)) (+ counter 1) n)))
  
      

(recur_func 9)
(iter_func 100)