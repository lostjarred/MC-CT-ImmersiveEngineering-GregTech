#priority 500
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Immersive Engineering: Furnace: Add");
    /*
        furnace.addRecipe(IItemStack output, IIngredient input, double xp);
    */
    function ore_ingot_add() {
        //coppper
            furnace.addRecipe(<gregtech:meta_ingot:25>, <ore:oreCopper>, 0.5);
        //aluminium - Needs blast furnace
        //lead
            furnace.addRecipe(<gregtech:meta_ingot:55>, <ore:oreLead>, 0.5);
        //silver
            furnace.addRecipe(<gregtech:meta_ingot:100>, <ore:oreSilver>, 0.5);
        //nickel
        //uranium
    }
    
    ore_ingot_add();
print("END: Immersive Engineering: Furnace: Add");