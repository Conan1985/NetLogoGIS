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
