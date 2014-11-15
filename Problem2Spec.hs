import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

secondLast [] = error "WTF"
secondLast [a, _] = a
secondLast (_:xs) = secondLast xs

main :: IO ()
main = hspec $ do
  describe "Problem 2" $ do
    it "secondLast returns 3" $ do
      secondLast [1,2] `shouldBe` (1 :: Int)

    it "secondLast returns error" $ do
      secondLast [] `shouldThrow` anyException

    it "secondLast returns error with one value" $ do
      pendingWith "secondLast [1] `shouldThrow` anyException"

    it "secondLast returns the first value when 2 are provided" $ do
      secondLast [1,2] `shouldBe` (1 :: Int)
