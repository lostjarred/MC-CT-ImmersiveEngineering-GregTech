#priority 500

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*
    //Example:
    mods.immersiveengineering.Blueprint.addRecipe(String category, IItemStack output, IIngredient[] inputs);

    //Using an existing Category String
    mods.immersiveengineering.Blueprint.addRecipe("components", <minecraft:diamond>, [<ore:logWood>, <minecraft:dirt>]);

    //Using a new Category String (This generates a new Blueprint item)
    mods.immersiveengineering.Blueprint.addRecipe("Banana Pancakes", <minecraft:diamond>, [<ore:logWood>, <minecraft:dirt>]);
*/

//ulv recipes
    val ulvblueprint = "ULV Components";
    //ulv machine casing
        val gtulvcasing = <gregtech:machine_casing>;
        mods.immersiveengineering.Blueprint.addRecipe(ulvblueprint, gtulvcasing,
        [<ore:plateWroughtIron> * 8]
        );