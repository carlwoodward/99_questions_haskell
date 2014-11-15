import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

isPalindrome a = a == reverse a

main :: IO ()
main = hspec $ do
  describe "Problem 4" $ do
    it "returns true when is a palindrome" $ do
      isPalindrome [1,2,4,8,16,8,4,2,1] `shouldBe` (True :: Bool)
