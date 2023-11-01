#priority 510
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import scripts.ImmersiveEngineeringGregTech.Util_Functions as utils;

print("START: Immersive Engineering Ore Processing Crusher Script: Remove Gregtech Ore ");

function removeOreprocess_Crusher(orename as string) {
    //turn string into oredict, for though oredict to get iitemstacks 
    
    //ore names
        var endore_name = "oreEndstone" + orename;
        var ore_name = "ore" + orename;
        var netherore_name = "oreNetherrack" + orename;
    //ore oredicts
        var end_oredict = oreDict.get(endore_name);
        var ore_oredict = oreDict.get(ore_name);
        var nether_oredict = oreDict.get(netherore_name);
    //for loops
        for ore in end_oredict.items {
            RemoveCrusherRecipe(ore);
        }

        for ore in ore_oredict.items {
            RemoveCrusherRecipe(ore);
        }

        for ore in nether_oredict.items {
            RemoveCrusherRecipe(ore);
        }
}


/*
    mods.immersiveengineering.Crusher.removeRecipesForInput(IItemstack input);

    mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:diamond>);
*/

function RemoveCrusherRecipe(input as IItemStack) {
    print("removing crusher recipe for " +  input.commandString);
    mods.immersiveengineering.Crusher.removeRecipesForInput(input);
}

//for loop for ores
for orestring in utils.get_gt_ore_array() {
    removeOreprocess_Crusher(orestring);
}
print("END: Immersive Engineering Ore Processing Crusher Script: Remove Gregtech Ore ");