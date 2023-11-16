#priority 500
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Immersive Engineering: Furnace: Add");
    /*
        furnace.addRecipe(IItemStack output, IIngredient input, double xp);
    */
    function ore_ingot_add() {
        //coppper
            furnace.addRecipe(<gregtech:meta_ingot:25>, <immersiveengineering:ore>, 0.5);
        //aluminium - Needs blast furnace
        //lead
            furnace.addRecipe(<gregtech:meta_ingot:55>, <immersiveengineering:ore:2>, 0.5);
        //silver
            furnace.addRecipe(<gregtech:meta_ingot:100>, <immersiveengineering:ore:3>, 0.5);
        //nickel
            furnace.addRecipe(<gregtech:meta_ingot:69>, <immersiveengineering:ore:4>, 0.5);
        //uranium
            furnace.addRecipe(<gregtech:meta_ingot:116>, <immersiveengineering:ore:5>, 0.5);
    }
    
    ore_ingot_add();
print("END: Immersive Engineering: Furnace: Add");