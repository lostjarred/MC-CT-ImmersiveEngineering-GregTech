====--Immersive Enigneering Gregtech compat--====
Crafttweaker scripts to add recipes from gregtech to immersive engineering

currently 
 - adds the ore veins from gregtech to the excavator
 - add ore to crushed ore, crushed ore to dust to the Crusher
 - add ablity to use the bottling machine to clean crushed ore and dust

Version 1.12.2

==-- Info --==
there are known visual problem with ore sample and excavtor due to the way Immersive Engineering handles this, 
Gregtech ore will apear invisable both in the excavator and ore samples there is currently not known fix

if you want more mineral veins to generate you need to adjust the chance in the immersive engineering config
    D:excavator_chance

==-- Craftweaker Proritys --==
1000 - util functions
910 - Excavator Remove Default veins
900 - Excavator Add Gregtech Veins
510 - Crusher Remove Ores, remove metal press plate recipes
500 - Crusher Add Ores, Bottler Clean Ores, add metal press plate recipes

==-- TODO list --==
Remove plate recipe using engineer hammer
Remove Ore Recipes using engineer hammer
Replace wire replace using snips
Replace <ore:plateAluminum> with <ore:plateAluminium> in recipes