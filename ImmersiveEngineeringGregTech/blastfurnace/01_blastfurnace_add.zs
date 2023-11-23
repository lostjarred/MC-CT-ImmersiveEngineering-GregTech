#priority 500
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Immersive Engineering Blast Furnace: Add");
    /*
        mods.immersiveengineering.BlastFurnace.addRecipe(IItemStack output, IIngredient input, int time, @Optional IItemStack slag);
        mods.immersiveengineering.BlastFurnace.addRecipe(<minecraft:diamond>, <ore:logWood>, 2000);
        mods.immersiveengineering.BlastFurnace.addRecipe(<minecraft:diamond>, <ore:logWood>, 2000, <minecraft:dirt>);
    */
    
    //steel ingot
        val gtsteelingot = <gregtech:meta_ingot:324>;
        val ieslag = <immersiveengineering:material:7>;
        mods.immersiveengineering.BlastFurnace.addRecipe(gtsteelingot, <ore:ingotIron>, 2000, ieslag);
        mods.immersiveengineering.BlastFurnace.addRecipe(gtsteelingot, <ore:dustSteel>, 2000, ieslag);
        
print("END: Immersive Engineering Blast Furnace: Add");