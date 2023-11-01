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

    function remove_plate_recipes() {
        //copper
            recipes.remove(<immersiveengineering:metal:30>);
        //aluminium
            recipes.remove(<immersiveengineering:metal:31>);
        //lead
            recipes.remove(<immersiveengineering:metal:32>);
        //silver
            recipes.remove(<immersiveengineering:metal:33>);
        //nickel
            recipes.remove(<immersiveengineering:metal:34>);
        //uranium
            recipes.remove(<immersiveengineering:metal:35>);
        //constantan
            recipes.remove(<immersiveengineering:metal:36>);
        //electrum
            recipes.remove(<immersiveengineering:metal:37>);
        //steel
            recipes.remove(<immersiveengineering:metal:38>);
        //iron
            recipes.remove(<immersiveengineering:metal:39>);
        //gold
            recipes.remove(<immersiveengineering:metal:40>);
    }

    function remove_tool_recipes() {
        //steel
            //pickaxe
                recipes.remove(<immersiveengineering:pickaxe_steel>);
            //shovel
                recipes.remove(<immersiveengineering:shovel_steel>);
            //axe
                recipes.remove(<immersiveengineering:axe_steel>);
            //hoe
                recipes.remove(<immersiveengineering:hoe_steel>);
            //sword
                recipes.remove(<immersiveengineering:sword_steel>);
    }



    remove_wire_recipes();
    remove_plate_recipes();
    remove_tool_recipes();

print("END: Immersive Engineering : Remove crafting recipes");