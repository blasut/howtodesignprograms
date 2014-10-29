;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 5.1.5) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp")))))


;; check-color : symbol symbol symbol symbol -> symbol
;; to determine how well the target-colours match with the guess-colors
(define (check-color target-1 target-2 guess-1 guess-2)
  (cond
    [(and (symbol=? guess-1 target-1) (symbol=? guess-2 target-2))
     'Perfect]
    [(or (symbol=? guess-1 target-1) (symbol=? guess-2 target-2))
     'OneColorAtCorrectPosition]
    [(or (symbol=? guess-1 target-2) (symbol=? guess-2 target-1))
     'OneColorOccurs]
    [else
     'NothingCorrect]))

(check-expect (check-color 'red 'green 'red 'green) 'Perfect)
(check-expect (check-color 'red 'green 'red 'purple) 'OneColorAtCorrectPosition)
(check-expect (check-color 'red 'green 'purple 'red) 'OneColorOccurs)
(check-expect (check-color 'green 'red 'red 'purple) 'OneColorOccurs)
(check-expect (check-color 'green 'blue 'red 'purple) 'NothingCorrect)

(master check-color)