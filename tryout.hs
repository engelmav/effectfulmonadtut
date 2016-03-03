import Data.Set (Set,singleton)
import Control.Applicative ((<$>))

countChar :: Char -> String -> Int
countChar c = length . filter (== c)


countCharInFile :: Char -> FilePath -> IO Int
countCharInFile c f = do
  contents <- readFile f
  return (countChar c contents)

setProducingAction :: IO (Set String)
setProducingAction = return $ singleton "contrived"

main :: IO ()
main = putStrLn "Hello World!"

sendSecret :: IO ()
sendSecret = writeFile "secretfile" "Who is benjamin disrael?"

andTheAnswerIs :: IO String
andTheAnswerIs = readFile "secretfile"

returnIsEasy :: String -> IO String
returnIsEasy s = return (s ++ " is in IOoooo")


ioNoReturn :: IO String
ioNoReturn = returnIsEasy "Elvis"


