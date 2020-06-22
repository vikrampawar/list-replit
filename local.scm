;-------------------------------
; show @cond
; The consequent expression of the first predicate that is true
; wil be returned, if none are true, it's undefined.
(define (abs x)
  (cond ((> x 0) x)           ; (> x 0) is a predicate, x is consequent expression
        ((= x 0) 0)           ; a clause
        ((< x 0) (- x)))) 
(abs -10) ; returns 10



;-------------------------------
; show @else

(define (abs2 x)
  (cond ((< x 0) (- x))
        (else x)))
(abs2 -11) ; returns 11