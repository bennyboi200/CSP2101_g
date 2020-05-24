#!/bin/bash
#The -e (enhanced expression) tells the sed command that the following is multiple commands, and not just one.
#The "1d" tells the sed command to delete the first line of the rectangle.txt file
#The first command tells sed to substitute (using s) the beginning of each line (using /^) with Name: (using /Name: ).
#The ; acts as a delimiter. The command then deletes the commas in the original text by substituting the commas with nothing. 
#\t\t is then used. \ is used so that sed does not confuse them with /. \t\t adds the space that separates each measurement - height, width, area, colour.
#The same is then done for each measurement. The only difference being ^ is not used for each other measurement, because they are not being appended to the beginning of each line.
#These changes are then outputted to a file called rectangle_f.txt, so that rectangle.txt remains in its original state.
#Finally, cat rectangle_f.txt is added as a quality of life change, meaning the user does not have to separately type that each time they want to see the changes sed has made. It will just automatically come up. 
sed -e "1d" \
   -e 's/^/Name: /;s/,/ \t\tHeight: /;s/,/ \t\tWidth: /;s/,/ \t\tArea: /;s/,/ \t\tColour: /' rectangle.txt > rectangle_f.txt
   cat rectangle_f.txt