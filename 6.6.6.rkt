;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 6.6.6) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")))))

;; A circle is a structure:
;;    (make-circle P R C)
;; where 
;;     P is a posn describing the center of the circle
;;     R is a number describing the radius of the circle
;; and C is a symbol describing the color.
(define-struct circle (center radius color))

;; data examples
(make-circle (make-posn 1 0) 1 'red)
(make-circle (make-posn 10 10) 40 'blue)

;; Template: 
;; (define (fun-for-circle circle)
;;  ... (circle-center circle) ...
;;  ... (circle-radius circle) ...
;;  ... (circle-color circle) ...

;-----------------------------------------------------------------------

;; draw-a-circle : circle -> true
;; draws a circle on the screen
(define (draw-a-circle c)
  (draw-circle (circle-center c)
               (circle-radius c)
               (circle-color c)))

;; Examples
(start 300 300)
(draw-a-circle (make-circle (make-posn 50 50) 50 'red))


;-----------------------------------------------------------------------

;; in-circle? : circle posn -> boolean
;; determines if p is inside the circle c

;; Examples
;; the point (6,5) is inside the circle located at (6,5) with radius 1
;; the point (5.5,5) is inside the circle located at (6,5) with radius 1
;; the point (1,5) is outside the circle located at (6,5) with radius 1

(define (in-circle? c p)
  (<= (sqrt (+ (sqr (- (posn-x (circle-center c))
                       (posn-x p)))
               (sqr (- (posn-y (circle-center c))
                       (posn-y p)))))
      (circle-radius c)))

;; Examples
(in-circle? (make-circle (make-posn 6 5) 1 'blue) (make-posn 6 5)) ; should be true
(in-circle? (make-circle (make-posn 6 5) 1 'green) (make-posn 5.5 5)) ; should be true
(in-circle? (make-circle (make-posn 6 5) 1 'yellow) (make-posn 1 5)) ; should be true

;-----------------------------------------------------------------------

;; translate-circle : circle -> circle
;; translates the circles center delta pixels to the right
(define (translate-circle c delta)
  (make-circle (make-posn
                (+ delta (posn-x (circle-center c)))
                (posn-y (circle-center c)))
               (circle-radius c)
               (circle-color c)))

;; Examples
(translate-circle
 (make-circle (make-posn 0 0) 1 'blue) 
 10)
;; should be:
(make-circle (make-posn 10 0) 1 'blue)

;-----------------------------------------------------------------------

;; clear-a-circle : circle -> true
;; clears a circle on the screen
(define (clear-a-circle c)
  (clear-circle 
   (circle-center c)
   (circle-radius c)))

;; Examples
(start 300 300)
(draw-a-circle (make-circle (make-posn 50 50) 50 'red))
(clear-a-circle (make-circle (make-posn 50 50) 50 'red))

;-----------------------------------------------------------------------


;; draw-and-clear-circle : circle -> true
;; draws a circle, waits for a second and then clears it
(define (draw-and-clear-circle circle)
  (and (draw-a-circle circle)
       (sleep-for-a-while 1)
       (clear-a-circle circle)))


;; Examples
(start 300 300)
(draw-and-clear-circle (make-circle (make-posn 50 50) 50 'red))

























