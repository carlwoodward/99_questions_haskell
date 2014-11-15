import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

secondLast [] = -1
secondLast [a] = -1
secondLast [a, _] = a
secondLast (_:xs) = secondLast xs

main :: IO ()
main = hspec $ do
  describe "Problem 2" $ do
    it "secondLast returns 3" $ do
      secondLast [1,2] `shouldBe` (1 :: Int)

    it "secondLast returns error" $ do
      secondLast [] `shouldBe` (-1 :: Int)

    it "secondLast returns error with one value" $ do
      secondLast [1] `shouldBe` (-1 :: Int)

    it "secondLast returns the first value when 2 are provided" $ do
      secondLast [1,2] `shouldBe` (1 :: Int)
