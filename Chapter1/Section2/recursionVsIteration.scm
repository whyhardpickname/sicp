;;linar recursion

(define (factorial n)
    (if (= n 1)
        1
        (* n (factorial (- n 1)))))

;;iteration

(define (fact-ite n)
    (define (ite product counter stop)
        (if (> counter stop)
            product
            (ite (* product counter)
                    (+ counter 1)
                    stop)))
    (ite 1 1 n))

;;test

;;recursion

(factorial 6)
;; iteration
(fact-ite 6)
