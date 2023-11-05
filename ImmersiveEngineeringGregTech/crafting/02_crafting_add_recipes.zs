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

    function add_blueprint_recipes() {
        //ulv blueprint
            recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "ULV Components"}), 
            [
                [<ore:plateWroughtIron>, <ore:blockGlass>, <ore:boltSteel>],
                [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
                [<ore:paper>, <ore:paper>, <ore:paper>]
            ]);
        //lv blueprint
            val gtvacuumtube = <gregtech:meta_item_1:516>;
            recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "LV Components"}), 
            [
                [<ore:plateSteel>, gtvacuumtube, <ore:wireGtSingleCopper>],
                [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
                [<ore:paper>, <ore:paper>, <ore:paper>]
            ]);
    }

    function add_misc_recipes() {
        //add recipe using rubber for conveyor belt
        recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 8, 
            [
                [<ore:plateRubber>, <ore:plateRubber>, <ore:plateRubber>],
                [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]
            ]);
    }
    
    add_tool_recipes();
    add_blueprint_recipes();
    add_misc_recipes();
print("END: Immersive Engineering : Add crafting recipes");