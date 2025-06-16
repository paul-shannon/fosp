library(jsonlite)
f <- "observations-575770.csv"
f <- "observations-575775.csv"
tbl.raw <- read.csv(f, sep=",", header=TRUE, nrow=-1, row.names=1, quote = "\"")
dim(tbl.raw)
coi <- c("observed_on",
         "user_login",
         "quality_grade",
         "image_url",
         "tag_list",
         "description",
         "num_identification_agreements",
         "latitude",
         "longitude")
tbl <- tbl.raw[, coi]
coi2 <- c("date", "user", "quality", "url", "tags", "description", "agree", "lat", "lon")
colnames(tbl) <- coi2
coi3 <- c("lat", "lon", "user", "date", "url", "description")
tbl <- tbl[, coi3]
dim(tbl)# 175 9
jsonText = toJSON(tbl, na="string", digits=6)
f.out <- "fernReports.json"
writeLines(jsonText, con=f.out)
printf("wrote %d lines to %s", nrow(tbl), f.out)


as.data.frame(sort(table(tbl$user), decreasing=TRUE))
sort(tbl$observed_on)
 # 1                    jakepool_natureboy   45
 # 2                 jake_and_kristin_pool   17
 # 3                         breannaspence   12
 # 4                            hillsbflat   11
 # 5                               ayahnke    9
 # 6                                 tsuga    7
 # 7                             benkalina    6
 # 8                   evergreen7thscience    5
 # 9                               shallon    5
 # 10                             ajwright    4
 # 11                        nobodynursery    4
 # 12           pacifictemperaterainforest    4
 # 13                                dhowe    3
 # 14                              morchar    3
 # 15                                n5jrn    3
 # 16                         paul-shannon    3
 # 17                             dfpetrin    2
 # 18                             lmgeorge    2


length(unique(tbl$user_login))# 47
