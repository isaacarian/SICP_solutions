(define (largest x y z) ;find largest
        (cond  ((and (> x y) (> x z))
          x)
          ((and (> y x) (> y z))
          y)
          (else z)))

(define (smallest x y z) ;find smallest
        (cond  ((and (< x y) (< x z))
          x)
          ((and (< y x) (< y z))
          y)
          (else z)))

(define (middle x y z) ;find middle
        (cond ((and (not (= x (smallest x y z))) (not (= x (largest x y z))))
          x)
          ((and (not (= y (smallest x y z))) (not (= y (largest x y z))))
          y)
          (else z)))

(define (square x) (* x x))
(define (sum_of_square x y z) (+ (square (largest x y z)) (square (middle x y z))))

(sum_of_square 3 4 5)
