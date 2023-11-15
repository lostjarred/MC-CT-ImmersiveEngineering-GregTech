#priority 510
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Immersive Engineering Metal Press: Remove Rods");
    /*
        mods.immersiveengineering.MetalPress.removeRecipe(IItemstack output);
        mods.immersiveengineering.MetalPress.removeRecipe(<minecraft:diamond>);
    */
    //iron
        mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:material:1>);
    //steel
        mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:material:2>);
    //aluminium
print("END: Immersive Engineering Metal Press: Remove Rods");