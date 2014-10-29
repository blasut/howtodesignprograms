;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.4.1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")))))



;; interest : number -> number
;; it calculates the amount of interest per year
(define (interest amount)
  (cond
    [(<= amount 1000) (* amount 4/100)]
    [(<= amount 5000) (* 0.045 amount)]
    [(> amount 5000) (* 0.05 amount)]))
