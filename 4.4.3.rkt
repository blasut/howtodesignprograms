;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.4.3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")))))





;; tax : number -> number
;; tax takes the gross pay and gives back the amount of tax owed.
;; For a gross pay of $240 or less, the tax is 0%; 
;; for over $240 and $480 or less, the tax rate is 15%; 
;; and for any pay over $480, the tax rate is 28%.
(define (tax amount)
  (cond
    [(<= amount 240) 0]
    [(<= amount 480) (* 0.15 amount)]
    [(> amount 480) (* 0.28 amount)]))

(define (grosspay hours)
  (* hours 12))

(define (netpay hours)
  (- (grosspay hours)
     (tax (grosspay hours))))

(netpay 40)