;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 3.3..1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")))))
(define cm-per-inch 2.54)
(define in-per-feet 12)
(define feet-per-yard 3)
(define yard-per-rod (+ 5 1/2)
(define rod-per-furlong 40)
(define furlong-per-mile 8)

;; inches->cm : number -> number
;; it converts between inches and centimeters
;; example: (inches->cm 1) => 2.54 cm
  
(define (inches->cm inches)
  (* cm-per-inch inches))

;; feet->inches: number -> number
;; it converts between feet and inches
;; example: (feet->inches 1) => 12 in.
(define (feet->inches feet)
  (* in-per-feet feet))

;; yards->feet : number -> number
;; it converts between yards and feet
;; example: (yards->feet 1) => 3 ft.
(define (yards->feet yards)
  (* feet-per-yard yards))

;; rods->yards : number -> number
;; it converts between rods and yards
;; example: (rods->yards 1) => 5(1/2) yd.
(define (rods->yards rods)
  (* yard-per-rod rods))

;; furlongs->rods : number -> number
;; it converts between furlongs and rods
;; example: (furlongs->rods 1) => 40 rd.
(define (furlongs->rods furlongs)
  (* rod-per-furlong furlongs))

;; miles->furlongs : number -> number
;; it converts between miles and furlongs
;; example: (miles->furlongs 1) => 8 fl.
(define (miles->furlongs miles)
  (* furlong-per-mile miles))

;; feet->cm : number -> number
;; it converts between feet and cm
;; example: (feet->cm 1) => 30.48
(define (feet->cm feet)
  (inches->cm (feet->inches feet)))

;; yards->cm : number -> number
;; it converts between yards and cm
;; example: (yards->cm 1) => 91.44
(define (yards->cm yards)
 (feet->cm (yards->feet yards)))

;; rods->inches : number -> number
;; it converts between rods and inches
;; example: (rods->inches 1) => 198
(define (rods->inches rods)
  (feet->inches (yards->feet (rods->yards rods))))

;; miles->feet: number -> number
;; it converts between miles and feets
;; example: (miles->feet 1) => 5280
(define (miles->feet miles)
  (yards->feet 
   (rods->yards 
    (furlongs->rods 
     (miles->furlongs miles)))))





