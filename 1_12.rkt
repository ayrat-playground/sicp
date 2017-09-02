#lang racket
(define (pascal i j)
  (if (equal? i 0)
      1
      (+ (pascal (- i 1) (- j 1)) (pascal (- i 1) j))))

(pascal 3 2)