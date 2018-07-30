(define (f n)
    (if (< n 3)
        n
        (+ (* 1 (f (- n 1)))
           (* 2 (f (- n 2)))
           (* 3 (f (- n 3)))
        )
    )
)

(f 0)
(f 1)
(f 2)
(f 3)
(f 4)

(define (iter a b c counter)
    (if (=  counter  0)
            a
        (iter b
              c
              (+ (* 3 a) (* 2 b) (* 1 c))
              (- counter 1)

        )
    )
)
(define (f_iter n)
    (iter 0 1 2 n)
)

(f_iter 0)
(f_iter 1)
(f_iter 2)
(f_iter 3)
(f_iter 4)
