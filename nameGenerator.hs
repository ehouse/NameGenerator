import qualified Data.Text    as Text
import qualified Data.Text.IO as Text
import System.Random
import Control.Monad

rand5 :: [Text.Text] -> IO [Text.Text]
rand5 wl = do
  a <- replicateM 5 (randomRIO(0, length wl))
  return (map (\x -> wl !! x) a)

main = do
  wl <- fmap Text.lines (Text.readFile "wordlist.txt")
  results <- rand5 wl
  mapM_ Text.putStrLn results
