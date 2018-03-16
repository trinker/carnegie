#' Select Variables from Carnegie Data Set
#'
#' A dataset containing Carnegie classification for institutions.
#'
#' @details
#' \itemize{
#'   \item UNITID. A unique identifier
#'   \item NAME. The name of the institution
#'   \item CITY. The city of the institution
#'   \item STABBR. State abbreviation for the institution
#'   \item CONTROL. Control type (e.g., public, private)
#'   \item ICLEVEL. Level of institution (number of years)
#'   \item BASIC2015. Basic classification levels
#'   \item LOCALE. Location (e.g., City Large, Rural Distant)
#'   \item IPGRAD2015. Graduate institution classification (e.g., Research Doctoral: STEM-dominant)
#'   \item ASSOCDEG. Count of associate's degrees
#'   \item BACCDEG. Count of bachelor's degrees
#'   \item MASTDEG. Count of master's degrees
#'   \item DOCRSDEG. Count of doctoral degrees - research/scholarship
#'   \item DOCPPDEG. Count of doctoral degrees - professional practice
#'   \item DOCOTHDEG. Count of doctoral degrees - other
#'   \item TOTDEG. Total degrees conferred
#'   \item HBCU. Historically black college or university flag
#'   \item MSI. Minority serving institution flag
#'   \item WOMENS. Women's college flag
#'   \item MEDICAL. Institution grants a medical degree flag
#'   \item NACT. Number of first-time entering students who submitted ACT score
#'   \item NSAT. Number of first-time entering students who submitted SAT score
#'   \item NSATACT. Combined number of students submitting SAT or ACT scores
#'   \item ACTCAT. Final ACT category (1=inclusive; 2=selective; 3=more selective)
#'   \item ROOMS. Total dormitory capacity (campus owned-, operated, or affiliated-housing)
#'   \item FALLENR13. Total Fall 2013 enrollment
#'   \item FALLENR14. Total Fall 2014 enrollment
#'   \item UGDSFTF14. Undergraduate degree-seeking full-time enrollment, fall 2014
#'   \item UGDSPTF14. Undergraduate degree-seeking part-time enrollment, fall 2014
#'   \item UGNDFT14. Undergraduate non-degree full-time students, fall 2014
#'   \item UGNDPT14. Undergraduate non-degree part-time students, fall 2014
#'   \item GRFTF14. Graduate full-time enrollment, fall 2014
#'   \item GRPTF14. Graduate part-time enrollment, fall 2014
#'   \item UGN1STTMFT14. Undergraduate new first-time full-time students
#'   \item UGN1STTMPT14. Undergraduate degree-seeking part-time enrollment
#'   \item UGNTRFT14. Undergraduate new transfer-in full-time students
#'   \item UGNTRPT14. Undergraduate new transfer-in part-time students
#' }
#'
#' @docType data
#' @keywords datasets
#' @name carnegie
#' @usage data(carnegie)
#' @format A data frame with 4,665 rows and 37 variables
#' @references \url{http://carnegieclassifications.iu.edu}
NULL


#' A Lookup Table of State Abbreviations and Regions
#'
#' A dataset containing Carnegie region classifications and corresponding states.
#'
#' @details
#' \itemize{
#'   \item ID. An identifier for the region + state
#'   \item Region. A region of states
#'   \item State. A state abbreviation
#' }
#'
#' @docType data
#' @keywords datasets
#' @name region
#' @usage data(region)
#' @format A data frame with 60 rows and 3 variables
#' @references \url{http://carnegieclassifications.iu.edu}
NULL
