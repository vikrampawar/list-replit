;-------------------------------
; shows how to define a variable
(define pi 3.14)

;-------------------------------
; shows how to define a function
(define (square x)
  (* x x))
(square 5)

;-------------------------------
; shows how to call another procedure
(define (sum-of-squares x y)
  (+ (square x) (square y)))

(sum-of-squares 6 8)
;-------------------------------

