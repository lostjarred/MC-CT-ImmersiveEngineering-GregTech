#priority 1510
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Immersive Engineering: Furnace: Remove");
    /*
        furnace.remove(IIngredient output, IIngredient input);
    */
    function ore_ingot_recipe_remove() {
        //coppper
            furnace.remove(<immersiveengineering:metal>, <immersiveengineering:ore>);
        //aluminium
            furnace.remove(<immersiveengineering:metal:1>, <immersiveengineering:ore:1>);
        //lead
            furnace.remove(<immersiveengineering:metal:2>, <immersiveengineering:ore:2>);
        //silver
            furnace.remove(<immersiveengineering:metal:3>, <immersiveengineering:ore:3>);
        //nickel
            furnace.remove(<immersiveengineering:metal:4>, <immersiveengineering:ore:4>);
        //uranium
            furnace.remove(<immersiveengineering:metal:5>, <immersiveengineering:ore:5>);
    }

    function dust_ingot_recipe_remove() {
        //coppper
            furnace.remove(<immersiveengineering:metal>, <immersiveengineering:metal:9>);
        //aluminium
            furnace.remove(<immersiveengineering:metal:1>, <immersiveengineering:metal:10>);
        //lead
            furnace.remove(<immersiveengineering:metal:2>, <immersiveengineering:metal:11>);
        //silver
            furnace.remove(<immersiveengineering:metal:3>, <immersiveengineering:metal:12>);
        //nickel
            furnace.remove(<immersiveengineering:metal:4>, <immersiveengineering:metal:13>);
        //uranium
            furnace.remove(<immersiveengineering:metal:5>, <immersiveengineering:metal:14>);
        //constantan
            //furnace.remove(<immersiveengineering:metal:6>, <immersiveengineering:metal:15>);
        //electrum
            furnace.remove(<immersiveengineering:metal:7>, <immersiveengineering:metal:16>);
        //steel
            furnace.remove(<immersiveengineering:metal:8>, <immersiveengineering:metal:17>);
    }


    ore_ingot_recipe_remove();
    dust_ingot_recipe_remove();
print("END: Immersive Engineering: Furnace: Remove");