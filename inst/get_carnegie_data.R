library(tidyverse)
pacman::p_load(textreadr)

# carnegie_loc <-'data/CCIHE2015-PublicDataFile.xlsx'
carnegie_loc <- 'http://carnegieclassifications.iu.edu/downloads/CCIHE2015-PublicDataFile.xlsx' %>%
    textreadr::download()


## refactored carnegie data
codes <- carnegie_loc %>%
    readxl::read_excel(sheet = 'Labels') %>%
    select(-Label) %>%
    rename(Group = Label__1) %>%
    fill(Variable, .direction = "down") %>%
    filter(!is.na(Value))

carnegie_dat <- carnegie_loc %>%
    readxl::read_excel(sheet = 'Data', col_types = 'text')

recode_vars <- unique(codes$Variable )

carnegie_dat[recode_vars] <- lapply(recode_vars, function(x){
        key <- codes %>%
            filter(Variable == x) %>%
            select(-Variable) %>%
            mutate(Value = as.character(Value))

        out <- carnegie_dat[x] %>%
            setNames('Value') %>%
            mutate(Value = as.character(Value)) %>%
            left_join(key, by = "Value") %>%
            pull(Group) %>%
            c()

        if (all(key$Group %in% c('Yes', 'No'))) {
            out <- out == 'Yes'
        }

        out

    })



carnegie <- carnegie_dat %>%
    select( UNITID:STABBR, CONTROL, ICLEVEL, BASIC2015, LOCALE, IPGRAD2015, 
        ASSOCDEG:TOTDEG, HBCU, MSI, WOMENS, MEDICAL, NACT, NSAT, NSATACT, 
        ACTCAT, ROOMS, FALLENR13, FALLENR14, UGDSFTF14:UGNTRPT14) %>%
    mutate_at(vars(ASSOCDEG:TOTDEG, NACT:NSATACT, ROOMS:UGNTRPT14), as.numeric) %>%
    mutate(ICLEVEL = factor(ICLEVEL, levels = c("Four or more years", "At least 2 but less than 4 years")))

region <- codes %>%
    filter(Variable == "OBEREG") %>% 
    select(-Variable) %>%
    rename(ID = Value) %>%
    extract(Group, c("Region", "State"), "(^.+[a-z]) (.+$)") %>%
    mutate(
        Region = gsub('Service', 'Service schools', Region),
        State = strsplit(ifelse(State == 'schools', NA, State), '\\s+')
    ) %>%
    unnest()



    
pax::new_data(carnegie)
pax::new_data(region)
    
    
    
