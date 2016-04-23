import Control.Applicative
import Control.Monad
import System.IO

bigSum :: [Integer] -> Integer
bigSum [] = 0
bigSum (h:t) = h + bigSum t

main :: IO ()
main = do
    n_temp <- getLine
    let n = read n_temp :: Int
    arr_temp <- getLine
    let arr = map read $ words arr_temp :: [Integer]
    let result = bigSum arr
    print result

getMultipleLines :: Int -> IO [String]

getMultipleLines n
    | n <= 0 = return []
    | otherwise = do          
        x <- getLine         
        xs <- getMultipleLines (n-1)    
        let ret = (x:xs)    
        return ret          
