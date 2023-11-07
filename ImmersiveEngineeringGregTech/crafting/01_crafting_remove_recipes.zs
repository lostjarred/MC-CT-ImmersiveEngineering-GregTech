#priority 510

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import scripts.ImmersiveEngineeringGregTech.Util_Functions as utils;

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

    function remove_crushedore_recipes() {
        val recipenamebase_string = "immersiveengineering:hammercrushing_";
        for ore in utils.get_gt_ore_array() { 
            var orename_string = ore.toLowerCase();
            var recipename_string = recipenamebase_string + orename_string;
            /*
                recipes.removeByRecipeName("modid:recipename");
            */
            print("removing recipe named " + recipename_string);
            recipes.removeByRecipeName(recipename_string);
        }
        //ie recipes
        //aluminium - baxite
            recipes.removeByRecipeName("immersiveengineering:hammercrushing_aluminum");
        //uranium
            recipes.removeByRecipeName("immersiveengineering:hammercrushing_uranium");
    }

    function remove_misc() {
        //treated wood
        recipes.removeByRecipeName("immersiveengineering:treated_wood/treated_wood");
    }

    remove_wire_recipes();
    remove_plate_recipes();
    remove_tool_recipes();
    remove_crushedore_recipes();
    remove_misc();

print("END: Immersive Engineering : Remove crafting recipes");