

## Statistical functions ##
You can acces to the statistical function by using the reserved word **stats**, also you can see the related help by typing
```
help(stats.STATFUNCTION)
```
where STATFUNCTION is one of the supported statistical functions, for example you can take related help of the mean by typing
```
help(stats.mean)
```
and you'll have
```

    Calculates the arithmetic mean of the values in the passed array.
    That is:  1/n * (x1 + x2 + ... + xn).  Defaults to ALL values in the
    passed array.  Use dimension=None to flatten array first.  REMEMBER: if
    dimension=0, it collapses over dimension 0 ('rows' in a 2D array) only, and
    if dimension is a sequence, it collapses over all specified dimensions.  If
    keepdims is set to 1, the resulting array will have as many dimensions as
    inarray, with only 1 'level' per dim that was collapsed over.

    Usage:   _amean(inarray,dimension=None,keepdims=0)
    Returns: arithmetic mean calculated over dim(s) in dimension
```
The following are the allowed statistical functions of the module stats

|**Statistical Function** |**Description**|
|:------------------------|:--------------|
|	F\_oneway	|Performs a 1-way ANOVA, returning an F-value and probability |
|	F\_value	| Returns an F-statistic|
|	F\_value\_multivariate	|	 |
|	aglm	|Calculates a linear model fit	|
|	amasslinregress	|Calculates a regression line on one 1D array (x) and one _N-D array (y)._|
|	ap2t	|Tries to compute a t-value from a p-value (or pval array) and associated df.	|
|	asign	|Returns: array shape of a, with -1 where a<0 and +1 where a>=0	|
|	atmax	|Returns the maximum value of a, along dimension|
|	atmin	|Returns the minimum value of a, along dimension|
|	betacf	|Evaluates the continued fraction form of the incomplete Beta function, betai.	|
|	betai	|Returns the incomplete beta function	|
|	chisqprob	|Returns the (1-tail) probability value associated with the provided chi-square value and df	|
|	chisquare	|Calculates a one-way chi square for array of observed frequencies and returns the result.	|
|	covariance	|Returns the estimated covariance of the values in the passed array (i.e., _N-1)_|
|	cumfreq	|Returns a cumulative frequency histogram, using the histogram function.	|
|	cumsum	|Returns an array consisting of the cumulative sum of the items in thep assed array	|
|	describe	|Returns several descriptive statistics of the passed array	|
|	dices	|Calculates Dice's coefficient	|
|	erfcc	|Returns the complementary error function erfc(x) with fractional error everywhere less than 1.2e-7	|
|	findwithin	|Returns a binary vector, 1=within-subject factor, 0=between.	|
|	firstquartilescore	|Returns the 'first' quartile score of the passed array	|
|	fprob	|Returns the 1-tailed significance level (p-value) of an F statistic|
|	friedmanchisquare	|Friedman Chi-Square is a non-parametric, one-way within-subjects ANOVA	|
|	gammln	|Returns the gamma function of xx.	|
|	geometricmean	|Calculates the geometric mean of the values in the passed array	|
|	harmonicmean	|Calculates the harmonic mean of the values in the passed array	|
|	histogram	|Returns (i) an array of histogram bin counts, (ii) the smallest value of the histogram binning, and (iii) the bin width	|
|	icc	|Calculates intraclass correlation coefficients using simple, Type I sums of squares	|
|	itemfreq	|Returns a 2D array of item frequencies	|
|	kendalltau	|Calculates Kendall's tau ... correlation of ordinal data |
|	kruskalwallish	|The Kruskal-Wallis H-test is a non-parametric ANOVA for 3 or more groups, requiring at least 5 subjects in each group	|
|	ks\_2samp	|    Computes the Kolmogorov-Smirnov statistic on 2 samples.	|
|	ksprob	|Returns the probability value for a K-S statistic computed via ks\_2samp	|
|	kurtosis	|Returns the kurtosis of a distribution (normal ==> 3.0; >3 means heavier in the tails, and usually more peaked)|
|	kurtosistest	|Tests whether a dataset has normal kurtosis (i.e., kurtosis=3(n-1)/(n+1)) Valid only for n>20	|
|	lincc	|Calculates Lin's concordance correlation coefficient |
|	linregress	|Calculates a regression line on two arrays, x and y, corresponding to x,y pairs	|
|	mannwhitneyu	|Calculates a Mann-Whitney U statistic on the provided scores and returns the result	|
|	mean	|Calculates the arithmetic mean of the values in the passed array	|
|	median	|Returns the 'middle' score of the passed array |
|	medianscore	|Returns the 'middle' score of the passed array.	|
|	mode	|Returns an array of the modal (most common) score in the passed array	|
|	moment	|Calculates the nth moment about the mean for a sample (defaults to the 1st moment)	|
|	normaltest	|Tests whether skew and/OR kurtosis of dataset differs from normal curve	|
|	obrientransform	|Computes a transform on input data (any number of columns)	|
|	operator	|This module exports a set of functions implemented in C corresponding to the intrinsic operators of Python. |
|	outputfstats	|	 |
|	outputpairedstats	|	 |
|	paired	|Interactively determines the type of data in x and y, and then runs the appropriated statistic for paired group data	|
|	pearsonr	|Calculates a Pearson correlation coefficient and returns p	|
|	percentileofscore	|Returns: percentile-position of score (0-100) relative to inarray	|
|	pointbiserialr	|Calculates a point-biserial correlation coefficient and the associated probability value.	|
|	pstat	|	 |
|	rankdata	|Ranks the data in inarray, dealing with ties appropriately.  Assumes a 1D inarray	|
|	ranksums	|Calculates the rank sums statistic on the provided scores and returns the result	|
|	relfreq	|Returns a relative frequency histogram, using the histogram function	|
|	samplestdev	|Returns the sample standard deviation of the values in the passed array (i.e., using _N)_|
|	samplevar	|Returns the sample variance of the values in the passed  array (i.e., using _N)_|
|	scoreatpercentile	|Returns: score at given percentile, relative to inarray distribution	|
|	sem	|Returns the standard error of the mean (i.e., using _N) of the values in the passed array_|
|	shellsort	|	Returns: sorted-inarray, sorting-index-vector (for original array)|
|	signaltonoise	|Calculates signal-to-noise	|
|	skew	|Returns the skewness of a distribution (normal ==> 0.0; >0 means extra weight in left tail)	|
|	skewtest	|Tests whether the skew is significantly different from a normal distribution	|
|	spearmanr	|Calculates a Spearman rank-order correlation coefficient	|
|	square\_of\_sums	|Adds the values in the passed array, squares that sum, and returns the result	|
|	ss	|Squares each value in the passed array, adds these squares & returns the result	|
|	stdev	|Returns the estimated population standard deviation of the values in the passed array (i.e., _N-1)_|
|	sterr	|Returns the estimated population standard error of the values in the passed array (i.e., _N-1)_|
|	sum	|Returns: array summed along 'dimension'(s)	|
|	sumdiffsquared	| Takes pairwise differences of the values in arrays a and b, squares these differences, and returns the sum of these squares	|
|	summult	|Multiplies elements in array1 and array2, element by element, and returns the sum (along 'dimension') of all resulting multiplications	|
|	thirdquartilescore	|Returns the 'third' quartile score of the passed array.  If there is an even number of scores, the mean of the 2 middle scores is returned	|
|	threshold	|Like Numeric.clip() except that values <threshmid or >threshmax are replaced by newval instead of by threshmin/threshmax (respectively).	|
|	tiecorrect	|Tie-corrector for ties in Mann Whitney U and Kruskal Wallis H tests. See Siegel, S	|
|	tmean	|Returns the arithmetic mean of all values in an array, ignoring values strictly outside the sequence passed to 'limits'	|
|	trim1	|Slices off the passed proportion of items from ONE end of the passed array	|
|	trimboth	|    Slices off the passed proportion of items from BOTH ends of the passed array	|
|	tsem	|Returns the standard error of the mean for the values in an array,(i.e., using _N for the denominator), ignoring values strictly outside the sequence passed to 'limits'_|
|	tstdev	|Returns the standard deviation of all values in an array, ignoring values strictly outside the sequence passed to 'limits'	|
|	ttest\_1samp	|Calculates the t-obtained for the independent samples T-test on ONE group of scores a, given a population mean. 	|
|	ttest\_ind	|Calculates the t-obtained T-test on TWO INDEPENDENT samples of scores a, and b	|
|	ttest\_rel	|Calculates the t-obtained T-test on TWO RELATED samples of scores, a and b	|
|	tvar	|Returns the sample variance of values in an array, (i.e., using _N-1), ignoring values strictly outside the sequence passed to 'limits'_|
|	var	|Returns the estimated population variance of the values in the passed array (i.e., _N-1)_|
|	variation	|Returns the coefficient of variation, as defined in CRC Standard Probability and Statistics, p.6	|
|	wilcoxont	|Calculates the Wilcoxon T-test for related samples and returns the result	|
|	writecc	|	 |
|	z	|Returns the z-score of a given input score, given thearray from which that score came	|
|	zmap	|Returns an array of z-scores the shape of scores (e.g., [x,y]), compared to array passed to compare (e.g., [time,x,y])	|
|	zprob	|Returns the area under the normal curve 'to the left of' the given z value	|
|	zs	|Returns a 1D array of z-scores, one for each score in the passed array, computed relative to the passed array	|


