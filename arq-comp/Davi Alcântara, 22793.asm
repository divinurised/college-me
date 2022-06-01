;Davi Luiz de Alcântara, 22793

INP 
STA 30

OUT

LDA 31
ADD odd
STA 31

LDA 30

loop STA 30

LDA 31
ADD increment
STA 31

LDA count
ADD one
STA count 

LDA 30
SUB 31

BRP loop
end LDA 

LDA count
OUT 

LDA 30
OUT

increment DAT 2
odd DAT -1
count DAT -1 
one DAT 1
