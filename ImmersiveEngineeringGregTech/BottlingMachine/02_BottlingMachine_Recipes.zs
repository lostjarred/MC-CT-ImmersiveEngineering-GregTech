#priority 500
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import scripts.ImmersiveEngineeringGregTech.Util_Functions as utils;

print("START: Immersive Engineering: Bottling Machine: Recipes");
    /*
        mods.immersiveengineering.BottlingMachine.addRecipe(IItemStack output, IIngredient input, ILiquidStack fluid);
        mods.immersiveengineering.BottlingMachine.addRecipe(<minecraft:diamond>, <ore:logWood>, <liquid:water>);
    */
    //add recipe for paper using chad
        val gt_chad = <gregtech:meta_dust:1618>; 
        mods.immersiveengineering.BottlingMachine.addRecipe(<minecraft:paper>, gt_chad, <liquid:water> * 100);
print("END: Immersive Engineering: Bottling Machine: Recipes");