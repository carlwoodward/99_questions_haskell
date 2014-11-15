import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

data NestedList a = Elem a | List [NestedList a]
flatten (Elem a) = [a]
flatten (List (x:xs)) = flatten x ++ flatten (List xs)
flatten (List []) = []

main :: IO ()
main = hspec $ do
  describe "Problem 7" $ do
    it "returns a flattened list" $ do
      flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]) `shouldBe` ([1,2,3,4,5] :: [Int])
    it "returns an empty list" $ do
      flatten (List []) `shouldBe` ([] :: [Int])
