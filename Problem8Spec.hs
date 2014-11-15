import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

compress :: Eq a => [a] -> [a]
compress (x:xs@(y:_)) = if x == y
                        then compress xs
                        else x : compress xs
compress xs = xs

main :: IO ()
main = hspec $ do
  describe "Problem 8" $ do
    it "removes duplicates that are next to each other" $ do
      compress "aaaabccaadeeee" `shouldBe` ("abcade" :: [Char])
