#priority 1510
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Immersive Engineering Metal Press: Remove Rods");
    /*
        mods.immersiveengineering.MetalPress.removeRecipe(IItemstack output);
        mods.immersiveengineering.MetalPress.removeRecipe(<minecraft:diamond>);
    */
    function remove_metal_press_rod_recipes() {
        //Immersive engineering
            //iron
                mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:material:1>);
            //steel
                mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:material:2>);
            //aluminium
                mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:material:3>);
    }

    remove_metal_press_rod_recipes();
print("END: Immersive Engineering Metal Press: Remove Rods");