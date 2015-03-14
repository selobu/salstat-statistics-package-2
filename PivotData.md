**The class is availabe since beta 2 release**



# Introduction #

Some times can be useful to grouping data from different columns and sumarizing the information for that reason S2 incorporate a class to make some magic in that direction


# Examples #
The better way to learn is by examples so ...

## Example 1: Basics ##
given the following data
| **place** | **color** | **poeple**|
|:----------|:----------|:----------|
| house | black | 1 |
| house | white| 2 |
| apartment | black | 5 |
| house | white | 1 |
| apartment| black | 2 |

you should load the data to analyse
```
grid.PutCol(0,['house','house','apartment','house','apartment'])
grid.PutCol(1,['black','white','black','white','black'])
grid.PutCol(2,[1,2,5,1,2])
```
Then some one likes to know the people living in all houses, then you could type
```
res= group()
# taking the col data including the header
res.xdata= [grid.GetCol(0, True)]
res.ydata= [grid.GetCol(2, True)]
res.yalias= ['people']
```
you have three options to obtain the data as a dictionary, as a list or as a generator this last is useful to manage big amount of information
```
lista= res.getAsDict()
peopleInHouse= sum(lista['house']['people'])
# reporting the result
report.addRowData(['people in House',peopleInHouse],'Report')
peopleInApartment = sum(lista['apartment']['people'])
report.addRowData(['people in Apartment', peopleInApartment],'Report')
```
The result should be the following tables
| **A** | **B** |
|:------|:------|
| people in House| 4,0 |

| **A** | **B** |
|:------|:------|
| people in Apartment | 7,0 |

**Method 2:** since version 2.1 rc 3
```
res= group()
# taking the col data including the header
res.xdata=   [grid.GetCol(0, True)]
res.ydata=   [grid.GetCol(2, True)]
res.yalias=  ['people']
res.yvalues= ['sum(people)']
lista=       res.getAsRow()# getting the data as rows
report.addPage()
for lis in lista:
   report.addRowData(lis)
```
| A | people |
|:--|:-------|
| house |  4,0|
| apartment | 7,0|

Also you could watch the people by house and color
```
res= group()
# taking the col data including the header
res.xdata= [grid.GetCol(0,True),grid.GetCol(1,True)]
res.ydata= [grid.GetCol(2, True)]
res.yalias= ['people']
lista= res.getAsDict()
report.addRowData(['by Houses'],'Results')
for color, people in lista['house'].items():
	report.addRowData([color, sum( people['people']) ])
report.addRowData(['by aparment'])
for color, people in lista['apartment'].items():
	report.addRowData( [color, sum(people['people'])])
```
The result should be
| **A** | **B** |
|:------|:------|
| by Houses |  |
| white | 3,0 |
| black | 1,0 |
| by aparment|  |
| black | 7,0 |

**Method 2:** by getting the data as a list
```
res= group()
res.xdata= [grid.GetCol(0,True),grid.GetCol(1,True)]
res.ydata= [grid.GetCol(2, True)]
res.yalias= ['people']
lista= res.getAsList()
report.addRowData(['result'],'Result Page')
for row in lista:
   sumOfRow= sum(row[-1])
   result= list(row[:-1]) 
   result.append(sumOfRow)
   report.addRowData(result)
```
The result should be
| **A** | **B** | **C** | **D** |
|:------|:------|:------|:------|
| result |  |  |  |
| house| white | people | 3,0|
| house | black | people | 1,0|
| apartment | black | people | 7,0|

**Method 3:** An easy way
```
res= group()
res.xdata= [grid.GetCol(0,True),grid.GetCol(1,True)]
res.ydata= [grid.GetCol(2, True)]
res.yalias= ['people']
res.yvalues= ['sum(people)']
res.yvaluesAlias= ['suma']
lista= res.getAsList()
report.addRowData(['result'],'Result Page')
for row in lista:
   report.addRowData(row)
```

**Method 4:** since 2.1 rc 3
```
res= group()
res.xdata= [grid.GetCol(0,True),grid.GetCol(1,True)]
res.ydata= [grid.GetCol(2, True)]
res.yalias= ['people']
res.yvalues= ['sum(people)']
res.yvaluesAlias= ['suma']
report.addPage( )
for row in res.getAsRow():
   report.addRowData(row)
```

