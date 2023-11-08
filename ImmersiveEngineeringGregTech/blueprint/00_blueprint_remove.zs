#priority 510

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Immersive Engineering : Blueprint : remove ");

//remove vacuum tube
    /*
        mods.immersiveengineering.Blueprint.removeRecipe(IItemStack output);
        mods.immersiveengineering.Blueprint.removeRecipe(<minecraft:diamond>);
    */
    val ievacuumtube = <immersiveengineering:material:26>;
    mods.immersiveengineering.Blueprint.removeRecipe(ievacuumtube);
//remove ie circuitboard
    val iecircuitboard = <immersiveengineering:material:27>;
    mods.immersiveengineering.Blueprint.removeRecipe(iecircuitboard);

print("END: Immersive Engineering : Blueprint : remove ");