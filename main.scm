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
(define (sum_of_squares x y)
  (+ (square x) (square y)))

(sum_of_squares 6 8) ; returns 100
;-------------------------------


;-------------------------------
; call sum_of_squares
(define (f a)
  (sum_of_squares (+ a 1) (* a 2)))
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
(+ (* 2 4) (- 4 6))       ; 6
(define a 3)
(define b (+ a 1))
(+ a b (* a b))           ; 19 
(= a b)                   ; #f 
;;
(if (and (> b a) (< b (* a b)))
    b
    a)
;; returns 4

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))          ; 16
(+ 2 (if (> b a) b a))    ; 6
;;

(* (cond ((> a b) a)
        ((< a  b) b)
        (else -1))
        (+ a 1))          ; 16

;-------------------------------
; Exercise 1.2

(/ (+ 5 4 (- 2 (- 3 
                (+ 6 (/ 4 5)))))
   (* 3 
      (- 6 2)
      (- 2 7)))             ; -0.24666666666666667


;-------------------------------
; Exercise 1.3
; 
; Define a procedure that takes three numbers
; as arguments and returns the sum of the squares of the 
; two larger numbers.

(define (sum_of_squares_of_larger_two x y z)
  (cond ((and (< z x) (< z y)) (sum_of_squares x y))
        ((and (< x y) (< x z)) (sum_of_squares y z))
        (else  (sum_of_squares x z))))
; (sum_of_squares_of_larger_two 2 3 4)        ; 25
; (sum_of_squares_of_larger_two 3 2 4)        ; 25
; (sum_of_squares_of_larger_two 3 4 2)        ; 25

