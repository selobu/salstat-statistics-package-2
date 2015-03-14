

# Introduction #
The software allows you to easily create dialogs by command line usin the dialog class

# dialog #
main class used to generate a dialog

dialog(parent=None, settings={}, struct=[.md](.md))

where:

settings = {'Title': String title of the wxdialog , 'icon': wxbitmap, '_size': wx.Size(xsize, ysize) the size of the dialog ,'_pos':wx.Position(-1, -1),'_style': wx.DIALOG__STYLE of the dialog ,}_

struct = list() information with the data

allowed controls: 'StaticText',   'TextCtrl',    'Choice',
> 'CheckListBox', 'StaticLine',  'RadioBox',
> 'SpinCtrl',     'ToggleButton', 'NumTextCtrl',
> 'CheckBox',      'makePairs'

**Example 1**: displaying the current date
```
# import the time module
import datetime
# getting the current time
now = datetime.datetime.now()
# obtaining the mont, day and year
month= now.month 
day=   now.day
year=  now.year
# changing the numerical data to an string representation

fecha = month.__str__()+'/'+ day.__str__()+'/'+year.__str__()
txt1 = ('StaticText', (fecha,))

structure = list()
structure.append( [txt1] )

dlg= dialog(parent= None, struct= structure)
dlg.ShowModal()
dlg.Destroy()
```

**Example 2**:
```
structure = list()
bt1 = ('StaticText', ('hoja a Imprimir',))
bt2 = ('Button', ('nuevo',))
bt6=  ('TextCtrl', ('Parametro',))
btnChoice = ('Choice',(['opt1','opcion2','opt3'],))
btnListBox = ('CheckListBox',(['opt1','opcion2','opt3'],))
listSeparator = ('StaticLine',('horz',))
bt7 = ('RadioBox',('titulo',['opt1','opt2','opt3'],))
bt8 = ('SpinCtrl', ( 0, 100, 5 )) # (min, max, start)
bt9 = ('ToggleButton', ['toggle'])
bt10= ('CheckBox', ['Accept'])
bt11= ('makePairs', [['col1','col2','col3'],[['opt2','opt5']]*3, 8]) # colum names, options, number of rows

structure.append( [bt6, bt2] )
structure.append( [bt6] )
structure.append( [btnChoice, bt9 ] )
structure.append( [listSeparator])
structure.append( [btnListBox , bt1])
structure.append( [bt7, ])
structure.append( [bt8, ])
structure.append( [bt11, ])
dlg= dialog(parent= None, struct= structure)
if dlg.ShowModal() == OK:
   values= dlg.GetValue()
   print values
dlg.Destroy()
```


# The following examples were test under Salstat2 v2.2 beta 1 #
**Example 0**:
Hello world
```
dlg= dialog()
dlg.title= "Hello World"
dlg.ShowModal()
dlg.Destroy()
```

**Example 1**:
displaying the current date
```
# import the time module
import datetime
# getting the current time
now = datetime.datetime.now().strftime("%d-%m-%y")
txt1 = Ctrl.StaticText(now)
dlg= dialog()
dlg.struct= [[txt1]]
dlg.ShowModal()
dlg.Destroy()
```

**Example 3**: Getting the age of the user
```
dlg= dialog()
txt= Ctrl.StaticText('Input your Age:')
edit= Ctrl.TextCtrl()
dlg.struct= [[txt, edit]]
if dlg.ShowModal() == OK: # if the user press the OK button
    print "Your Age is %s years"%dlg.GetValue()[0]
dlg.Destroy()
```


**Example 4**: Calculating the temperature(T) of an idel gas
by given the volume(V) and the presure(P)
```
dlg= dialog()
dlg.title= "Caculate the Temperature of an ideal gas" 
txt1= Ctrl.StaticText('Pressure (P):')
txt2= Ctrl.StaticText('Volume  (V):')
edit= Ctrl.NumTextCtrl()
dlg.struct= [[txt1, edit],
             [txt2, edit]]
if dlg.ShowModal() == OK: # if the user press the OK button
    Pressure, Volume= dlg.GetValue()
    print "The presure is: %f"%(Pressure*Volume)
else:
    print "The user press the Cancel button"
dlg.Destroy()
```

**Example 6**:
```
bt1 = Ctrl.StaticText('hoja a Imprimir',)
bt2 = Ctrl.Button('nuevo',)
bt6=  Ctrl.TextCtrl('Parametro',)
btnChoice = Ctrl.Choice(['opt1','opcion2','opt3'],)
btnListBox = Ctrl.CheckListBox(['opt1','opcion2','opt3'],)
listSeparator = Ctrl.StaticLine()
bt7 = Ctrl.RadioBox( 'titulo',['opt1','opt2','opt3'],)
bt8 = Ctrl.SpinCtrl( 0, 100, 5 ) # (min, max, start)
bt9 = Ctrl.ToggleButton('toggle')
bt10= Ctrl.CheckBox('Accept')
bt11= Ctrl.makePairs(['col1','col2','col3'],['opt2','opt5'], 8) # column names, options, number of rows

struct=[ [bt6, bt2], 
         [bt6],
         [btnChoice, bt9 ],
         [listSeparator],
         [btnListBox , bt1],
         [bt7, ],
         [bt8, ],
         [bt11, ]]
dlg= dialog()
dlg.struct= struct
if dlg.ShowModal() == OK:
   values= dlg.GetValue()
   print values
dlg.Destroy()
```

![http://2.bp.blogspot.com/-qWRXUfj3IfQ/UNEt20s3fjI/AAAAAAAAAYs/DZqj52q-6K8/s1600/ScreenShot001.png](http://2.bp.blogspot.com/-qWRXUfj3IfQ/UNEt20s3fjI/AAAAAAAAAYs/DZqj52q-6K8/s1600/ScreenShot001.png)