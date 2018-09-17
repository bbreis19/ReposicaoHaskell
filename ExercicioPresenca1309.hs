
-- 1) Completar
--map2 = zipWith
map2 :: (a -> b -> c) -> [a] -> [b] -> [c]

-- f 
-- [x] == (x:[])
map2 f [x] [y] = (f x y) : [] -- pega o ultimo elemento das listas, aplica a função neles, e avisando que a lista está vazia 
--                         (c    )   ([c])
--                            a b          (a -> b -> c) [a] [b]
map2 f (x : xs) (y : ys) = (f x y) : (map2 f              xs  ys)
                    --        a                   [a]
                    -- (:) :: a -> [a] -> [a]
                            
-- x é o elemento de foco da lista
-- xs é o restante da lista

{-
                 (a  ->  b  ->  c)
(a -> b -> c) -> [a] -> [b] -> [c]

-}