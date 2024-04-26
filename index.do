<<dd_version: 2>>     
<<dd_include: header.txt>>

# Homeork 4

### Xiyao Zou

**Methods:** 
First, we initialized their dataset with 30 observations. Then, we created an `age` variable following normal distribution with a mean of 57 years and a standard deviation of 15. Alternatively, we simulated a t-distribution. We plotted a histogram of the `age` variables from both normal distribution and t-distribution to check the patterns.

```
<<dd_do>>
cls
clear
set seed 123123
set obs 30
gen age=(rnormal()*15)+57 
gen age_t=(rt(_N)*15)+57
hist age, ///
   fcolor(orange%40) /// simulated normal 
   addplot(hist age_t, fcolor(midblue%50)) /// simulated t-distribution 
   normal /// theoretical normal
   legend(on ///
      lab(1 "Sampled from Normal") ///
	  lab(2 "Theoretical Normal") ///
	  lab(3 "Sampled from t-distribution") ///
	  )
graph export hist.png, replace 
<</dd_do>>
```
<<dd_graph>>

```
<<dd_do>>
display c(N) 
display c(k)  
list in 1/5 
<</dd_do>>
```

**Results**
Based on the simulated data, we found that the observed age distribution generated from the normal distribution roughly matches the theoretical one: $ \text{Age, years} \sim \mathcal{N}(\mu = 57, \sigma^2 = 225) $. According to the histogram, we can see that the normal distribution displays different format of t-distribution.

**Footnote** 
The results are based on simulated data.




