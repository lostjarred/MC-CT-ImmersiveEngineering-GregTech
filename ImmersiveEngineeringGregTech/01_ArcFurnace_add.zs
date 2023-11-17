#priority 500
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Immersive Engineering: Arc Furnace: Add");
    /*
        mods.immersiveengineering.ArcFurnace.addRecipe(IItemStack output, IIngredient input, IItemStack slag, int time, int energyPerTick, @Optional IIngredient[] additives, @Optional String specialRecipeType);

    mods.immersiveengineering.ArcFurnace.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:dirt>, 2000, 2048);
    mods.immersiveengineering.ArcFurnace.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:dirt>, 2000, 2048, [<ore:oreIron>, <ore:oreGold>]);
    mods.immersiveengineering.ArcFurnace.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:dirt>, 2000, 2048, [<ore:oreIron>, <ore:oreGold>], "Ores");
    mods.immersiveengineering.ArcFurnace.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:dirt>, 2000, 2048, [<ore:oreIron>, <ore:oreGold>], "Alloying");
    */
    function ore_ingot_recipe_add() {
        val energy_ticks = 512;
        val time_ticks = 200;
        val slag_item = <immersiveengineering:material:7>;
        //coppper
            mods.immersiveengineering.ArcFurnace.addRecipe(<gregtech:meta_ingot:25> * 2, <ore:oreCopper>, slag_item, time_ticks, energy_ticks);
        //lead
            mods.immersiveengineering.ArcFurnace.addRecipe(<gregtech:meta_ingot:55> * 2, <ore:oreLead>, slag_item, time_ticks, energy_ticks);
        //silver
            mods.immersiveengineering.ArcFurnace.addRecipe(<gregtech:meta_ingot:100> * 2, <ore:oreSilver>, slag_item, time_ticks, energy_ticks);
        //nickel
            mods.immersiveengineering.ArcFurnace.addRecipe(<gregtech:meta_ingot:69> * 2, <ore:oreNickel>, slag_item, time_ticks, energy_ticks);
        //uranium
            mods.immersiveengineering.ArcFurnace.addRecipe(<gregtech:meta_ingot:116> * 2, <ore:oreUranium>, slag_item, time_ticks, energy_ticks);
    }
    
    function alloy_recipe_add() {
        val energy_ticks = 512;
        val time_ticks = 100;
        val slag_item = <immersiveengineering:material:7>;
        //electrum
    }

    function dust_ingot_recipe_add() {
        val energy_ticks = 512;
        val time_ticks = 200;
        val slag_item = <immersiveengineering:material:7>;
        //aluminium
            mods.immersiveengineering.ArcFurnace.addRecipe(<gregtech:meta_ingot:2>, <ore:dustAluminium>, slag_item, time_ticks, energy_ticks);
        //steel
    }

    ore_ingot_recipe_add();
    alloy_recipe_add();
    dust_ingot_recipe_add();

print("END: Immersive Engineering: Arc Furnace: Add");