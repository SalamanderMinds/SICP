;;reccursion version.
(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (term (next a)) next b))))

;;iteration version.
(define (product term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (+ a 1)
                  (* (term a) result))))
    (iter a 1))