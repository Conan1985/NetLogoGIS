;;  Youwei Lu

extensions [ gis ]

globals [ pa-counties ]

patches-own [
          random-n
          centroid
          ID
          population
]

to setup-map
  ;;  Load the dataset
  set pa-counties gis:load-dataset "data/PaCounty2019_07.shp"
  ;;  Set the world envelope
  gis:set-world-envelope (gis:envelope-of pa-counties)

  ;;  Loop through the patches and find centroid and set ID
  let i 1
  foreach gis:feature-list-of pa-counties [ feature ->
   ask patches gis:intersecting feature [
      set centroid gis:location-of gis:centroid-of feature
       ask patch item 0 centroid item 1 centroid [
       set ID i
     ]
    ]
    set i i + 1
   ]

  ask patches with [ID > 0] [
    ;;  Set initial random number
;    set random-n random-float 10
;    ;;  Color the patches
;    ifelse random-n >= 5
;    [
;      gis:set-drawing-color red gis:fill item (ID - 1) gis:feature-list-of pa-counties 2.0
;    ]
;    [
;      gis:set-drawing-color blue gis:fill item (ID - 1) gis:feature-list-of pa-counties 2.0
;    ]

    (ifelse
      ID = 1 [
        ; Adams County
       set population 101407
       draw-color
      ]
      ID = 2 [
        ; Allegheny County
        set population 1223348
        draw-color
      ]
      ID = 3 [
        ; Armstrong County
        set population 68941
        draw-color
      ]
      ID = 4 [
        ; Beaver County
        set population 170539
        draw-color
      ]
      ID = 5 [
        ; Bedford County
        set population 49762
        draw-color
      ]
      ID = 6 [
        ; Berks County
        set population 411442
        draw-color
      ]
      ID = 7 [
        ; Blair County
        set population 127089
        draw-color
      ]
      ID = 8 [
        ; Bradford County
        set population 62622
        draw-color
      ]
      ID = 9 [
        ; Bucks County
        set population 625249
        draw-color
      ]
      ID = 10 [
        ; Butler County
        set population 183862
        draw-color
      ]
      ID = 11 [
        ; Cambria County
        set population 143679
        draw-color
      ]
      ID = 12 [
        ; Cameron County
        set population 5085
        draw-color
      ]
      ID = 13 [
        ; Carbon County
        set population 65249
        draw-color
      ]
      ID = 14 [
        ; Centre County
        set population 153990
        draw-color
      ]
      ID = 15 [
        ; Chester County
        set population 498886
        draw-color
      ]
      ID = 16 [
        ; Clarion County
        set population 39988
        draw-color
      ]
      ID = 17 [
        ; Clearfield County
        set population 81642
        draw-color
      ]
      ID = 18 [
        ; Clinton County
        set population 39238
        draw-color
      ]
      ID = 19 [
        ; Columbia County
        set population 67295
        draw-color
      ]
      ID = 20 [
        ; Crawford County
        set population 88765
        draw-color
      ]
      ID = 21 [
        ; Cumberland County
        set population 235406
        draw-color
      ]
      ID = 22 [
        ; Dauphin County
        set population 268100
        draw-color
      ]
      ID = 23 [
        ; Delaware County
        set population 558979
        draw-color
      ]
      ID = 24 [
        ; Elk County
        set population 31946
        draw-color
      ]
      ID = 25 [
        ; Erie County
        set population 280566
        draw-color
      ]
      ID = 26 [
        ; Fayette County
        set population 136606
        draw-color
      ]
      ID = 27 [
        ; Forest County
        set population 7716
        draw-color
      ]
      ID = 28 [
        ; Franklin County
        set population 149618
        draw-color
      ]
      ID = 29 [
        ; Fulton County
        set population 14845
        draw-color
      ]
      ID = 30 [
        ; Greene County
        set population 38686
        draw-color
      ]
      ID = 31 [
        ; Huntingdon County
        set population 45913
        draw-color
      ]
      ID = 32 [
        ; Indiana County
        set population 88880
        draw-color
      ]
      ID = 33 [
        ; Jefferson County
        set population 45200
        draw-color
      ]
      ID = 34 [
        ; Juniata County
        set population 24636
        draw-color
      ]
      ID = 35 [
        ; Lackawanna County
        set population 214437
        draw-color
      ]
      ID = 36 [
        ; Lancaster County
        set population 519445
        draw-color
      ]
      ID = 37 [
        ; Lawrence County
        set population 91108
        draw-color
      ]
      ID = 38 [
        ; Lebanon County
        set population 133568
        draw-color
      ]
      ID = 39 [
        ; Lehigh County
        set population 349497
        draw-color
      ]
      ID = 40 [
        ; Luzerne County
        set population 320918
        draw-color
      ]
      ID = 41 [
        ; Lycoming County
        set population 116111
        draw-color
      ]
      ID = 42 [
        ; McKean County
        set population 43450
        draw-color
      ]
      ID = 43 [
        ; Mercer County
        set population 116638
        draw-color
      ]
      ID = 44 [
        ; Mifflin County
        set population 46682
        draw-color
      ]
      ID = 45 [
        ; Monroe County
        set population 169842
        draw-color
      ]
      ID = 46 [
        ; Montgomery County
        set population 799874
        draw-color
      ]
      ID = 47 [
        ; Montour County
        set population 18267
        draw-color
      ]
      ID = 48 [
        ; Northampton County
        set population 297735
        draw-color
      ]
      ID = 49 [
        ; Northumberland County
        set population 94528
        draw-color
      ]
      ID = 50 [
        ; Perry County
        set population 45969
        draw-color
      ]
      ID = 51 [
        ; Pike County
        set population 57369
        draw-color
      ]
      ID = 52 [
        ; Potter County
        set population 17457
        draw-color
      ]
      ID = 53 [
        ; Schuylkill County
        set population 148289
        draw-color
      ]
      ID = 54 [
        ; Snyder County
        set population 39702
        draw-color
      ]
      ID = 55 [
        ; Somerset County
        set population 77742
        draw-color
      ]
      ID = 56 [
        ; Sullivan County
        set population 6428
        draw-color
      ]
      ID = 57 [
        ; Susquehanna County
        set population 43356
        draw-color
      ]
      ID = 58 [
        ; Tioga County
        set population 41981
        draw-color
      ]
      ID = 59 [
        ; Union County
        set population 44947
        draw-color
      ]
      ID = 60 [
        ; Venango County
        set population 54984
        draw-color
      ]
      ID = 61 [
        ; Warren County
        set population 41815
        draw-color
      ]
      ID = 62 [
        ; Washington County
        set population 207820
        draw-color
      ]
      ID = 63 [
        ; Wayne County
        set population 52822
        draw-color
      ]
      ID = 64 [
        ; Westmoreland County
        set population 365169
        draw-color
      ]
      ID = 65 [
        ; Wyoming County
        set population 28276
        draw-color
      ]
      ID = 66 [
        ; York County
        set population 434972
        draw-color
      ]
      ID = 67 [
        ; Philadelphia County
        set population 1526006
        draw-color
      ]
    )

  ]
  ;;  Draw the outline of the counties in white
  gis:set-drawing-color white
  gis:draw pa-counties 1

  reset-ticks
