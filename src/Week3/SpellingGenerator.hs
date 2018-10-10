module Week3.SpellingGenerator where

speller :: [[Char]] -> [Char]
speller [] = ""
speller l =
  case l of
    [x] -> wordToSpelling x
    x:xs -> wordToSpelling x ++ joinWords (map wordToSpelling xs)

wordToSpelling :: String -> String
wordToSpelling word = [head word] ++ " is for " ++ word

joinWords :: [String] -> String
joinWords words =
  let wordsLength = length words
   in snd $
      foldr
        (\a b -> (fst b - 1, computeJoinStr wordsLength b ++ a ++ snd b))
        (wordsLength, "")
        words

computeJoinStr :: Int -> (Int, String) -> String
computeJoinStr wordsLength (index, _) =
  if wordsLength == index
    then ", and "
    else ", "