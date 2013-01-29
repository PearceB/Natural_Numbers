;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |exercise 128|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Exercise 128

; A N (Natural Number) is one of:
; - 0
; - (add1 N)

; N -> Number
; compute (+ n pi) without using +
(check-expect (add-to-pi 3) (+ 3 pi))

(define (add-to-pi n)
  (cond
    [(zero? n) ...]
    [(positive? n) (... (add1 pi) ...)]))