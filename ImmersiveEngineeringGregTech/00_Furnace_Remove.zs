#priority 510
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
        //silver
        //nickel
        //uranium
        //constantan
        //electrum
        //steel
    }


    ore_ingot_recipe_remove();
print("END: Immersive Engineering: Furnace: Remove");