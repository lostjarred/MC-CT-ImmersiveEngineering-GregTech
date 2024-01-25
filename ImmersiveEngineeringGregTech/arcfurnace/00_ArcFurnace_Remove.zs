#priority 1510
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
            mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:2>);
        //silver
            mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:3>);
        //nickel
            mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:4>);
        //uranium
            mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:5>);
    }

    function remove_alloy_recipes() {
        //steel
            mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:8>);
        //electrum
            mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:7>);
    }

    remove_ores_recipe();
    remove_alloy_recipes();

print("END: Immersive Engineering: Arc Furnace: Remove");