| A | B| suma |
|:--|:-|:-----|
| house | white | 3,0|
| house | black | 1,0|
| apartment | black | 7,0|

## Example 2: Statistical calculations ##
Given the following data
| **Department** | **user** | **year** | **days\_working** | **sons** |
|:---------------|:---------|:---------|:------------------|:---------|
| one | Sebastian | 2010 | 300 | 1 |
| one | Mark | 2010 | 280 | 1 |
| one | Paul | 2011 | 100 | 0 |
| one | Sebastian | 2011 | 310 | 1 |
| one | Mark | 2011 | 300 | 2 |
| two | Alex | 2010 | 290 | 2 |
| two | Fernando | 2010 | 120 | 0 |
| two | Fernando | 2011 | 312 | 0 |
| two | Alex | 2011 | 295 | 3 |
| two | Christian | 2011 | 301 | 2 |

The user require to view the data sumarized by sons.
```
grid.PutRow(0, [ 'Department', 'user', 'year', 'days_working', 'sons' ])
grid.PutRow(1, [ 'one', 'Sebastian', 2010, 300, 1 ])
grid.PutRow(2, [ 'one', 'Mark', 2010,  280, 1 ])
grid.PutRow(3, [ 'one', 'Paul', 2011, 100,  0 ])
grid.PutRow(4, [ 'one', 'Sebastian', 2011,  310 ,1 ])
grid.PutRow(5, [ 'one', 'Mark', 2011, 300,  2 ])
grid.PutRow(6, [ 'two', 'Alex', 2010, 290,  2 ])
grid.PutRow(7, [ 'two', 'Fernando', 2010, 120,  0])
grid.PutRow(8, [ 'two', 'Fernando', 2011, 312,  0])
grid.PutRow(9, [ 'two', 'Alex', 2011, 295, 3, ])
grid.PutRow(10, [ 'two', 'Christian', 2011, 301, 2] )
```
Also you can copy and paste the data into the Data Entry Panel

Then group the data by years and sons

**Method 1:**
```
res= group()
res.xdata= [grid.GetCol(i) for i in range(3)]
res.ydata= [grid.GetCol('E')]
res.ynames= ['sons']
lista= res.getAsGen()
report.addRowData(['Department','user','year','description','sons'],'Result')
for res1 in lista:
    report.addRowData( res1)
```

then you should obtain this table
|Department|	user|	year|description|sons|
|:---------|:----|:----|:----------|:---|
|two|	Christian|	2011,0	|sons	| [2.0]|
|two|	Alex	|2010,0	|sons	| [2.0]|
|two|	Alex	|2011,0	|sons	| [3.0]|
|two|	Fernando|	2010,0	|sons	| [0.0]|
|two|	Fernando|	2011,0	|sons	| [0.0]|
|one|	Paul	|2011,0	|sons	| [0.0]|
|one|	Sebastian|	2010,0	|sons	| [1.0]|
|one|	Sebastian|	2011,0	|sons	| [1.0]|
|one|	Mark	|2010,0	|sons	| [1.0]|
|one|	Mark	|2011,0	|sons	| [2.0]|

**Method 2:** since 2.1 rc 3
```
res= group()
res.xdata= [grid.GetCol(i) for i in range(3)]
res.ydata= [grid.GetCol('E')]
res.ynames= ['sons']
report.addPage( )
for res1 in res.getAsRow():
    report.addRowData( res1)
```

| Department | user | year | sons |
|:-----------|:-----|:-----|:-----|
| one | Sebastian | 2010,0 | 1,0 |
| one | Sebastian | 2011,0 | 1,0 |
| one | Mark | 2010,0 | 1,0 |
| one | Mark | 2011,0 | 2,0 |
| one | Paul | 2011,0 | 0,0 |
| two | Alex | 2010,0 | 2,0 |
| two | Alex | 2011,0 | 3,0 |
| two | Fernando | 2010,0 | 0,0 |
| two | Fernando | 2011,0 | 0,0 |
| two | Christian | 2011,0 | 2,0 |

