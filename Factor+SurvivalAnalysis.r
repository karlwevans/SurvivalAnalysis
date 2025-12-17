# 1. Correlation
# find correlations
cor_factor_data<-cor(factor_data, use="pairwise.complete.obs")
cor_factor_data
most_impactful_factor<-"DeforestationRate"

# 2. EFA
# find number of factors from scree plot
scree(cor_factor_data, factors=FALSE)
num_factors<-2

# fit EFA model with number of factors 
EFA_model <- fa(factor_data, nfactors = num_factors)
EFA_model

# 3. Survival Analysis
survHab<-survfit(Surv(Survival_Time, Censoring_Status)~Habitat, data=survival_data)
survival_fit_df<-tidy(survHab)

# plot
#ggsurvplot(survHab, data=survival_data)
low_surv_habitat<-"Savanna"
