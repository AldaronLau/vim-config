syn match   muonComment "^#.*$"
syn match   muonField   "^.*: "
syn match   muonSchema  "^:::$"
hi def link muonComment Comment
hi def link muonField   Define
hi def link muonSchema  Function
