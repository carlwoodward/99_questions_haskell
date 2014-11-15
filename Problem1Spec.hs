import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

myLast [] = error "WTF"
myLast [a] = a
myLast (_:xs) = myLast xs

main :: IO ()
main = hspec $ do
  describe "Problem 1" $ do
    it "myLast returns 4" $ do
      myLast [1,2,3,4] `shouldBe` (4 :: Int)

    it "myLast returns error" $ do
      myLast [] `shouldThrow` anyException
