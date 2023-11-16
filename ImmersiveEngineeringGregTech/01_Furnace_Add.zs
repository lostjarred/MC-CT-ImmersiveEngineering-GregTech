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

    function grit_ingot_add() {
        //coppper
            furnace.addRecipe(<gregtech:meta_ingot:25>, <immersiveengineering:metal:9>, 0.5);
        //aluminium - needs blast furnace
        //lead
            furnace.addRecipe(<gregtech:meta_ingot:55>, <immersiveengineering:metal:11>, 0.5);
        //silver
            furnace.addRecipe(<gregtech:meta_ingot:100>, <immersiveengineering:metal:12>, 0.5);
        //nickel
            furnace.addRecipe(<gregtech:meta_ingot:69>, <immersiveengineering:metal:13>, 0.5);
        //uranium
        //constantan
            //furnace.remove(<immersiveengineering:metal:6>, <immersiveengineering:metal:15>);
        //electrum
        //steel - needs blast furnace
    }
    
    ore_ingot_add();
    grit_ingot_add();
print("END: Immersive Engineering: Furnace: Add");