import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)
import Data.List

pack a = group a

main :: IO ()
main = hspec $ do
  describe "Problem 9" $ do
    it "group shit" $ do
      pack "aaaabccaadeeee" `shouldBe` (["aaaa", "b", "cc", "aa", "d", "eeee"] :: [[Char]])
