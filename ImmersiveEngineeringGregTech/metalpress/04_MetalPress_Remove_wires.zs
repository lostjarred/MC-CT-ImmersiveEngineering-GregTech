#priority 1510
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Immersive Engineering Metal Press: Remove Wires");
    /*
        mods.immersiveengineering.MetalPress.removeRecipe(IItemstack output);
        mods.immersiveengineering.MetalPress.removeRecipe(<minecraft:diamond>);
    */
    //copper
        mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:material:20>);
    //electrum
        mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:material:21>);
    //aluminium
        mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:material:22>);
    //steel
        mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:material:23>);
print("END: Immersive Engineering Metal Press: Remove Wires");