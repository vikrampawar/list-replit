;-------------------------------
; shows how to define a @variable
(define pi 3.14)


;-------------------------------
; shows how to define a @function
(define (square x)
  (* x x))
(square 5)


;-------------------------------
; shows how to call another procedure
(define (sum-of-squares x y)
  (+ (square x) (square y)))

(sum-of-squares 6 8) ; returns 100
;-------------------------------


;-------------------------------
; call sum-of-squares
(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))
(f 5) ; returns 136


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



;-------------------------------
; show @if
(define (abs3 x)
  (if (< x 0)
      (- x)
      x))
(abs3 -12)  ; returns 12



;-------------------------------
; show  @and
; x is greater than 5 and less than 10
(define x 6)
(and (> x 5) (< x 10)) ; returns #t


;-------------------------------
; define the >== 
(define (>== x y )
  (or (> x y) (= x y)))
(>== 4 6)  ; returns false

;-------------------------------
; define the >=== in another way
(define (>=== x y)
  (not (< x y)))
(>=== 4 6)


;-------------------------------
; Exercise 1.1
10              ;10
(+ 5 3 4)       ;12
(- 9 1)         ;8
(/ 6 2)         ;3
(+ (* 2 4) (- 4 6))       ;6
(define a 3)
(define b (+a 1))