import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

main :: IO ()
main = hspec $ do
  describe "Problem 4" $ do
    it "returns the reversed list" $ do
      myReverse [1,2,3,4] `shouldBe` ([4,3,2,1] :: [Int])
