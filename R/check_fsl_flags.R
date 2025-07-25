#' check_fsl_flags
#'
#' @param .dataset the raw dataset with all add_x indicators functions called in
#' @param fsl_fcs_cereal  the name of the variable that indicates the number of days cereals were consumed
#' @param fsl_fcs_legumes  the name of the variable that indicates the number of days legumes were consumed
#' @param fsl_fcs_dairy  the name of the variable that indicates the number of days dairy were consumed
#' @param fsl_fcs_meat  the name of the variable that indicates the number of days meat were consumed
#' @param fsl_fcs_veg  the name of the variable that indicates the number of days vegetables were consumed
#' @param fsl_fcs_fruit  the name of the variable that indicates the number of days fruit were consumed
#' @param fsl_fcs_oil  the name of the variable that indicates the number of days oil was consumed
#' @param fsl_fcs_sugar  the name of the variable that indicates the number of days sugar was consumed
#' @param fsl_rcsi_lessquality Column representing question- During the last 7 days, were there days (and, if so, how many) when your household had to rely on less preferred and less expensive food to cope with a lack of food or money to buy it?
#' @param fsl_rcsi_borrow Column representing question- During the last 7 days, were there days (and, if so, how many) when your household had to borrow food or rely on help from a relative or friend to cope with a lack of food or money to buy it?
#' @param fsl_rcsi_mealsize Column representing question- During the last 7 days, were there days (and, if so, how many) when your household had to limit portion size of meals at meal times to cope with a lack of food or money to buy it?
#' @param fsl_rcsi_mealadult Column representing question- During the last 7 days, were there days (and, if so, how many) when your household had to restrict consumption by adults in order for small children to eat to cope with a lack of food or money to buy it?
#' @param fsl_rcsi_mealnb Column representing question - During the last 7 days, were there days (and, if so, how many) when your household had to reduce number of meals eaten in a day to cope with a lack of food or money to buy it?
#' @param fsl_hhs_nofoodhh The name of the column "In the past 4 weeks (30 days), was there ever no food to eat
#' of any kind in your house because of lack of resources to get food?". It has to be a string.
#' @param fsl_hhs_nofoodhh_freq The name of the column "How often did this happen in the past (4 weeks/30 days)?".
#' It has to be a string.
#' @param fsl_hhs_sleephungry The name of the column "In the past 4 weeks (30 days), did you or any household
#' member go to sleep at night hungry because there was not enough food?". It has to be a string.
#' @param fsl_hhs_sleephungry_freq The name of the column "How often did this happen in the past (4 weeks/30 days)?".
#' It has to be a string.
#' @param fsl_hhs_alldaynight The name of the column "In the past 4 weeks (30 days), did you or any household
#' member go a whole day and night without eating anything at all because there was not enough food?".
#' It has to be a string.
#' @param fsl_hhs_alldaynight_freq The name of the column "How often did this happen in the past (4 weeks/30 days)?".
#' It has to be a string.
#' @param fsl_hdds_cereals the name of the variable that indicates if cereals were consumed in the last 24 hours
#' @param fsl_hdds_tubers the name of the variable that indicates if roots or tubers were consumed in the last 24 hours
#' @param fsl_hdds_legumes the name of the variable that indicates if pulses or legumes were consumed in the last 24 hours
#' @param fsl_hdds_veg the name of the variable that indicates if vegetables were consumed in the last 24 hours
#' @param fsl_hdds_fruit the name of the variable that indicates if fruit were consumed in the last 24 hours
#' @param fsl_hdds_meat the name of the variable that indicates if meat were consumed in the last 24 hours
#' @param fsl_hdds_fish the name of the variable that indicates if fish were consumed in the last 24 hours
#' @param fsl_hdds_dairy the name of the variable that indicates if dairy were consumed in the last 24 hours
#' @param fsl_hdds_eggs the name of the variable that indicates if eggs were consumed in the last 24 hours
#' @param fsl_hdds_sugar the name of the variable that indicates if sugar were consumed in the last 24 hours
#' @param fsl_hdds_oil the name of the variable that indicates if oil was consumed in the last 24 hours
#' @param fsl_hdds_condiments the name of the variable that indicates if condiments were consumed in the last 24 hours
#' @param fsl_hdds_yes_value the "yes" choice value of the variables that indicates the HDDS
#' @param fsl_lcsi_stress1 the name of the variable that indicates the first stress LCSI strategy
#' @param fsl_lcsi_stress2 the name of the variable that indicates the second stress LCSI strategy
#' @param fsl_lcsi_stress3 the name of the variable that indicates the third stress LCSI strategy
#' @param fsl_lcsi_stress4 the name of the variable that indicates the fourth stress LCSI strategy
#' @param fsl_lcsi_crisis1 the name of the variable that indicates the first crisis LCSI strategy
#' @param fsl_lcsi_crisis2 the name of the variable that indicates the second crisis LCSI strategy
#' @param fsl_lcsi_crisis3 the name of the variable that indicates the third crisis LCSI strategy
#' @param fsl_lcsi_emergency1 the name of the variable that indicates the first emergency LCSI strategy
#' @param fsl_lcsi_emergency2 the name of the variable that indicates the second emergency LCSI strategy
#' @param fsl_lcsi_emergency3 the name of the variable that indicates the third emergency LCSI strategy
#' @param fsl_lcsi_stress the name of the variable that indicates the calculation of the stress LCSI strategy
#' @param fsl_lcsi_crisis the name of the variable that indicates the calculation of the crisis LCSI strategy
#' @param fsl_lcsi_emergency the name of the variable that indicates the calculation of the stress LCSI strategy
#' @param fsl_lcsi_cat_yes the name of the variable that indicates the highest category of the LCSI strategy used yes
#' @param fsl_lcsi_cat_exhaust the name of the variable that indicates the highest category of the LCSI strategy used exhaustively
#' @param fsl_lcsi_cat the name of the variable that indicates the highest category of the LCSI strategy
#' @param fsl_lcsi_yes_value the "yes" choice value of the variables that indicates the LCSI strategies
#' @param fsl_fcs_cat the name of the variable that indicates the food consumption score category
#' @param fsl_fcs_score the name of the variable that indicates the food consumption score
#' @param fsl_rcsi_cat the name of the variable that indicates the reduced coping strategy index category
#' @param fsl_rcsi_score the name of the variable that indicates the reduced coping strategy index score
#' @param fsl_hhs_cat the name of the variable that indicates the household hunger scale category
#' @param fsl_hhs_score the name of the variable that indicates the household hunger scale score
#' @param fsl_hdds_cat the name of the variable that indicates the household dietary diversity score category
#' @param fsl_hdds_score the name of the variable that indicates the household dietary diversity score
#' @param fsl_fc_cell the name of the variable that indicates the food consumption matrix score
#' @param fsl_fc_phase the name of the variable that indicates the food consumption matrix phase
#' @param uuid uuid variable
#'
#' @return a dataframe that includes all the logical flags related to food security and livelihoods.
#' This includes:
#' - flag_meat_cereal_ratio
#' - flag_low_cereal
#' - flag_low_fcs
#' - flag_high_fcs
#' - flag_low_oil
#' - flag_sd_foodgroup
#' - flag_protein_rcsi
#' - flag_fcs_rcsi
#' - flag_high_rcsi
#' - flag_rcsi_children
#' - flag_fcsrcsi_box
#' - flag_sd_rcsicoping
#' - flag_severe_hhs
#' - flag_lcsi_coherence
#' - flag_lcsi_severity
#' - flag_lcsi_na
#' - flag_fc_cell
#' - flag_low_sugar_cond_hdds
#' @export
#'
#' @examples
#' tool.survey <- impactR4PHU_survey_template
#' df <- data.frame(
#'   fsl_fcs_cereal = c(1, 4),
#'   fsl_fcs_legumes = c(3, 3),
#'   fsl_fcs_dairy = c(1, 6),
#'   fsl_fcs_meat = c(2, 3),
#'   fsl_fcs_veg = c(5, 4),
#'   fsl_fcs_fruit = c(1, 4),
#'   fsl_fcs_oil = c(1, 4),
#'   fsl_fcs_sugar = c(6, 2),
#'   fsl_rcsi_lessquality = c(2,4),
#'   fsl_rcsi_borrow = c(1,4),
#'   fsl_rcsi_mealsize = c(4,5),
#'   fsl_rcsi_mealadult = c(2,4),
#'   fsl_rcsi_mealnb = c(3,2),
#'   fsl_hhs_nofoodhh = c("yes","no"),
#'   fsl_hhs_nofoodhh_freq = c("rarely", NA),
#'   fsl_hhs_sleephungry= c("no","no"),
#'   fsl_hhs_sleephungry_freq = c(NA, NA),
#'   fsl_hhs_alldaynight= c("no","yes"),
#'   fsl_hhs_alldaynight_freq = c(NA, "often"),
#'   fsl_hdds_cereals = c("yes","no"),
#'   fsl_hdds_tubers = c("yes","no"),
#'   fsl_hdds_legumes = c("yes","no"),
#'   fsl_hdds_veg = c("no","no"),
#'   fsl_hdds_fruit = c("yes","no"),
#'   fsl_hdds_meat = c("yes","no"),
#'   fsl_hdds_fish = c("yes","no"),
#'   fsl_hdds_dairy = c("no","no"),
#'   fsl_hdds_eggs = c("yes","no"),
#'   fsl_hdds_sugar = c("yes","no"),
#'   fsl_hdds_oil = c("yes","no"),
#'   fsl_hdds_condiments = c("yes","no"),
#'   fsl_lcsi_stress1 = c("not_applicable","yes"),
#'   fsl_lcsi_stress2 = c("no_had_no_need","not_applicable"),
#'   fsl_lcsi_stress3 = c("not_applicable","yes"),
#'   fsl_lcsi_stress4 = c("no_exhausted","yes"),
#'   fsl_lcsi_crisis1 = c("no_exhausted","yes"),
#'   fsl_lcsi_crisis2 = c("no_had_no_need","yes"),
#'   fsl_lcsi_crisis3 = c("no_had_no_need","yes"),
#'   fsl_lcsi_emergency1 = c("no_had_no_need","yes"),
#'   fsl_lcsi_emergency2 = c("not_applicable","no_exhausted"),
#'   fsl_lcsi_emergency3 = c("not_applicable","yes"),
#'   fsl_lcsi_stress = c(1, 1),
#'   fsl_lcsi_crisis = c(1, 1),
#'   fsl_lcsi_emergency = c(0, 1),
#'   fsl_lcsi_cat_yes = c("None","Emergency"),
#'   fsl_lcsi_cat_exhaust = c("Crisis","Emergency"),
#'   fsl_lcsi_cat = c("Crisis","Emergency"),
#'   fsl_fcs_cat = c("Borderline","Acceptable"),
#'   fsl_fcs_score = c(32.5,64.0),
#'   fsl_rcsi_cat= c("Medium","High"),
#'   fsl_rcsi_score= c(17,31),
#'   fsl_hhs_cat= c("No or Little","Moderate"),
#'   fsl_hhs_score= c(1,2),
#'   fsl_hdds_cat= c("High","Low"),
#'   fsl_hdds_score= c(10,0),
#'   fsl_fc_cell= c(22,33),
#'   fsl_fc_phase= c("Phase 2 FC","Phase 3 FC"),
#'   enumerator = c("team1","team2"),
#'   uuid= c("31d0cfb8-21d7-414b4f-94999f-04a15ce39d78","205d37b1-5a6f-44484d-b3b1ba-4eafbdc50873")
#'   )
#'
#' check_fsl_flags(.dataset = df, tool.survey = tool.survey)

