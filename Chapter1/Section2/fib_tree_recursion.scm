;;tree recursion
(define (fib n)
    (cond ((= n 0) 0)
          ((= n 1) 1)
          (else (+ (fib (- n 1))
                   (fib (- n 2))
                )

          )
    )
)

(fib 0)
(fib 1)
(fib 2)

;; iteration
(define (fib_iter n)
    (define (iter a b count)
        (if (= count 0)
            b
            (iter (+ a b) a (- count 1))
        )
    )

    (iter 1 0 n)
)

(fib_iter 0)
(fib_iter 1)
(fib_iter 2)
