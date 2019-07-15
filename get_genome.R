# show available databases on NCBI database

listNCBIDatabases(db="all")

#show available humane genome databas

listNCBIDatabases(db="human_genomic")

# get information about the human genome

what_available<-is.genome.available(db = "genbank",
                    organism = "Homo sapiens", details = T)




# download the genome of Homo sapiens from refseq
# and store the corresponding genome file in '_ncbi_downloads/genomes'
HS.genome.refseq <- getGenome( db = "refseq",
                               organism = "Homo sapiens",
                               path = file.path("genomes") )


# import downloaded genome as Biostrings object
Human_Genome <- read_genome(file = HS.genome.refseq,
                            obj.type = "Biostrings")