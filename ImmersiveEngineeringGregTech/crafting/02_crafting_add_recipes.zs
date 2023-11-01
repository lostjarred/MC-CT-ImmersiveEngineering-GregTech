#priority 500

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import scripts.ImmersiveEngineeringGregTech.Util_Functions as utils;

print("START: Immersive Engineering : Add crafting recipes");
    //recipes.addShaped(output,inputs,function,action);
    function add_tool_recipes() {
        //steel
            //pickaxe
                recipes.addShaped(<immersiveengineering:pickaxe_steel>, utils.gen_pickaxe_recipe(<ore:plateSteel>, <ore:ingotSteel>) );
            //shovel
                recipes.addShaped(<immersiveengineering:shovel_steel>, utils.gen_shovel_recipe(<ore:plateSteel>) );
            //axe
                recipes.addShaped(<immersiveengineering:axe_steel>, utils.gen_axe_recipe(<ore:plateSteel>, <ore:ingotSteel>) );
            //hoe
                recipes.addShaped(<immersiveengineering:hoe_steel>, utils.gen_hoe_recipe(<ore:plateSteel>, <ore:ingotSteel>) );
            //sword
                recipes.addShaped(<immersiveengineering:sword_steel>, utils.gen_sword_recipe(<ore:plateSteel>) );
    }
    add_tool_recipes();

print("END: Immersive Engineering : Add crafting recipes");