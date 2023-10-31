#priority 510

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Immersive Engineering : Remove crafting recipes");
    //recipes.remove(output, NBTMatch);
    function remove_wire_recipes() {
        //copper
            recipes.remove(<immersiveengineering:material:20>);
        //electrum
            recipes.remove(<immersiveengineering:material:21>);
        //aluminium
            recipes.remove(<immersiveengineering:material:22>);
        //steel
            recipes.remove(<immersiveengineering:material:23>);
    }



    remove_wire_recipes();

print("END: Immersive Engineering : Remove crafting recipes");