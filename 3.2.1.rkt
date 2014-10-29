;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 3.2.1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")))))
;; profit : number -> number
;; to compute the profit as the difference between revenue and costs
;; at some given ticket-price
(define (profit ticket-price)
  (- (revenue ticket-price) 
     (cost ticket-price)))

;; revenue : number -> number
;; to compute the revenue, given ticket-price
(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

;; cost : number -> number
;; to compute the costs, given ticket-price
(define cost-per-attendee 1.50)
(define (cost ticket-price)
  (* cost-per-attendee (attendees ticket-price)))

;; attendees : number -> number
;; to compute the number of attendees, given ticket-price
(define cost-per-show 120)
(define attendence-diff 15)
(define attendence-mod 0.10)
(define attendence-cap 5.00)

(define (attendees ticket-price)
  (+ 120
   (* (/ 15 .10) (- attendence-cap ticket-price))))

