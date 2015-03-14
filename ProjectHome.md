Para español ![http://1.bp.blogspot.com/-3yYYY-a6PXc/Ui-C1pE7laI/AAAAAAAAAic/QfqDTv5dju8/s1600/colombia.png](http://1.bp.blogspot.com/-3yYYY-a6PXc/Ui-C1pE7laI/AAAAAAAAAic/QfqDTv5dju8/s1600/colombia.png) [[Home\_es](Home_es.md) Página principal]

## Description ##
Salstat2 is an statistical package written in python and designed for the end user It has a graphical user interface and also it is scriptable, It's multiplatform, It has a graphic system inherited from matplotlib, It allows you to use different libraries as numpy - for numerical calculations, it also lets you to interact with Microsoft Excel (R) by using a com client under windows(R) platform and finally you can create your own dialogs by using the interactive shell or the script panel.

[![](http://1.bp.blogspot.com/-RVpxYOwX4oE/U8AiNtwPzjI/AAAAAAAAA0c/_WAp8zpaB9U/s1600/Logo+128+128+cobra.png)](http://sourceforge.net/projects/s2statistical/)[![](http://2.bp.blogspot.com/-9CdLAzZlcOk/Uh3f0PL37rI/AAAAAAAAAhM/5Mni0NExRmo/s1600/softpedia_free_award_f.gif)](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=3&cad=rja&sqi=2&ved=0CEEQFjAC&url=http%3A%2F%2Fwww.softpedia.com%2Fget%2FOthers%2FHome-Education%2FSalstat2.shtml&ei=DdtrUs-mJ83qkAeGjoGIAg&usg=AFQjCNHNrVbd62gmcFt9-O5NPi9yy88yWQ&sig2=LwtiV6blKAGEh_0j2mUlvw)[![](http://img.informer.com/awards/si-award-clean.png)](http://salstat2.software.informer.com)
<a href='http://www.youtube.com/watch?feature=player_embedded&v=PmsLn_8_1NI' target='_blank'><img src='http://img.youtube.com/vi/PmsLn_8_1NI/0.jpg' width='425' height=344 /></a>  <a href='http://www.youtube.com/watch?feature=player_embedded&v=Kcdb7Y-OBi4' target='_blank'><img src='http://img.youtube.com/vi/Kcdb7Y-OBi4/0.jpg' width='425' height=344 /></a>

## News ##
  * **06-Ago-2014**: Salstat2 rc1 available.
  * **11-jul-2014**: We add a lagplot, 4-plot, BoxCox normality plot and BoxCox linearity plot, also we add BoxCox transformation.
  * **27-jun-2014**: We have reached 8293 downloads from different sources.
  * **22-jun-2014**: Salstat2 v2.2 alpha 4 is avaiblable [here](https://sourceforge.net/projects/s2statistical/files/latest/download)
  * **21-dec-2013**: We will incorpore a frame to manage the pivot class since v2.2 alpha3

## Statistical functions available ##
the following are some of the supported statistic functions:
  * Variability: samplevar, sample stddev, var, stddev, signaltonoise,
  * Anova one way
  * Probability calcs: chisqprob, ercfunc, zprob func, betacf, betai
  * Correlation functions: pearsonr, spearman, pointbiserialr, kendalTau, linregress
  * Moments: variation, skew, kurtosis, skew test, kurtosis test, normal test
  * Inferential stats
  * Frequency stats
  * Central Tendency: mean, geometric mean, harmonic mean, median mode
  * Short data and see the original order
  * Six Sigma, to be used in global analysis for continuos data
A more detailed list [here](Scripting_statistics.md)

## The plotting system: ##
In the plotting system you can draw around twenty different types of charts, at the same time you can interactively make some changes like the title, x label, y label,  scales, turn on or off the grid, to change line colour, and many more. some of the plotting types are:

![http://1.bp.blogspot.com/-B1vDWn-mvkc/US_lcbWk8gI/AAAAAAAAAeo/bcTIOwR0Tyw/s1600/collage.png](http://1.bp.blogspot.com/-B1vDWn-mvkc/US_lcbWk8gI/AAAAAAAAAeo/bcTIOwR0Tyw/s1600/collage.png)

Box & whisker, Linear regresion plot, Normal probability plot, Scatter chart, Ternary scatter chart, Histogram chart - optionally you can draw a normal curve, Multiple are chart, Bar chart of all means, Line chart of all means, bar chart, Horizontal bar chart,
stacked bars, Cumulative histogram chart, Stem chart, area chart, control chart, Line charts of the data, adaptive plot, pareto Chart since S2 v2.1 rc2.

## You can be save the chart in the following formats: ##
eps, emf, jpeg, jpg, pdf, png, ps, raw, rgba, svg, svgz, tif, tiff


## Suported platforms ##
![http://1.bp.blogspot.com/-lCjjPXgcki8/UrQw7qgb9YI/AAAAAAAAAsY/rXmx7jivo_Q/s1600/ubuntus.png](http://1.bp.blogspot.com/-lCjjPXgcki8/UrQw7qgb9YI/AAAAAAAAAsY/rXmx7jivo_Q/s1600/ubuntus.png)  ![http://4.bp.blogspot.com/-zIY0siXUeLU/UrQw7q0yXsI/AAAAAAAAAsQ/yfox8A6zcak/s1600/windows.png](http://4.bp.blogspot.com/-zIY0siXUeLU/UrQw7q0yXsI/AAAAAAAAAsQ/yfox8A6zcak/s1600/windows.png)


## Improved output system: ##
All the numerical result are send to a sheet in a diferent panel where you can copy, paste, cut and edit.
If the resulting text is too large and you can't see it in a cell then you can see it in a toolbar designed for that.

## Pivot table ##
the software provides a class to manage data as a pivot data table more information [here](http://code.google.com/p/salstat-statistics-package-2/wiki/PivotData)

since version 2.2 Alpha3 will be available a frame to manage the pivot class

![http://1.bp.blogspot.com/-rNafCH-pZu0/UrcXpwu6_LI/AAAAAAAAAsw/sPG6xoM5wpk/s1600/pivot+frame.png](http://1.bp.blogspot.com/-rNafCH-pZu0/UrcXpwu6_LI/AAAAAAAAAsw/sPG6xoM5wpk/s1600/pivot+frame.png)

## Interactive python shell: ##
The software provides a shell where you can interactively manipulate objects of the software as the:
  * The data Entry panel.
  * The response panel.
  * The statistics.
  * The numpy library.
  * A class to easily dialog creation

## The transformation panel: ##
Salstat2 will provide a new transformation panel since version 2.2, where you can do a lot of calculations with the columns in the main panel and by using the provided statistical functions.

![http://4.bp.blogspot.com/-Krea-PKJzro/UaKKday3RxI/AAAAAAAAAgU/G_ary3Lv3zk/s1600/transformationPanel.png](http://4.bp.blogspot.com/-Krea-PKJzro/UaKKday3RxI/AAAAAAAAAgU/G_ary3Lv3zk/s1600/transformationPanel.png)

[more details here](http://s2statistical.blogspot.com/2013/05/transformation-panel.html)

## custom dialogs via wxpython library: ##
You can easily create custom dialogs by using a provided class **dialog**, for example,
you can run the following script from the shell:

```
dlg= dialog()
txt1= Ctrl.StaticText('input the average')
btn1= Ctrl.NumTextCtrl()
dlg.struct= [[txt1, btn1]]
dlg.title= 'example1'
dlg.ShowModal()
```

![http://1.bp.blogspot.com/-o2o33ClrdRw/UrL3ELW-DbI/AAAAAAAAAr8/Hlk0O01quTo/s1600/easydialog_simple.png](http://1.bp.blogspot.com/-o2o33ClrdRw/UrL3ELW-DbI/AAAAAAAAAr8/Hlk0O01quTo/s1600/easydialog_simple.png)

Or one more complex example

![http://2.bp.blogspot.com/-W4sSSk3UAbU/UrLxmBgC1vI/AAAAAAAAArs/sCcjNMqVwh4/s1600/easydialog.png](http://2.bp.blogspot.com/-W4sSSk3UAbU/UrLxmBgC1vI/AAAAAAAAArs/sCcjNMqVwh4/s1600/easydialog.png)

## Many thanks to: ##
  * Sebastian's family: Alba, Ramiro, Yolanda, Beatriz, Juan, Sofía, Mariana
  * Mark Livingstone
  * [Salstat2 Contributors](Contribute.md)
  * [Python ](http://www.python.org) developers group
  * [wxPython](http://www.google.com.co/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&ved=0CGMQFjAA&url=http%3A%2F%2Fwxpython.org%2F&ei=uPXgT8bTJKnf0gGaibmVDg&usg=AFQjCNE8M7EcUd4oQf5NyzG9qiWL15zPhQ&sig2=nhN4R8Ht0wUJIcn1oGUXhA) developers group
  * [NSIS](http://www.google.com.co/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&ved=0CGkQFjAA&url=http%3A%2F%2Fnsis.sourceforge.net%2F&ei=zPPgT_3NJILs0gHn78S_Dg&usg=AFQjCNEyuekHtWw7SRndFuNlzufn-DOMEA&sig2=xbKKsCeTd_zLk42AEyLJ4A)
  * [Mercurial](http://en.wikipedia.org/wiki/Mercurial)
  * [PyDev](http://pydev.org/) eclipse plugnin
  * [Eclipse](http://www.google.com.co/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&ved=0CF4QFjAA&url=http%3A%2F%2Fwww.eclipse.org%2F&ei=EvbgT8_FBOir0AG817D-DQ&usg=AFQjCNFLDQCqoSDxwm1phYDfj2aJnL2dPA&sig2=nJ4oDxxlC-8ViZPXOr7TUQ)
  * Alan James Salmoni [SalStat](http://www.google.com.co/url?sa=t&rct=j&q=&esrc=s&source=web&cd=2&ved=0CFwQFjAB&url=http%3A%2F%2Fsalstat.sourceforge.net%2F&ei=OfbgT-uGGsO90AGD3sGCDg&usg=AFQjCNHR3gVJ5qfB6NoTaWfgWC123L0LFQ&sig2=P8wyTpyjlastWWHhydFc5w), my first contact with python
  * [SCite](http://www.google.com.co/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&ved=0CGkQFjAA&url=http%3A%2F%2Fwww.scintilla.org%2FSciTE.html&ei=IvbgT6qUBoex0AHzgKnIDg&usg=AFQjCNG4srWDDpWlC6sbq17S7saoiRazrg&sig2=VXXS6lAcyoN0nttg0Wglcg)
  * Gary Strangman <statistics package>
  * Google Team
  * Many more