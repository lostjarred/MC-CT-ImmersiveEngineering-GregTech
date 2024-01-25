#priority 1500
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import scripts.ImmersiveEngineeringGregTech.Util_Functions as utils;

print("START: Immersive Engineering: Bottling Machine: Recipes");
    /*
        mods.immersiveengineering.BottlingMachine.addRecipe(IItemStack output, IIngredient input, ILiquidStack fluid);
        mods.immersiveengineering.BottlingMachine.addRecipe(<minecraft:diamond>, <ore:logWood>, <liquid:water>);
    */
    //paper
        //add recipe for paper using chad
            mods.immersiveengineering.BottlingMachine.addRecipe(<minecraft:paper>, <ore:dustPaper>, <liquid:water> * 100);
        //add recipe for paper using woodpulp
            mods.immersiveengineering.BottlingMachine.addRecipe(<minecraft:paper>, <ore:dustWood>, <liquid:water> * 100);
print("END: Immersive Engineering: Bottling Machine: Recipes");