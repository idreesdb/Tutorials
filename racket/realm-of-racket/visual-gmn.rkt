#lang racket
(require 2htdp/image 2htdp/universe)


;; Constants ---------------------------------------------------------------------------------------
(define TEXT-SIZE 11)
(define HELP-TEXT
  (text "↑ for larger numbers, ↓ for smaller ones" TEXT-SIZE "blue"))
(define HELP-TEXT2
  (text "Press = when your number is guessed; q to quit." TEXT-SIZE "blue"))
(define WIDTH (+ (image-width HELP-TEXT2) 10))
(define HEIGHT 150)
(define COLOR "red")
(define SIZE 72)
(define TEXT-X 3)
(define TEXT-UPPER-Y 10)
(define TEXT-LOWER-Y 135)
(define MT-SC
  (place-image/align
   HELP-TEXT TEXT-X TEXT-UPPER-Y "left" "top"
   (place-image/align
    HELP-TEXT2 TEXT-X TEXT-LOWER-Y "left" "bottom"
    (empty-scene WIDTH HEIGHT))))


;; State -------------------------------------------------------------------------------------------
(struct interval (small big) #:transparent)


;; Main --------------------------------------------------------------------------------------------
(define (start lower upper)
  (big-bang (interval lower upper)
            (on-key deal-with-guess)
            (to-draw render)
            (stop-when single? render-last-scene)))


;; Handlers ----------------------------------------------------------------------------------------
(define (single? w)
  (= (interval-small w) (interval-big w)))

(define (guess w)
  (quotient (+ (interval-small w) (interval-big w)) 2))

(define (smaller w)
  (interval (interval-small w)
            (max (interval-small w) (sub1 (guess w)))))

(define (bigger w)
  (interval (min (interval-big w) (add1 (guess w)))
            (interval-big w)))

(define (deal-with-guess w key)
  (cond [(key=? key "up")   (bigger w)]
        [(key=? key "down") (smaller w)]
        [(key=? key "q")    (stop-with w)]
        [(key=? key "=")    (stop-with w)]
        [else w]))


;; Rendering ---------------------------------------------------------------------------------------
(define (render w)
  (overlay (text (number->string (guess w)) SIZE COLOR) MT-SC))

(define (render-last-scene w)
  (overlay (text "End" SIZE COLOR) MT-SC))
