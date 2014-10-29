;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname notes) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")))))

(define (area-of-disk r)
  (* 3.14 (* r r)))

(area-of-disk 5)

(define (area-of-ring outer inner)
  (- (area-of-disk outer)
     (area-of-disk inner)))

(area-of-ring 5 3)

(define (fahreinhet->celcius f)
  (* (- f 32) (/ 5 9)))

(fahreinhet->celcius 100)

;(convert-gui fahreinhet->celcius)
;(convert-repl fahreinhet->celcius)

; Är på exercise 2.2.2
