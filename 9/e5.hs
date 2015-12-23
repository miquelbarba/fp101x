data Tree = Leaf Integer
          | Node Tree Tree

leaves1 (Leaf x) = x
leaves1 (Node l r) = leaves1 l + leaves1 r
balanced1 (Leaf _) = True
balanced1 (Node l r) = abs (leaves1 l - leaves1 r) <= 1 || balanced1 l || balanced1 r

--leaves2 (Leaf _) = True
--leaves2 (Node l r) = leaves2 l + leaves2 r
--balanced2 (Leaf _) = True
--balanced2 (Node l r) = abs (leaves2 l - leaves2 r) <= 1

--leaves3 (Leaf _) = True
--leaves3 (Node l r) = leaves3 l + leaves3 r
--balanced3 (Leaf _) = True
--balanced3 (Node l r) = abs (leaves3 l + leaves3 r) <= 1

leaves4 (Leaf _) = 1
leaves4 (Node l r) = leaves4 l + leaves4 r
balanced4 (Leaf _) = True
balanced4 (Node l r) = abs (leaves4 l - leaves4 r) <= 1 && balanced4 l && balanced4 r
