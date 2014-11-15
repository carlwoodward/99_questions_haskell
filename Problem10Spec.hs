import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)
import Data.List

encode a = map (\a -> (length a, head a)) (group a)

main :: IO ()
main = hspec $ do
  describe "Problem 9" $ do
    it "encode shit" $ do
      encode "aaaabccaadeeee" `shouldBe` ([(4, 'a'), (1, 'b'), (2, 'c'), (2, 'a'), (1, 'd'), (4, 'e')] :: Num t => [(t, Char)])
