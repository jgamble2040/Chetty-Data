****************************
*   CHETTY DATA            *



use table_1.dta, clear


*Compare Male wage rank with parent income rank by race*
twoway (scatter kid_wage_rank_white_male par_pctile) lfit kid_wage_rank_white_male par_pctile || (scatter kid_wage_rank_black_male par_pctile) lfit kid_wage_rank_black_male par_pctile

egen b_mean_inc_rank = mean(kir_black_pooled)
egen w_mean_inc_rank = mean(kir_white_pooled)
graph bar b_mean_inc_rank w_mean_inc_rank
