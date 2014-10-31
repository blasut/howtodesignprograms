;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 6.5.2) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")))))
;; structure time
;; (make-time hours minutes seconds)
;; hours, minutes and seconds are the time since midnight
;; hours, minutes and seconds are numbers
(define-struct time (hours minutes seconds))
;;
;; Contract: time->seconds : time -> number
;;
;; Purpose: Produce the number of seconds since midnight, 
;;          based on the time structure.
;;
;; Examples:
;; (time->seconds (make-time 12 30 2))
;; =
;; 45002

;; Definition:
(define (time->seconds time)
  (+ (time-seconds time)
     (* 60 (time-minutes time))
     (* 60 60 (time-hours time))))

;; Tests:
(time->seconds (make-time 12 30 2))
;; expected value:
45002


