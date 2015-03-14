# Introduction #

Since v2.1 rc1 S2 can script excel under windows platform by a provided class.


# Details about the Class #

**XL** is the main class to interactively work with the spreadsheet, the better way to learn could be by examples so:

## Example 1 ##
Open the SpreadSheet
```
>>> xl= XL()
```
Hide the SpreadSheet
```
>>> xl.Visible= False
```
Unhide the SpreadSheet
```
>>> xl.Visible= True
```
## Example 2 ##
Add two Workbooks
```
>>> xl.addwb
>>> xl.addwb
```
Open an existent workbook
```
>>> xl.openWorkbook( fullPath) # fullPath is an string or unicode with the full path to the file
```
Count the number of workbooks
```
>>> len( xl.wb)
```
Selecting the last workbook
```
>>> wb= xl.wb[-1]
```
See the name of the workbook
```
>>> wb.name
```

Resume
```
xl= XL()
import time
xl.Visible= False
time.sleep(2) # wait 2 seconds
xl.Visible= True
xl.addwb # add one workbook
xl.addwb
print "the number of workbooks are %i"%(len( xl.wb))
wb= xl.wb[-1] # Referencing the last workbook
print wb.name
```

## Example 2 ##

Select the first Sheet
```
>>> sh1= xl.wb[0].sh[0]
```
Setting some values to the sheet 1
```
>>> sh1.PutCol( 1, [3,2,3])
# The first argument is the number of the column starting with 1
# The second argument is the values to write into the SpreadSheet}}}
```
You should obtain something like this

| **A** | **B**|
|:------|:-----|
| 3 |  |
| 2 |  |
| 3 |  |

Put an array start with 2 and end with 3000 under the column 3
```
>>> sh1.PutCol(3, range( 2, 3001))
```

Resume
```
sh1= xl.wb[0].sh[0]
sh1.PutCol( 1, [3,2,3])
sh1.PutCol(3, range( 2, 3001))
```

## Example 3 ##
Delete the contents of the first column
```
>>> sh1.PutCol( 1,[])
```
Copy the contents of the column 3 into the sheet 2 column 1
```
>>> sh2= xl.sh[1]
>>> sh2.PutCol(1, sh1.GetCol( 3))
```
Resume
```
sh1.PutCol( 1,[])
sh2= xl.sh[1]
sh2.PutCol(1, sh1.GetCol( 3))
```

## Example 4 ##
calculate the mean and the stddev of the sheet 1 column 3 and write it into the last sheet

```
LastSh= xl.wb[0].sh[-1] # you can use negative indexes
colData= sh1.GetCol( 3) # getting the column 3
#calculating all statistics
mean= stats.mean( colData)
stddev= stats.stdev( colData)
LastSh.PutCol( 1, ['mean:', 'stddev:'])
LastSh.PutCol( 2, [mean, stddev])
```
So you should obtain into the sheet1
| **A**| **B**|
|:-----|:-----|
| mean:| 1501|
| stddev:| 865,881054|

## Example 5 ##
To open an existent workbook

```
xl= XL()
# creates a dialog to select the file to be opend an so
wb= xl.openWorkbook( getPath())
#displaying the number of sheets
print len(wb.sh)
```