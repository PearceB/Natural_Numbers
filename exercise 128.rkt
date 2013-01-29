;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |exercise 128|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Exercise 128

; A N (Natural Number) is one of:
; - 0
; - (add1 N)

; N -> Number
; compute (+ n pi) without using +
(check-within (add-to-pi 3) (+ 3 pi) 0.1)
(check-within (add-to-pi 5) (+ 5 pi) 0.1)
(check-within (add-to-pi 0) pi 0.1)

(define (add-to-pi n)
  (cond
    [(zero? n) pi]
    [(positive? n) (add1 (add-to-pi (sub1 n)))]))

; N Number -> Number
; Compute the sum of N and an arbitrary number x without using +
(check-expect (add 5 4) 9)
(check-expect (add 0 4) 4)
(check-expect (add 3 0) 3)
(check-expect (add 14 17) 31)

(define (add n x)
  (cond
    [(zero? n) x]
    [(positive? n) (add1 (add (sub1 n) x))]))