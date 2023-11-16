#priority 510
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Immersive Engineering: Crusher : Remove");
    /*
        mods.immersiveengineering.Crusher.removeRecipesForInput(IItemstack input);
        mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:diamond>);
    */
    function remove_ingot_grit_recipes() {
        //copper
            mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:metal>);
        //aluminium
        //lead
        //silver
        //nickel
        //uranium
        //electrum
        //steel
    }

print("END: Immersive Engineering: Crusher : Remove");