end

to draw-color
  (ifelse
    population <= 10000 [
      gis:set-drawing-color gray gis:fill item (ID - 1) gis:feature-list-of pa-counties 2.0
    ]
    population <= 50000 [
      gis:set-drawing-color green gis:fill item (ID - 1) gis:feature-list-of pa-counties 2.0
    ]
    population <= 100000 [
      gis:set-drawing-color blue gis:fill item (ID - 1) gis:feature-list-of pa-counties 2.0
    ]
    population <= 500000 [
      gis:set-drawing-color orange gis:fill item (ID - 1) gis:feature-list-of pa-counties 2.0
    ]
    population <= 1000000 [
      gis:set-drawing-color red gis:fill item (ID - 1) gis:feature-list-of pa-counties 2.0
    ]


    )
end

to clear
  clear-all
  reset-ticks
end
@#$#@#$#@
GRAPHICS-WINDOW
210
10
855
656
-1
-1
13.0
1
10
1
1
1
0
1
1
1
-24
24
-24
24
0
0
1
ticks
30.0

BUTTON
67
62
130
95
NIL
clear
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
53
10
143
43
NIL
setup-map
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

@#$#@#$#@
## WHAT IS IT?

This model demonstrates the integration of GIS information with the NetLogo language. This specific model utilizes the polygons from a Pennsylvania shapefile as agents, rather than turtles. 

The counties are downloaded from https://www.pasda.psu.edu/uci/DataSummary.aspx?dataset=24

The population data is retrieved from 
https://en.wikipedia.org/wiki/List_of_counties_in_Pennsylvania#cite_note-7

## HOW IT WORKS
The underlying NetLogo patch coordinate system is not directly aware of the location of each polygon. To remedy this, the centroid of each polygon is found. The patch underlying the centroid location is then assigned all values of the polygon. By default, NetLogo initializes variables not assigned a value to the value of 0. Using this feature, it is possible to ask all patches with an ID greater than 0 to perform some task. 

## HOW TO USE IT

Two buttons are placed in the interface tab. To use the model, first click the setup-map button to load the GIS information and draw the map. Clicking the clear button runs the model.

## EXTENDING THE MODEL

To extend the model, simply utilize a file that is supported through the GIS extension in NetLogo. The GIS extension is including in the NetLogo download by default.


## RELATED MODELS

The Ticket Sales model is another interesting example of the integration of GIS and NetLogo. The model uses street and population data to construct an accurate representation of a New York City neighborhood. This model can be found by navigating to the IABM Textbook example from chapter 8 in the Models Library.
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270
@#$#@#$#@
NetLogo 6.1.1
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180
@#$#@#$#@
0
@#$#@#$#@
