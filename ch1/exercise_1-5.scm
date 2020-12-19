(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))

;never terminates because it calls the function rather than expands and reduces, thus applicative order.
;basically, infinite recursion
