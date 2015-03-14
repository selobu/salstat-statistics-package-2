

# introducción #
el programa le permite crear cuadros de diálogo fácilmente mediante el uso de la línea de comandos utilizando la clase diálogo.

# diálogo #
clase principal utilizada para generar un cuadro de diálogo

dialog(parent=None, settings={}, struct=[.md](.md))

donde:

settings = {'Title': String title of the wxdialog , 'icon': wxbitmap, '_size': wx.Size(xsize, ysize) the size of the dialog ,'_pos':wx.Position(-1, -1),'_style': wx.DIALOG__STYLE of the dialog ,}_

struct = list() #información de los datos

allowed controls: 'StaticText',   'TextCtrl',    'Choice',
> 'CheckListBox', 'StaticLine',  'RadioBox',
> 'SpinCtrl',     'ToggleButton', 'NumTextCtrl',
> 'CheckBox',      'makePairs'

**Ejemplo 1**:
presentar la fecha actual
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

![http://2.bp.blogspot.com/-qWRXUfj3IfQ/UNEt20s3fjI/AAAAAAAAAYs/DZqj52q-6K8/s1600/ScreenShot001.png](http://2.bp.blogspot.com/-qWRXUfj3IfQ/UNEt20s3fjI/AAAAAAAAAYs/DZqj52q-6K8/s1600/ScreenShot001.png)