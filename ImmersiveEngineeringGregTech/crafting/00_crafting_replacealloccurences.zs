#priority 900
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Crafting : Replace all occurences");
    //recipes.replaceAllOccurences(IIngredient toReplace, IIngredient replaceWith, @Optional IIngredient forOutput);
    //replace Aluminum
        //ingot
            recipes.replaceAllOccurences(<ore:ingotAluminum>, <ore:ingotAluminium>);
        //rod
            recipes.replaceAllOccurences(<ore:stickAluminum>, <ore:stickAluminium>);
        //plate
            recipes.replaceAllOccurences(<ore:plateAluminum>, <ore:plateAluminium>);
    //replace wire in recipes
        //coppper
        recipes.replaceAllOccurences(<ore:wireCopper>, <ore:wireGtSingleCopper>);
        //electrum
        recipes.replaceAllOccurences(<ore:wireElectrum>, <ore:wireGtSingleElectrum>);
        //aluminum
        recipes.replaceAllOccurences(<ore:wireAluminum>, <ore:wireGtSingleAluminium>);
        //steel
        recipes.replaceAllOccurences(<ore:wireSteel>, <ore:wireGtSingleSteel>);
    //replace vacuum tube
        val gtvacumtube = <gregtech:meta_item_1:516>;
        recipes.replaceAllOccurences(<immersiveengineering:material:26>, gtvacumtube);
    //replace circuit board
        recipes.replaceAllOccurences(<immersiveengineering:material:27>, <ore:circuitLv>);
    //replace constantantan with cupronickel
        //ingot
            val IE_constantan_ingot = <immersiveengineering:metal:6>;
            val GT_cupronickel_ingot = <gregtech:meta_ingot:274>;
            recipes.replaceAllOccurences(IE_constantan_ingot, GT_cupronickel_ingot);
        //plate
            val IE_constantan_plate = <immersiveengineering:metal:36>;
            val GT_cupronickel_plate = <gregtech:meta_plate:274>;
            recipes.replaceAllOccurences(IE_constantan_plate, GT_cupronickel_plate);

print("END: Crafting : Replace all occurences");