## Central Tendency ##

---

### stats.geometricmean ###
stats.geometricmean(data)

where:
  * data: is a list of values
Returns:
  * float value

example
```
# example 1
grid.PutCol(0,range(20))
geomean= stats.geometricmean(grid.GetCol(0))
show(geomean)

# example 2
cls()
grid.PutCol(0,range(1,20)) # put some data in the grid
data= grid.GetCol('A') # reading some data of the grid
geomean= stats.geometricmean(data) # calculatin th geometric mean
geomean= round(geomean,3) # raunding the resul
show('the geometric mean is %1.3f'%geomean) # displaying data

```

### stats.harmonicmean ###
stats.harmonicmean(data)

where:
  * data: is a lis of numerical values
Returns:
  * float value

example
```
grid.PutCol(0,range(1,20))
data= grid.CleanData(0) # return only the valid values of the column 0
harmmean= stats.harmonicmean(data)
show('harmonic mean = ' + str(harmmean)) # str change a numerical value into a string value
```

### stats.mean ###
stats.mean(data)

where:
  * data: is a lis of numerical values
Returns:
  * float value

example
```
cls()
show('calculating data...')
grid.PutCol(0,range(50000))
data= grid.GetCol(0) # return only the valid values of the column 0
mean1= stats.mean(data)
show('First Mean:%f'%mean1) # str change a numerical value into a string value
grid.PutCol(0,range(10))
data= grid.GetCol(0)
mean2= stats.mean(data)
show("Second Mean: %f"%mean2)
minmean= min([mean1, mean2])
show('Minimum mean %f'%minmean)
```

### stats.median ###
stats.median(data)
Returns:
  * float value

where:
  * data: is a lis of numerical values

### stats.medianscore ###
stats.medianscore(data)
Returns:
  * float value

where:
  * data: is a lis of numerical values

### stats.mode ###
stats.mode(data)

where:
  * data: is a lis of values

Returns:
  * (numOfTimes,[values ](.md)), numOfTimes mean the number of repetitions. In case all data has the same frecuency the function returns all the input data

example
```
cls()
show('calculating')
grid.PutCol(0,range(20000))
grid.SetCellValue(9,0, '5')
grid.SetCellValue(12,0, '1')
data= grid.GetCol(0) # return only the valid values of the column 0
mode= stats.mode(data)
show(mode)
```