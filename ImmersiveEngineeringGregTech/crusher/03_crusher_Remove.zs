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
            mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:metal:1>);
        //lead
            mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:metal:2>);
        //silver
            mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:metal:3>);
        //nickel
            mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:metal:4>);
        //uranium
            mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:metal:5>);
        //constantan
            //mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:metal:6>);
        //electrum
            mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:metal:7>);
        //steel
            mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:metal:8>);
        //iron
            mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:iron_ingot>);
        //gold
            mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:gold_ingot>);
    }

    function remove_misc_recipes() {
        //uranium ore
            mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:ore:5>);
        //bauxite
            mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:ore:1>);
    }
    
    remove_ingot_grit_recipes();
    remove_misc_recipes();

print("END: Immersive Engineering: Crusher : Remove");