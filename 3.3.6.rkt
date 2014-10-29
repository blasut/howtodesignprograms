;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 3.3.6) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")))))




(define (fahrenheit->celcius f)
  (* (- f 32) 5/9))

(define (celcius->fahreinheit c)
  (+ 32 (* c (/ 9 5))))

(define (I f)
  (celcius->fahreinheit (fahrenheit->celcius f)))

(I 32)