Also the user like to know the total of sons by year

**Method 1**
```
res.xdata= [grid.GetCol('C')]
res.ydata= [grid.GetCol('E')]
lista= res.getAsGen()
report.addRowData(['Year','Total Sons'],'sumarizing sons')
for res1 in lista:
	   result= list()
	   result.append(res1[0])
	   result.append(sum(res1[-1]))
	   report.addRowData( result)
```

**Method 2**
```
res= group()
res.xdata= [grid.GetCol('C')]
res.ydata= [grid.GetCol('E')]
res.yvalues= ['sum(sons)']
lista= res.getAsList()
report.addRowData(['Year','Total Sons'],'sumarizing sons')
for res1 in lista:
   resa= [res1[0], res1[-1]]
   report.addRowData( resa)
```

Then you should obtain this
|Year	|Total Sons|
|:----|:---------|
|2010,0|	4,0|
|2011,0|	8,0|

**Method 3:** since 2.1 rc 3
```
res= group()
res.xdata= [grid.GetCol('C')]
res.ydata= [grid.GetCol('E')]
res.yvalues= ['sum(sons)']
report.addPage( )
for res1 in res.getAsRow():
   report.addRowData( res1)
```

| year | sons |
|:-----|:-----|
| 2010,0 | 4,0 |
| 2011,0 | 8,0 |

Finally the user like to see the average of sons and hours reported by department with the condition of the days\_working >= 300 and the number of sons  greater than 0

**Method 1**
```
res= group()
res.xdata= [ grid.GetCol('A')]
res.ydata= [ grid.GetCol(name) for name in ['D','E']]
res.yalias= ['days','sons']
res.restrictions= ['days >= 300','sons > 0']
lista= res.getAsDict()
report.addRowData( ['Department','hours Average','sons Average'],'Report')
for key,value in lista.items():
    days= value['days']
    sons= value['sons']
    divider= len(days)
    # controling if the divisor is not zero
    # and reporting
    if divider != 0:
        report.addRowData( [key, sum( days)/divider, sum( sons)/divider])
    else: 
        report.addRowData( [key, 'NaN', 'NaN'])
```

**Method 2**
```
res= group()
res.xdata=  [ grid.GetCol('A')]
res.ydata=  [ grid.GetCol(name) for name in ['D','E']]
res.yalias= [ 'days', 'sons']
res.restrictions= ['days >= 300','sons > 0']
res.yvalues= ['statistics(days).mean', 'statistics(sons).mean']
res.yvaluesAlias= ['meanDays', 'meanSons']
lista= res.getAsList(maximum= 1)
report.addRowData( ['Department','Days average','Sons average'],'Report')
for lis in lista:
   res1 = list()
   res1.append( lis[0])
   res1.append( lis[1]['meanDays'])
   res1.append( lis[1]['meanSons'])
   report.addRowData( res1)
```
Then you should obtain

|Department	|Days average	|Sons average|
|:----------|:------------|:-----------|
|two	| 301,0 | 2,0 |
|one	| 303,333333333 | 1,33333333333 |

**Method 3:** since 2.1 rc 3
```
res= group()
res.xdata=  [ grid.GetCol('A')]
res.ydata=  [ grid.GetCol(name) for name in ['D','E']]
res.yalias= [ 'days', 'sons']
res.restrictions= ['days >= 300','sons > 0']
res.yvalues= ['statistics(days).mean', 'statistics(sons).mean']
res.yvaluesAlias= ['meanDays', 'meanSons']
report.addPage( )
for lis in res.getAsRow( ):
   report.addRowData( lis)
```

| Department | meanDays | meanSon |
|:-----------|:---------|:--------|
| two | 301,0 | 2,0|
| one | 303,333| 1,333|

Checking the same last condition but with days < 300
```
res.restrictions= ['days < 300','sons > 0']
lista= res.getAsList(maximum= 1)
report.addRowData( ['Department','days Average','sons Average'],'Report')
for lis in lista:
   res1 = list()
   res1.append( lis[0])
   res1.append( lis[1]['meanDays'])
   res1.append( lis[1]['meanSons'])
   report.addRowData( res1)
```
Then you should obtain

