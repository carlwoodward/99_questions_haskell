import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)
import Data.List

data MultipleOrSingle a = Multiple (a) | Single a
encode = map (\a -> (length a, head a)) . group

main :: IO ()
main = hspec $ do
  describe "Problem 9" $ do
    it "encode shit" $ do
      encode "aaaabccaadeeee" `shouldBe` ([(4, 'a'), (1, 'b'), (2, 'c'), (2, 'a'), (1, 'd'), (4, 'e')] :: Num t => [(t, Char)])
