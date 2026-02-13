## zmk notes

.keymap and .conf must match the shield name (i.e. kyria_rev2)
Use the extension names  build.yaml, config/west.yml and .github/workflows/build.yml

In .keymap: 
can't use lower case
can't use only number. need N1, N2

how i got the default shield:
download: https://github.com/zmkfirmware/zmk/tree/main/app/boards/shields/boardsource5x12
into ./boards/shields/hamboarder
using https://download-directory.github.io/

send to NICENANO with cp as the file manager doesn't work sometimes.

```
cp hamboarder-nice_nano@2.0.0-zmk.uf2 /run/media/$USER/NICENANO
```

## ergogen notes
## dxf to step

### librecad 

topbar, tool -> polyline -> create polyline from existing segements
ensure that there are no overlapping lines
adjust the origin to the symetrical location here, before you import it to freecad!

###freecad

freecad is awful - accept it
new freecad
import
all import options off apart from layers
enter dropdown (workbench selector), draft
select all lines -> Top Bar, Modification -> Draft to Sketch, creates Sketch001
dropdown -> Sketcher - title bar dropdown, Sketch -> Validate sketch -> fix everything
Then, in sketcher, it it to the origin with a construction line
Dropdown, Part builder -> create body
Drag Sketch001 into body

for holes, you need to import them as a dxf from a different dxf into freecad, and co-select for the draft to sketch option

Stainless Steel 201
Stainless Steel 304
Cold Rolled Steel
Galvanized Steel Sheet
Aluminum 5052	
Max:
800mm	
Thicknesses mm
0.5 / 0.8 /1.0 / 1.2 / 1.5 / 2.0 / 2.5 / 3.0 / 4.0 / 5.0 / 6.0

#### extrude a face

Don't do: part -> "Create shape element  copy" -> Extrude
Part Design, create an additive feature: pad! wasted 2 hours 

## jlcpcb

pcb, sheetmetal, and 3dp all have different shipping. need to order them separately ~20eur each




### kicad

in plot, checkSubtract soldermask from silkscreen
 means: remove silkscreen anywhere the board is not covered by soldermask.




## todo

12 3mmthick, 7mm diameter  washers needed.
~~order sheet metal at midnight
~~upload the fixed plates and cover to jlcpcb
~~route all traces
~~in kicad fix the nets which shouldn't exist. Is this due to the sames names or something else?
~polarity of the jst connector. currently red left, black right.
~~confirm nicenano dimentions: 35X19 is safe
~~recess the power switch and nicenano.
~~extrude cover in freecad
~~make cover in librecad
~~remove conductivity from the thickplate
~~make pcb edgecuts
~~10mm cutout for jst and battery connector on thick adn thinplate
~~add arrow keys to ergogen
~~add central space to ergogen
~~make a cutout for the battery in the pcb and it reduces the stiffness
~~0.5mm steel key retention plate
~~2.5mm aluminium stiffness plate with diodes underneath extending, into the hand area. only a cutout for the battery
~~1mm squashed eva foam and 0.5mm carbon fibre bash guard. 
~~quotes: https://www.printeurope.fr/en-gb/demande-de-devis, 
~~1mm eva foam filler layer: pcb=1.6mm, switch leg=3mm, protrusion = 1.4mm. 
~~kapton sheet ? 
~~add hotswap connections
~~move diodes between switches
~~convert ergogen to default pinout
~~build 5x12 firmare on actions.
~~add a 6th row in the shield
~~convert the 5x12 template to my name format and try to run
