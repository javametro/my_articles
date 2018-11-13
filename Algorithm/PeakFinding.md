##Peak finding
one-dimension version

find a peak

peak finding 2D version

use divide & conque
first, find a 1D version peak,
then confirm whether it is 2D.

Atempt #2
Find global max j = m/2 at the (i, j)
compare (i, j-1), (i, j), (i, j+1)
Pick Left cols if(i, j-1) >= (i, j)
else Pick Right if (i, j+1) >= (i, j)


T(n,m) = T(n, m/2) + O(n)