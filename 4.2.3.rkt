;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.2.3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")))))

;; equation1: number -> boolean
;; to determine whether x is a solution for x2 + 2 * x + 1 = 0
(define (equation0 x)
  (= (+ (* x x) (+ (* 2 x) 1)) 0))



;; equation2: number -> boolean
;; to determine whether x is a solution for 4 * n + 2 = 62
(define (equation1 x)
  (= (+ (* 4 x) 2) 62))


;; equation3: number -> boolean
;; to determine whether x is a solution for 2 * n2 = 102
(define (equation2 x)
  (= (* 2 (* x x)) 
     102))

;; equation4: number -> boolean
;; to determine whether x is a solution for 4 * n2 + 6 * n + 2 = 462
(define (equation3 x)
  (= (+ 
      (* 4 (* x x)) 
      (* 6 x) 
      2) 
  462))

(equation1 10); "should be" false
(equation1 12); "should be" false
(equation1 14) ;"should be" false
(equation2 10) ;"should be" false
(equation2 12) ;"should be" false
(equation2 14); "should be" false
(equation3 10) ;"should be" true
(equation3 12); "should be" false
(equation3 14); "should be" false