====--Immersive Enigneering Gregtech compat--====
Crafttweaker scripts to add recipes from gregtech to immersive engineering

currently 
 - adds the ore veins from gregtech to the excavator
 - add ore to crushed ore, crushed ore to dust to the Crusher
 - add ablity to use the bottling machine to clean crushed ore and dust
 - replaces tool recipes to be more like gregtech recipes just has the file and hammer reversed to avoid recipe conflicts
 - replaces plates for the metal press
 - replaces wires and gear recipes (ATM makes gears and wires require plates)
 - replaces ie wire with gt 1x wires for crafting
 - replaces plateAluminum with plateAluminium in crafting recipes

Version 1.12.2

==-- Info --==
there are known visual problem with ore sample and excavtor due to the way Immersive Engineering handles this, 
Gregtech ore will apear invisable both in the excavator and ore samples there is currently not known fix

==--Config Changes--==
if you want more mineral veins to generate you need to adjust the chance in the immersive engineering config
    D:excavator_chance

suggest changing this to 
# A list of preferred Mod IDs that results of IE processes should stem from, aka which mod you want the copper to come from.
# This affects the ores dug by the excavator, as well as those crushing recipes that don't have associated IE items. This list is in oreder of priority.
    S:preferredOres <
        gregtech
        immersiveengineering
     >

==-- Craftweaker Priority's --==
1000 -  util functions

910 -   Excavator Remove Default veins

900 -   Excavator Add Gregtech Veins, 
        crafting replace all occurances
        add oredict

510 -   Crusher Remove Ores, 
        remove metal press plate recipes
        remove metal press gear recipes
        remove recipes
        remove blueprint recipes
        metal press remove rods
        remove furnace recipes
        crusher remove recipes
        remove arc furnace recipes
        remove blast furnace recipes

500 -   Crusher Add Ores
        Bottler Clean Ores
        add metal press plate recipes
        add metal press gear recipes
        add metal press wire recipes
        add crafting recipes
        add blueprint recipes
        add crusher recipes
        add furnace recipes
        add arc furnace recipes
        replace metal press rod recipes
        add blast furnace recipes

100 - JEI Hide

==-- TODO list --==
    Add configs changes for toolbox

    Add bottling recipe for cables
        -ulv
        -lv
        -mv
    Replace Mixing recipe for concrete - change from IE to GT

    Metal Press 
        - add iron rods
        - add steel rods
        - add alumium rods

    Replace crusher recipes ingot to dust
    Replace grit to ingot recipes 
    Add Bio diesel to GT Combustion
    Add GT Fuels to engine

    ? Alloy Kiln ?
        - Add Recipes ?
    Rename Biodisel - Biocrude?

    Remove crusher recipes for gt ore varients e.g. grandnite iron ore
    Replace Arc Furnace ingot Recipes     