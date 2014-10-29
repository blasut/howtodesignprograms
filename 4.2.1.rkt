;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.2.1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")))))



(define (interval-1 n)
  (and (> n 3) (<= n 7)))

(define (interval-2 n)
  (and (>= n 3) (<= n 7)))

(define (interval-3 n)
  (and (>= n 3) (< n 9)))

(define (interval-4 n)
  (or  (and (> n 1) (< n 3))
       (and (> n 9) (< n 11))))

(define (interval-5 n)
  (or (< n 1)
      (> n 3))