;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 6.4.1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")))))
;; A movie is a structure
;; (make-struct symbol symbol)
(define-struct movie (title producer))

;; A boyfriend is a structure
;; (make-boyfriend symbol symbol symbol number)
(define-struct boyfriend (name hair eyes phone))

;; A cheerleader is a structure
;; (make-cheerleader symbol number)
(define-struct cheerleader (name number))

;; A cd is a structure
;; (make-CD symbol symbol number)
(define-struct CD (artist title price))

;; A sweater is a structure
;; (make-sweater symbol number symbol)
;; We could make the size a symbol for allowing different kinds of sizes
(define-struct sweater (material size producer))