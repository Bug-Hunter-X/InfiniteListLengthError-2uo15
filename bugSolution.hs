The solution involves avoiding the use of `length` on an infinite list.  There is no way to get the length of an infinite list. Instead, we might process the list in a way that avoids needing the total length.

If a finite length is required, the list needs to be finite.  Here's one example:

```haskell
import Prelude hiding (length)

main :: IO ()
main = do
  let finiteList = [1..10] -- Finite list of integers
  print (length finiteList) -- This will work correctly
```

Alternatively, you might process the list using functions that operate on the list lazily:

```haskell
import Prelude hiding (length)

main :: IO ()
main = do
  let infiniteList = [1..]  -- Infinite list of integers
  print (take 10 infiniteList) -- Take only the first 10 elements
```
This will print the first 10 elements of the infinite list without causing a stack overflow.