mon_chi2 <- function(x, y) {
  tbl <- df %>% select(x, y) %>% table()
  chisq_pval <- round(chisq.test(tbl)$p.value, 4)
  cramV <- round(cramersV(tbl), 2)
  data.frame(x, y, chisq_pval, cramV)
}