check_fsl_flags <- function(.dataset,
                           fsl_fcs_cereal = "fsl_fcs_cereal",
                           fsl_fcs_legumes = "fsl_fcs_legumes",
                           fsl_fcs_dairy = "fsl_fcs_dairy",
                           fsl_fcs_meat = "fsl_fcs_meat",
                           fsl_fcs_veg = "fsl_fcs_veg",
                           fsl_fcs_fruit = "fsl_fcs_fruit",
                           fsl_fcs_oil = "fsl_fcs_oil",
                           fsl_fcs_sugar = "fsl_fcs_sugar",
                           fsl_rcsi_lessquality = "fsl_rcsi_lessquality",
                           fsl_rcsi_borrow = "fsl_rcsi_borrow",
                           fsl_rcsi_mealsize = "fsl_rcsi_mealsize",
                           fsl_rcsi_mealadult = "fsl_rcsi_mealadult",
                           fsl_rcsi_mealnb = "fsl_rcsi_mealnb",
                           fsl_hhs_nofoodhh = "fsl_hhs_nofoodhh",
                           fsl_hhs_nofoodhh_freq = "fsl_hhs_nofoodhh_freq",
                           fsl_hhs_sleephungry = "fsl_hhs_sleephungry",
                           fsl_hhs_sleephungry_freq = "fsl_hhs_sleephungry_freq",
                           fsl_hhs_alldaynight = "fsl_hhs_alldaynight",
                           fsl_hhs_alldaynight_freq = "fsl_hhs_alldaynight_freq",
                           fsl_hdds_cereals = "fsl_hdds_cereals",
                           fsl_hdds_tubers = "fsl_hdds_tubers",
                           fsl_hdds_legumes = "fsl_hdds_legumes",
                           fsl_hdds_veg = "fsl_hdds_veg",
                           fsl_hdds_fruit = "fsl_hdds_fruit",
                           fsl_hdds_meat = "fsl_hdds_meat",
                           fsl_hdds_fish = "fsl_hdds_fish",
                           fsl_hdds_dairy = "fsl_hdds_dairy",
                           fsl_hdds_eggs = "fsl_hdds_eggs",
                           fsl_hdds_sugar = "fsl_hdds_sugar",
                           fsl_hdds_oil = "fsl_hdds_oil",
                           fsl_hdds_condiments = "fsl_hdds_condiments",
                           fsl_hdds_yes_value = "yes",
                           fsl_lcsi_stress1 = "fsl_lcsi_stress1",
                           fsl_lcsi_stress2 = "fsl_lcsi_stress2",
                           fsl_lcsi_stress3 = "fsl_lcsi_stress3",
                           fsl_lcsi_stress4 = "fsl_lcsi_stress4",
                           fsl_lcsi_crisis1 = "fsl_lcsi_crisis1",
                           fsl_lcsi_crisis2 = "fsl_lcsi_crisis2",
                           fsl_lcsi_crisis3 = "fsl_lcsi_crisis3",
                           fsl_lcsi_emergency1 = "fsl_lcsi_emergency1",
                           fsl_lcsi_emergency2 = "fsl_lcsi_emergency2",
                           fsl_lcsi_emergency3 = "fsl_lcsi_emergency3",
                           fsl_lcsi_stress = "fsl_lcsi_stress",
                           fsl_lcsi_crisis = "fsl_lcsi_crisis",
                           fsl_lcsi_emergency = "fsl_lcsi_emergency",
                           fsl_lcsi_cat_yes = "fsl_lcsi_cat_yes",
                           fsl_lcsi_cat_exhaust = "fsl_lcsi_cat_exhaust",
                           fsl_lcsi_cat = "fsl_lcsi_cat",
                           fsl_lcsi_yes_value = "yes",
                           fsl_fcs_cat ="fsl_fcs_cat",
                           fsl_fcs_score = "fsl_fcs_score",
                           fsl_rcsi_cat = "fsl_rcsi_cat",
                           fsl_rcsi_score = "fsl_rcsi_score",
                           fsl_hhs_cat = "fsl_hhs_cat",
                           fsl_hhs_score = "fsl_hhs_score",
                           fsl_hdds_cat = "fsl_hdds_cat",
                           fsl_hdds_score = "fsl_hdds_score",
                           fsl_fc_cell = "fsl_fc_cell",
                           fsl_fc_phase = "fsl_fc_phase",
                           uuid = "uuid") {

  options(warn = -1)
  ## Throw an error if a dataset wasn't provided as a first argument
  if (!is.data.frame(.dataset)) {
    stop("First argument should be a dataset")
  }

  ## Throw an error if the dataset is empty
  if (nrow(.dataset) == 0) {
    stop("Dataset is empty")
  }

  if (!uuid %in% names(.dataset)) stop("uuid argument incorrect, or not available in the dataset")

  # combine all fcs_columns together
  fcs_flag_columns <- c(fsl_fcs_cereal,fsl_fcs_legumes,fsl_fcs_dairy,fsl_fcs_meat,
                        fsl_fcs_veg,fsl_fcs_fruit,fsl_fcs_oil,fsl_fcs_sugar,fsl_fcs_score)


  if(length(setdiff(length(fcs_flag_columns),9)) != 0) {
    warning("Missing fcs columns")
  } else{
    ## flag issues in data with FCS
    .dataset <- .dataset %>%
      dplyr::mutate_at(dplyr::vars(fcs_flag_columns),as.numeric)%>%
      dplyr::mutate(flag_meat_cereal_ratio = ifelse(is.na(!!rlang::sym(fsl_fcs_cereal)), NA, ifelse(!!rlang::sym(fsl_fcs_cereal) < !!rlang::sym(fsl_fcs_meat), 1, 0)),
                    flag_low_cereal = ifelse(is.na(!!rlang::sym(fsl_fcs_cereal)), NA, ifelse(!!rlang::sym(fsl_fcs_cereal) < 4, 1, 0)),
                    flag_low_fcs = ifelse(is.na(!!rlang::sym(fsl_fcs_score)),NA, ifelse(!!rlang::sym(fsl_fcs_score)<=14,1,0)),
                    flag_high_fcs = ifelse(is.na(!!rlang::sym(fsl_fcs_score)),NA, ifelse(!!rlang::sym(fsl_fcs_score)>=100,1,0)),
                    flag_full_fcs = ifelse(is.na(!!rlang::sym(fsl_fcs_score)),NA, ifelse(!!rlang::sym(fsl_fcs_score) == 112,1,0)),
                    flag_fcs_zero = ifelse(is.na(!!rlang::sym(fsl_fcs_score)),NA, ifelse(!!rlang::sym(fsl_fcs_score) == 0,1,0)),
                    flag_low_oil = ifelse(is.na(!!rlang::sym(fsl_fcs_cereal)), NA, ifelse(!!rlang::sym(fsl_fcs_oil) < 3, 1, 0)),
                    flag_high_protein = ifelse(is.na(!!rlang::sym(fsl_fcs_cereal)), NA, ifelse(!!rlang::sym(fsl_fcs_meat) >= 5 | !!rlang::sym(fsl_fcs_dairy) >= 5 , 1, 0))) %>%
      dplyr::rowwise() %>%
      dplyr::mutate(sd_foods = stats::sd(c(!!rlang::sym(fsl_fcs_cereal), !!rlang::sym(fsl_fcs_legumes), !!rlang::sym(fsl_fcs_dairy),
                                    !!rlang::sym(fsl_fcs_meat), !!rlang::sym(fsl_fcs_veg), !!rlang::sym(fsl_fcs_fruit),
                                    !!rlang::sym(fsl_fcs_oil), !!rlang::sym(fsl_fcs_sugar)), na.rm = TRUE),
                    flag_sd_foodgroup = dplyr::case_when(is.na(sd_foods) ~ NA,
                                                         sd_foods < 0.8 ~ 1,
                                                         TRUE ~ 0)) %>%
      dplyr::ungroup()
  }
  ## flag issues in data with rCSI

  rcsi_flag_columns <- c(fsl_rcsi_lessquality,fsl_rcsi_borrow,fsl_rcsi_mealsize,
                         fsl_rcsi_mealadult,fsl_rcsi_mealnb,fsl_rcsi_score)

  required_columns <- c(rcsi_flag_columns,fsl_fcs_cereal,fsl_fcs_dairy,
                        fsl_fcs_meat,fsl_fcs_score)

  if(length(setdiff(length(required_columns),10)) != 0) {
    warning("Missing rcsi or fsl_fcs_cereal/fsl_fcs_dairy/fsl_fcs_meat/fsl_fcs_score columns")
  } else {
    .dataset <- .dataset %>%
      dplyr::mutate_at(dplyr::vars(rcsi_flag_columns),as.numeric)%>%
      dplyr::mutate(flag_protein_rcsi = ifelse(is.na(!!rlang::sym(fsl_rcsi_score)), NA,
                                               ifelse(is.na(!!rlang::sym(fsl_fcs_cereal)), NA,
                                                      ifelse(!!rlang::sym(fsl_rcsi_score) >= 19 &
                                                               ( !!rlang::sym(fsl_fcs_dairy) >= 5 |
                                                                   !!rlang::sym(fsl_fcs_meat) >= 5), 1, 0 ))),
                    flag_fcs_rcsi = ifelse(is.na(!!rlang::sym(fsl_rcsi_score)), NA,
                                           ifelse(is.na(!!rlang::sym(fsl_fcs_score)), NA,
                                                  ifelse(!!rlang::sym(fsl_fcs_score) < 35 &
                                                           !!rlang::sym(fsl_rcsi_score) <= 3, 1, 0 ))),
                    flag_high_rcsi = ifelse(is.na(!!rlang::sym(fsl_rcsi_score)), NA,
                                            ifelse(!!rlang::sym(fsl_rcsi_score) >= 42, 1, 0)))

    .dataset <- .dataset %>%
      dplyr::mutate(flag_fcsrcsi_box = dplyr::case_when(is.na(!!rlang::sym(fsl_rcsi_score)) |
                                                          is.na(!!rlang::sym(fsl_fcs_score)) ~ NA,
                                                        as.numeric(!!rlang::sym(fsl_rcsi_score)) > 18 &
                                                          as.numeric(!!rlang::sym(fsl_fcs_score)) > 56 ~ 1,
                                                        TRUE ~ 0)) %>%
      dplyr::rowwise() %>%
      dplyr::mutate(sd_rcsicoping = stats::sd(c(!!rlang::sym(fsl_rcsi_lessquality), !!rlang::sym(fsl_rcsi_borrow), !!rlang::sym(fsl_rcsi_mealsize),
                                         !!rlang::sym(fsl_rcsi_mealadult), !!rlang::sym(fsl_rcsi_mealnb)), na.rm = TRUE)) %>%
      dplyr::ungroup() %>%
      dplyr::mutate(flag_sd_rcsicoping = dplyr::case_when(is.na(sd_rcsicoping) |
                                                            is.na(!!rlang::sym(fsl_rcsi_score)) ~ NA,
                                                          sd_rcsicoping < 0.8 &
                                                            !!rlang::sym(fsl_rcsi_score) < 4 ~ 1,
                                                          TRUE ~ 0))
  }

  ## flag issue in data with HHS
  hhs_flag_columns <- c(fsl_hhs_nofoodhh,fsl_hhs_nofoodhh_freq,fsl_hhs_sleephungry,
                        fsl_hhs_sleephungry_freq,fsl_hhs_alldaynight,fsl_hhs_alldaynight_freq,fsl_hhs_score,fsl_hhs_cat)


  if(length(setdiff(length(hhs_flag_columns),8)) != 0) {
    warning("Missing hhs columns")
  } else {
    .dataset <- .dataset %>%
      dplyr::mutate(flag_severe_hhs = ifelse(is.na(!!rlang::sym(fsl_hhs_score)), NA,
                                             ifelse(!!rlang::sym(fsl_hhs_score) >= 5, 1, 0)))
  }
  ## flag issues with LCSI
  lcs_flag_columns <- c(fsl_lcsi_stress1,fsl_lcsi_stress2,fsl_lcsi_stress3,fsl_lcsi_stress4,fsl_lcsi_crisis1,fsl_lcsi_crisis2,
                        fsl_lcsi_crisis3,fsl_lcsi_emergency1,fsl_lcsi_emergency2,fsl_lcsi_emergency3,fsl_lcsi_stress,
                        fsl_lcsi_crisis,fsl_lcsi_emergency,fsl_lcsi_cat_yes,fsl_lcsi_cat_exhaust,fsl_lcsi_cat)

  if(length(setdiff(length(lcs_flag_columns),16)) != 0) {
    warning("Missing lcsi columns")
  } else {
    .dataset <- .dataset %>%
      dplyr::mutate(flag_lcsi_coherence = ifelse(is.na(!!rlang::sym(fsl_lcsi_emergency)), NA,
                                                 ifelse(!!rlang::sym(fsl_lcsi_emergency) == 1 & !!rlang::sym(fsl_lcsi_stress) == 0 |
                                                          !!rlang::sym(fsl_lcsi_emergency) == 1 & !!rlang::sym(fsl_lcsi_crisis) == 0 |
                                                          !!rlang::sym(fsl_lcsi_crisis) == 1 & !!rlang::sym(fsl_lcsi_stress) == 0, 1, 0)),
                    flag_lcsi_severity = dplyr::case_when(is.na(!!rlang::sym(fsl_lcsi_emergency)) ~ NA,
                                                          !!rlang::sym(fsl_lcsi_emergency) == 1 ~ 1,
                                                          TRUE ~ 0))

    lcs_variables <- c(fsl_lcsi_stress1,fsl_lcsi_stress2,fsl_lcsi_stress3,fsl_lcsi_stress4,fsl_lcsi_crisis1,
                       fsl_lcsi_crisis2,fsl_lcsi_crisis3,fsl_lcsi_emergency1,fsl_lcsi_emergency2,fsl_lcsi_emergency3)
    .dataset$lcsi.count.na <-  apply(.dataset[c(lcs_variables)], 1, function(x) sum(x == "not_applicable"))

    .dataset <- .dataset %>%
      dplyr::mutate(flag_lcsi_na = dplyr::case_when(is.na(lcsi.count.na) ~ NA,
                                                    lcsi.count.na >= 4 ~ 1,
                                                    TRUE ~ 0))


  }

  fc_phase_col <- c(fsl_fc_cell,fsl_fc_phase)

  if(length(setdiff(length(fc_phase_col),2)) != 0) {
    warning("Missing fc_cell and fc_phase columns")
  } else {
    ## flag phase
    .dataset <- .dataset %>%
      dplyr::mutate(flag_fc_cell = ifelse(is.na(!!rlang::sym(fsl_fc_cell)), NA,
                                          ifelse(!!rlang::sym(fsl_fc_cell) %in% c(3,4,5,8,9,10), 1, 0)))
  }
  ## flag hhds
  hdds_flag_columns <- c(fsl_hdds_cereals,fsl_hdds_tubers,fsl_hdds_legumes,fsl_hdds_veg,fsl_hdds_fruit,
                         fsl_hdds_meat,fsl_hdds_fish,fsl_hdds_dairy,fsl_hdds_eggs,fsl_hdds_sugar,
                         fsl_hdds_oil,fsl_hdds_condiments,fsl_hdds_cat,fsl_hdds_score)


  if(length(setdiff(length(hdds_flag_columns),14)) != 0) {
    warning("Missing hdds columns")
  } else{
    .dataset <- .dataset %>%
      dplyr::mutate(flag_low_hdds = ifelse(is.na(!!rlang::sym(fsl_hdds_score)), NA, ifelse(!!rlang::sym(fsl_hdds_score) == 0, 1, 0)),
                    flag_high_hdds = ifelse(is.na(!!rlang::sym(fsl_hdds_score)), NA, ifelse(!!rlang::sym(fsl_hdds_score) == 12, 1, 0)))
  }

  # flag hdds and fcs cols

  fcs_hdds_flag_columns <- c(fsl_hdds_cereals,fsl_hdds_tubers,fsl_hdds_legumes,fsl_hdds_veg,fsl_hdds_fruit,
                         fsl_hdds_meat,fsl_hdds_fish,fsl_hdds_dairy,fsl_hdds_eggs,fsl_hdds_sugar,
                         fsl_hdds_oil,fsl_hdds_condiments,fsl_hdds_cat,fsl_hdds_score,

                         fsl_fcs_cereal,fsl_fcs_legumes,fsl_fcs_dairy,fsl_fcs_meat,
                         fsl_fcs_veg,fsl_fcs_fruit,fsl_fcs_oil,fsl_fcs_sugar,fsl_fcs_score)

  if(length(setdiff(length(fcs_hdds_flag_columns),14)) != 0) {
    warning("Missing fcs and hdds columns for combined checks")
  } else{

    .dataset <- .dataset %>%
      dplyr::mutate(chk_fcs_hdds_cereal1 = ifelse(is.na(!!rlang::sym(fsl_fcs_cereal)) | is.na(!!rlang::sym(fsl_hdds_cereals)), NA, ifelse(!!rlang::sym(fsl_fcs_cereal) == 7 & !!rlang::sym(fsl_hdds_cereals) != fsl_hdds_yes_value , 1, 0)),
                    chk_fcs_hdds_cereal2 = ifelse(is.na(!!rlang::sym(fsl_fcs_cereal)) | is.na(!!rlang::sym(fsl_hdds_cereals)), NA, ifelse(!!rlang::sym(fsl_fcs_cereal) == 0 & !!rlang::sym(fsl_hdds_cereals) == fsl_hdds_yes_value , 1, 0)),

                    chk_fcs_hdds_legumes1 = ifelse(is.na(!!rlang::sym(fsl_fcs_legumes)) | is.na(!!rlang::sym(fsl_hdds_legumes)), NA, ifelse(!!rlang::sym(fsl_fcs_legumes) == 7 & !!rlang::sym(fsl_hdds_legumes) != fsl_hdds_yes_value , 1, 0)),
                    chk_fcs_hdds_legumes2 = ifelse(is.na(!!rlang::sym(fsl_fcs_legumes)) | is.na(!!rlang::sym(fsl_hdds_legumes)), NA, ifelse(!!rlang::sym(fsl_fcs_legumes) == 0 & !!rlang::sym(fsl_hdds_legumes) == fsl_hdds_yes_value , 1, 0)),

                    chk_fcs_hdds_dairy1 = ifelse(is.na(!!rlang::sym(fsl_fcs_dairy)) | is.na(!!rlang::sym(fsl_hdds_dairy)), NA, ifelse(!!rlang::sym(fsl_fcs_dairy) == 7 & !!rlang::sym(fsl_hdds_dairy) != fsl_hdds_yes_value , 1, 0)),
                    chk_fcs_hdds_dairy2 = ifelse(is.na(!!rlang::sym(fsl_fcs_dairy)) | is.na(!!rlang::sym(fsl_hdds_dairy)), NA, ifelse(!!rlang::sym(fsl_fcs_dairy) == 0 & !!rlang::sym(fsl_hdds_dairy) == fsl_hdds_yes_value , 1, 0)),

                    chk_fcs_hdds_meat1 = ifelse(is.na(!!rlang::sym(fsl_fcs_meat)) | is.na(!!rlang::sym(fsl_hdds_meat)), NA, ifelse(!!rlang::sym(fsl_fcs_meat) == 7 & !!rlang::sym(fsl_hdds_meat) != fsl_hdds_yes_value , 1, 0)),
                    chk_fcs_hdds_meat2 = ifelse(is.na(!!rlang::sym(fsl_fcs_meat)) | is.na(!!rlang::sym(fsl_hdds_meat)), NA, ifelse(!!rlang::sym(fsl_fcs_meat) == 0 & !!rlang::sym(fsl_hdds_meat) == fsl_hdds_yes_value , 1, 0)),

                    chk_fcs_hdds_veg1 = ifelse(is.na(!!rlang::sym(fsl_fcs_veg)) | is.na(!!rlang::sym(fsl_hdds_veg)), NA, ifelse(!!rlang::sym(fsl_fcs_veg) == 7 & !!rlang::sym(fsl_hdds_veg) != fsl_hdds_yes_value , 1, 0)),
                    chk_fcs_hdds_veg2 = ifelse(is.na(!!rlang::sym(fsl_fcs_veg)) | is.na(!!rlang::sym(fsl_hdds_veg)), NA, ifelse(!!rlang::sym(fsl_fcs_veg) == 0 & !!rlang::sym(fsl_hdds_veg) == fsl_hdds_yes_value , 1, 0)),

                    chk_fcs_hdds_fruit1 = ifelse(is.na(!!rlang::sym(fsl_fcs_fruit)) | is.na(!!rlang::sym(fsl_hdds_fruit)), NA, ifelse(!!rlang::sym(fsl_fcs_fruit) == 7 & !!rlang::sym(fsl_hdds_fruit) != fsl_hdds_yes_value , 1, 0)),
                    chk_fcs_hdds_fruit2 = ifelse(is.na(!!rlang::sym(fsl_fcs_fruit)) | is.na(!!rlang::sym(fsl_hdds_fruit)), NA, ifelse(!!rlang::sym(fsl_fcs_fruit) == 0 & !!rlang::sym(fsl_hdds_fruit) == fsl_hdds_yes_value , 1, 0)),

                   ) %>%
      dplyr::rowwise() %>%
      dplyr::mutate(sum_fcs_hdds_chks1 = sum(chk_fcs_hdds_cereal1,chk_fcs_hdds_legumes1,chk_fcs_hdds_dairy1,chk_fcs_hdds_meat1,chk_fcs_hdds_veg1,chk_fcs_hdds_fruit1, na.rm = T),
                    sum_fcs_hdds_chks2 = sum(chk_fcs_hdds_cereal2,chk_fcs_hdds_legumes2,chk_fcs_hdds_dairy2,chk_fcs_hdds_meat2,chk_fcs_hdds_veg2,chk_fcs_hdds_fruit2, na.rm = T)) %>%
      dplyr::ungroup() %>%
      dplyr::mutate(flag_hdds_fcs_1 = ifelse(sum_fcs_hdds_chks1 > 0, 1, 0),
                    flag_hdds_fcs_2 = ifelse(sum_fcs_hdds_chks2 > 0, 1, 0)
      )

  }

  options(warn = 0)
  return(.dataset)
}
