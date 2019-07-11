library(seqinr)

# reading FASTA file into R

mito_seq<- read.fasta(file= "sequence.fasta")

# the created object is a list !!!

class(mito_seq)

length(mito_seq)

# playing with the sequance itself

length(mito_seq[[1]])

table(mito_seq[[1]])