|Department	|days Average|Sons Average|
|:----------|:-----------|:-----------|
|two|292,5|2,5|
|one|280,0|1,0|

## Example 3: Concatenate data by rows ##
Given the following data
| **user** | **year** | **girlfriendName** |
|:---------|:---------|:-------------------|
| Sebastian | 2009 | Paula |
| Mark | 2010 | Maria |
| Paul | 2011 | Andrea |
| Sebastian | 2010 | Carmenza |
| Mark | 2012 | Julieta |
| Alex | 2010 | Fernanda |
| Fernando | 2011 | Cristina |
| Fernando | 2012 | Alba |
| Alex | 2013 | Antonia |
| Christian | 2011| Cecilia |

You'll need to sumarize the girlfriendNames by user so

```
grid.PutRow(0, ['user', 'year', 'girlfriendName', ])
grid.PutRow(1, [ 'Sebastian', 2009, 'Paula', ])
grid.PutRow(2, [ 'Mark', 2010,  'Maria', ])
grid.PutRow(3, [ 'Paul', 2011, 'Andrea',])
grid.PutRow(4, [ 'Sebastian', 2010,  'Carmenza' ])
grid.PutRow(5, [ 'Mark', 2012, 'Julieta',])
grid.PutRow(6, [ 'Alex', 2010, 'Fernanda',])
grid.PutRow(7, [ 'Fernando', 2011, 'Cristina',])
grid.PutRow(8, [ 'Fernando', 2012, 'Alba',])
grid.PutRow(9, [ 'Alex', 2013, 'Antonia',])
grid.PutRow(10, [ 'Christian', 2011, 'Cecilia',] )
```

**Method 1:** since 2.1 rc 3
```
res= group()
res.xdata=  [ grid.GetCol('A')]
res.ydata=  [ grid.GetCol('C')]
res.yalias= [ 'ListOfGirlFriends']
res.yvalues= ['concat(ListOfGirlFriends)'] # concat is the concatenate function reference
report.addPage()
for li in res.getAsRow():
   report.addRowData( li)
```

| user | listOfGirlFriends|
|:-----|:-----------------|
| Sebastian | Paula; Carmenza|
| Mark | Maria; Julieta|
| Paul | Andrea|
| Alex | Fernanda; Antonia|
| Fernando | Cristina; Alba|
| Christian | Cecilia|

**Method 2:** defining your own function
```
# defining the concatenate function
concatenate= lambda x,y: x+'; ' +y
res= group()
res.xdata=  [ grid.GetCol('A')]
res.ydata=  [ grid.GetCol('C')]
res.yalias= [ 'ListOfGirlFriends']
lista= res.getAsDict()
report.addRowData(['user','list of girlfriends'],'sumarizing girlfriends')
for user, girlfriends in lista.items():
   #concatenating the results
   result= reduce(concatenate, girlfriends['ListOfGirlFriends'])
   report.addRowData([user,result ])
```

You should obtain this
| **user**	| **list of girlfriends**|
|:---------|:-----------------------|
| Christian	| Cecilia|
| Fernando	| Cristina;  Alba|
| Mark	| Maria;  Julieta|
| Alex	| Fernanda;  Antonia|
| Paul	| Andrea|
| Sebastian	| Paula; Carmenza|

**Method 3:**
```
res= group()
res.xdata=  [ grid.GetCol('A')]
res.ydata=  [ grid.GetCol('C')]
res.yalias= [ 'ListOfGirlFriends']
report.addPage()
for lis in res.getAsRow():
   report.addRowData( lis)
```

| user | listOfGirlFriends|
|:-----|:-----------------|
| Sebastian | [u'Paula', u'Carmenza']|
| Mark | [u'Maria', u'Julieta']|
| Paul | Andrea|
| Alex | [u'Fernanda', u'Antonia']|
| Fernando | [u'Cristina',u'Alba']|
| Christian | Cecilia|

The u' before the word means a unicode string so is posible to see it in a diferent render so you can use the method 3