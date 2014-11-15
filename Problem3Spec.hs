import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

elementAt a index = a !! index - 1

main :: IO ()
main = hspec $ do
  describe "Problem 3" $ do
    it "returns the element at the index" $ do
      elementAt [1,2,3,4] 2 `shouldBe` (2 :: Int)
