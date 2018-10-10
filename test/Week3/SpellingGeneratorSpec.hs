module Week3.SpellingGeneratorSpec (main, spec) where


import Test.Hspec
import Test.QuickCheck

import Data.String.Strip
import Week3.SpellingGenerator

-- `main` is here so that this module can be run from GHCi on its own.  It is
-- not needed for automatic spec discovery.
main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Spelling Generator" $ do
    it "Transforms an array of string into a pelling" $ do
      speller ["abacus"] `shouldBe` "a is for abacus"
      speller ["apple", "banana", "coconut"] `shouldBe` "a is for apple, b is for banana, and c is for coconut"
      speller ["whisky", "x-ray"] `shouldBe` "w is for whisky, and x is for x-ray"



