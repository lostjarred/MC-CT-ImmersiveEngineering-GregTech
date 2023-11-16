#priority 500
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Immersive Engineering: Crusher : Add");
    
    /*
        mods.immersiveengineering.Crusher.addRecipe(IItemStack output, IIngredient input, int energy, @Optional IItemStack secondaryOutput, @Optional double secondaryChance);

        mods.immersiveengineering.Crusher.addRecipe(<minecraft:diamond>, <ore:logWood>, 2048);
        mods.immersiveengineering.Crusher.addRecipe(<minecraft:diamond>, <ore:logWood>, 2048, <minecraft:dirt>);
        mods.immersiveengineering.Crusher.addRecipe(<minecraft:diamond>, <ore:logWood>, 2048, <minecraft:dirt>, 0.5);
    */

    function add_ingot_dust_recipes() {
        val energy_int = 3600;

        //copper
            mods.immersiveengineering.Crusher.addRecipe(<gregtech:meta_dust:25>, <ore:ingotCopper>, energy_int);
        //aluminium
            mods.immersiveengineering.Crusher.addRecipe(<gregtech:meta_dust:2>, <ore:ingotAluminium>, energy_int);
        //lead
            mods.immersiveengineering.Crusher.addRecipe(<gregtech:meta_dust:55>, <ore:ingotLead>, energy_int);
        //silver
        //nickel
        //uranium
        //constantan
        //electrum
        //steel
    }

    add_ingot_dust_recipes();
print("END: Immersive Engineering: Crusher : Add");