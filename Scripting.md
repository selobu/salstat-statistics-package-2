

# Introduction #

S2 can be scripting by the user giving a text input. the script panel consist of the following

## Panel Bar ##
The panel consist of nine bottons wich you can
  * execute code
  * Create new script
  * Save the current script
  * Open an existing script and load into the script text panel
  * Cut a selectect text
  * Copy a selected text
  * Paste the clipboard
  * Undo actions
  * Redo actions

## Scrip text panel ##

Here you can input text data, it has the following characteristics:
  * Automatically shows line numbers in a left panel
  * Support code folding
  * Color higlih related to python sintanxis

## Simple example ##
Copy the following text into the panel script


---


```
cls() # it clears the log panel
show("First Example") # it displaya "First Example" into the log panel
show(2+5) # it displays 7
result = 2+5 # defining a local variable result
show("sum of 2+5 is %i"%result) # diplays sum of 2+5 is 7
```


---


Press the run scrip botton "|>"

and the result displays into the logg panel

>> First Example

>> 7

>> sum of 2+5 is 7

## Command Reference: ##

### cls ###
it's used to clear the log panel text

cls()

example:
```
cls()
```

### show ###
it's used to show a result into the log panel

show(data)

where:
  * data: any kind of data

examples:
```
show("string text")

variable= 20
show(variable)

show([1,2,3,4, "string text", variable ])
```

### grid ###
It's used to acces the Data Entry Panel, the maximun allowed number of rows is 1.000.000 rows an the maximum number of cols is <<<>>>

**grid.GetNumberRows**
it's used to getting the number of rows of the main input Grid Panel
examples:
```
numberOfRows= grid.GetNumberRows()
show(numberOfRows)
```

**grid.GetNumberCols**
it's used to getting the number of cols of the Data Entry Panel
examples:
```
numberOfCols= grid.GetNumberCols()
show(numberOfCols)
```

**grid.AppendRows**
used to add rows into the Data Entry Panel

grid.AppendRows(integer)

where:
  * integer: an integer indicating the rows to append

examples:
```
nrows= grid.GetNumberRows()
# Appending 100 rows
grid.AppendRows(100)
appendedRows= grid.GetNumberRows()-nrows
show('adding %i rows'%appendedRows)

# working with floats
floatNumber= 7.0
grid.AppendRows(int(floatNumber)) 
# int is used to try to convert from float to integer
```

**grid.AppendCols**
used to add cols into the Data Entry Panel

grid.AppendCols(integer)

where:
  * integer: an integer indicating the rows to append

examples:
```
ncols= grid.GetNumberCols()
# Appending 210 cols
grid.AppendCols(210)
appendedCols= grid.GetNumberCols()-ncols
show('adding %i cols'%appendedCols)

# working with floats
floatNumber= 7.0
grid.AppendRows(int(floatNumber)) 
# int is used to try to convert from float to integer
```

**grid.GetCol**
It's used to get all the valid values of a selected col

grid.GetCol(value)

where:
  * value: could be a numerical data in that case the function will try to change to an integer value OR  could be an string representing the name of an existent column

the funtion retur a lis with numerical values, strings and None in the case the cell is empty

examples:
```
colBdata= grid.GetCol('B')
show(colBdata)
show(' ')
# or refering to the same column
colBdata= grid.GetCol(1)
show(colBdata)
```

**grid.GetColNumeric**
It's used to get all the numeric values of a selected column, the rest of values are droped

grid.GetColNumeric(value)

where:
  * value: could be a numerical data in that case the function will try to change to an integer value OR  could be an string representing the name of an existent column

the funtion retur a lis with numerical values, strings and None in the case the cell is empty

examples:
```
colBdata= grid.GetColNumeric(0)
show(colBdata)
show(' ')
# or refering to the same column
colBdata= grid.GetColNumeric('A')
show(colBdata)
```


**grid.PutCol**
It's used to put data into the Data Entry Panel, automatically add the required number of rows up to 1e6

grid.PutCol(ColNumber, data):

where:
  * ColNumber: is a numerical value indicating the number of an existing column, can also be a text string with the name of an existing column
  * data: an iterable object to be displaying

examples:
```
grid.PutCol(0,[u'32154',"canción",5,12.0,-4.1,5/8.0],)
grid.PutCol('B',range(1,20,1),) # construct a list from 1 to 19
```

**grid.PutRow**
It's used to put data into the Data Entry Panel, automatically add the required number of cols up to <...>

grid.PutRow(RowNumber, data):

where:
  * RowNumber: is a numerical value indicating the number of an existing row, It can also be a text string with the name of an existing row
  * data: an iterable object to be displaying

examples:
```
grid.PutRow(0,[u'32154',"canción",5,12.0,-4.1,5/8.0],)
grid.PutRow('B',range(1,20,1),) # construct a list from 1 to 19
```

**grid.GetRow**
It's used to get a row data from the Data Entry Panel,

grid.GetRow(rowNumber):

where:
  * rowNumber: is a numerical value indicating the number of an existing row, can also be a text string with the name of an existing row

examples:
```
cls()
show('getting six rows')
for rowNumber in [i for i in range(1,7)]:
	row= grid.GetRow(rowNumber)
	show(row)
```


### report ###
It's used to report into the Output Panel, the maximun allowed number of rows is 1.000.000 rows an the maximum number of cols is <<<>>>


**report.addColData**
It's used to put a col data into the Output Panel,

report.addColData(colData, pageName= None)

where:
  * colData: is an iterable object as a list or tuple
  * pageName: the name of the page added to the Output Panel

if pageTitle is None then the data is append to the current page

examples:
```
report.addColData(range(10), 'Nuevo reporte')
report.addColData(range(2))
report.addColData(range(24))
report.addColData(['uno', 2+2.15, ('tuple','1')])
show('Finish reporting data')
```


**report.addRowData**
It's used to put a row data into the Output Panel,

report.addRowData(rowData, pageName= None, currRow = None)

where:
  * rolData: is an iterable object as a list or tuple
  * pageName: the name of the page added to the Output Panel
  * currRow: in case you like to input a row into different possition than the last then you could select one.

if pageTitle is None then the data is append to the current page

examples:
```
report.addRowData(range(10), 'Nuevo reporte', )
report.addRowData(range(2))
report.addRowData(range(24))
# inserting row data into the first row of the current Output Panel page
report.addRowData(['uno', 2+2.15, ('tuple','1')], currRow= 0)
report.addRowData(['ttest'])
show('Finish reporting data')
```