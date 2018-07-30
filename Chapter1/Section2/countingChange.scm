;input: a,amount of money.
;given kinds of coins n and their repectively denominations d,
;which is 1,5,10,25,50
;return the ways to change a amount of money.

(define (denomination firstKindOfCoin)
    (cond ((= firstKindOfCoin 5) 50)
          ((= firstKindOfCoin 4) 25)
          ((= firstKindOfCoin 3) 10)
          ((= firstKindOfCoin 2) 5 )
          ((= firstKindOfCoin 1) 1 )
    )
)

(define (countChange a n)
    (cond ((= a 0) 1)
          ((= n 0) 0)
          ((< a 0) 0)
          (else (+ (countChange a (- n 1))
                   (countChange (- a (denomination n)) n)
                )
          )
    )
)

(countChange 100 5)
