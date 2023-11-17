#priority 510
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Immersive Engineering: Arc Furnace: Remove");
    /*
        //Example:
        mods.immersiveengineering.ArcFurnace.removeRecipe(IItemstack output);
        mods.immersiveengineering.ArcFurnace.removeRecipe(<minecraft:diamond>);
    */
    function remove_ores_recipe() {
        //coppper
            mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal>);
        //aluminium
            mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:1>);
        //lead
        //silver
        //nickel
        //uranium
    }

    remove_ores_recipe();

print("END: Immersive Engineering: Arc Furnace: Remove");