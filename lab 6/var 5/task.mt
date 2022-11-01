00, ,<,tobegin1

tobegin1,0,<,tobegin1 #перевожу указатель в начало строки первый раз
tobegin1,1,<,tobegin1
tobegin1,k,<,tobegin1
tobegin1, ,>,chek1

chek1,0,k,even0 #запоминаем число на нечетной позиции
chek1,1,k,even1
chek1,k,>,chek1

even0,0,>,even0
even0,1,>,even0
even0,k,>,even0
even0, ,>,inseven0 #insert even0

even1,0,>,even1
even1,1,>,even1
even1,k,>,even1
even1, ,>,inseven1 #insert even1

inseven0,0,>,inseven0
inseven0,1,>,inseven0
inseven0,k,>,pasteven0
inseven0, ,k,inseven0

inseven1,0,>,inseven1
inseven1,1,>,inseven1
inseven1,k,>,pasteven1
inseven1, ,k,inseven1

pasteven0, ,0,toend #вставили 0 и переходим к концу первоначального слова

pasteven1, ,1,toend #вставили 1 и переходим к концу первоначального слова

toend,0,<,toend
toend,1,<,toend
toend,k,<,toend
toend, ,=,01

01, ,<,tobegink

tobegink,0,<,tobegink
tobegink,1,<,tobegink
tobegink,k,>,pr #пропускаем один элемент

pr,0,>,chek
pr,1,>,chek
pr, ,<,tok

chek,0,k,even00 #запоминаем число на нечетной позиции
chek,1,k,even11
chek,k,>,chek
chek, ,<,tok #перемещаемся до первого k

even00,0,>,even00
even00,1,>,even00
even00,k,>,even00
even00, ,>,inseven00 #insert even00

even11,0,>,even11
even11,1,>,even11
even11,k,>,even11
even11, ,>,inseven11 #insert even11

inseven00,0,>,inseven00
inseven00,1,>,inseven00
inseven00,k,>,inseven00
inseven00, ,k,per00

inseven11,0,>,inseven11
inseven11,1,>,inseven11
inseven11,k,>,inseven11
inseven11, ,k,per11

per00,k,>,pasteven00

per11,k,>,pasteven11

pasteven00, ,0,toend #вставили 0 и переходим к концу первоначального слова

pasteven11, ,1,toend #вставили 1 и переходим к концу первоначального слова

tok,0,<,tok
tok,1,<,tok
tok,k,<,tok
tok, ,>,unchek

unchek,0,k,uneven0
unchek,1,k,uneven1
unchek,k,>,unchek
unchek, ,<,st

st,k,<,st
st, ,>,delst


delst,0,=,delk
delst,1,=,delk
delst,k, ,delst
delst, ,>,delst

delk,0,>,delk
delk,1,>,delk
delk,k,>,del
delk, ,<,endr

del,0, ,del0
del,1, ,del1

del0, ,<,del0
del0,k,0,endr

del1, ,<,del1
del1,k,1,endr

endr,0,>,end
endr,1,>,end

end, ,#,end

uneven0,0,>,uneven0
uneven0,1,>,uneven0
uneven0,k,>,uneven0
uneven0, ,>,insuneven0

uneven1,0,>,uneven1
uneven1,1,>,uneven1
uneven1,k,>,uneven1
uneven1, ,>,insuneven1

insuneven0,0,>,insuneven0
insuneven0,1,>,insuneven0
insuneven0,k,=,unper0

insuneven1,0,>,insuneven1
insuneven1,1,>,insuneven1
insuneven1,k,=,unper1

unper0,k,0,untoend

unper1,k,1,untoend

untoend,0,<,untoend
untoend,1,<,untoend
untoend,k,<,untoend
untoend, ,=,02

02, ,<,tok

