import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

myLength [] = 0
myLength (_:xs) = 1 + myLength xs

main :: IO ()
main = hspec $ do
  describe "Problem 4" $ do
    it "returns 0 for an empty array" $ do
      myLength [] `shouldBe` (0 :: Int)

    it "returns 1 for an a single element array" $ do
      myLength [1] `shouldBe` (1 :: Int)

    it "returns the length of an array" $ do
      myLength [1,2,3,4] `shouldBe` (4 :: Int)
