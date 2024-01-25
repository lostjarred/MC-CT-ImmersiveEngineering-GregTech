#priority 1500

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Immersive Engineering : Blueprint : add ");

/*
    //Example:
    mods.immersiveengineering.Blueprint.addRecipe(String category, IItemStack output, IIngredient[] inputs);

    //Using an existing Category String
    mods.immersiveengineering.Blueprint.addRecipe("components", <minecraft:diamond>, [<ore:logWood>, <minecraft:dirt>]);

    //Using a new Category String (This generates a new Blueprint item)
    mods.immersiveengineering.Blueprint.addRecipe("Banana Pancakes", <minecraft:diamond>, [<ore:logWood>, <minecraft:dirt>]);
*/

//ulv recipes
    val ulvblueprint = "ULV Components";
    //ulv machine casing
        val gtulvcasing = <gregtech:machine_casing>;
        mods.immersiveengineering.Blueprint.addRecipe(ulvblueprint, gtulvcasing,
            [<ore:plateWroughtIron> * 8]
        );
    //vacuum tube
        val gtvacuumtube = <gregtech:meta_item_1:516>;
        val gtglasstube = <gregtech:meta_item_1:517>;
        mods.immersiveengineering.Blueprint.addRecipe(ulvblueprint, gtvacuumtube * 2,
            [<ore:boltSteel> * 2, gtglasstube, <ore:wireGtSingleCopper>]
        );
    //glass tubes
        mods.immersiveengineering.Blueprint.addRecipe(ulvblueprint, gtglasstube,
            [<ore:blockGlass>]
        );
//lv Recipes
    val lvblueprint = "LV Components";
    //lv machine casing
        val gtlvcasing = <gregtech:machine_casing:1>;
        mods.immersiveengineering.Blueprint.addRecipe(lvblueprint, gtlvcasing,
            [<ore:plateSteel> * 8]
        );
    //resistor
        val gtresistor = <gregtech:meta_item_1:519>;
        val gtstickyresin = <gregtech:meta_item_1:438>;
        //charcoal
            mods.immersiveengineering.Blueprint.addRecipe(lvblueprint, gtresistor * 2,
                [gtstickyresin, <ore:wireFineCopper>, <ore:dustCharcoal>, <ore:paper>]
            );
        //coal
            mods.immersiveengineering.Blueprint.addRecipe(lvblueprint, gtresistor * 2,
                [gtstickyresin, <ore:wireFineCopper>, <ore:dustCoal>, <ore:paper>]
            );
    //circuit board
        val gtcoatedcircuit = <gregtech:meta_item_1:381>;
        val gtlvcircuitboard = <gregtech:meta_item_1:401>;
        mods.immersiveengineering.Blueprint.addRecipe(lvblueprint, gtlvcircuitboard,
                [gtcoatedcircuit, <ore:foilCopper> * 4]
        );
    //lv circuit
        val gtlvcircuit = <gregtech:meta_item_1:621>;
        mods.immersiveengineering.Blueprint.addRecipe(lvblueprint, gtlvcircuit * 2,
                [gtlvcircuitboard, gtresistor * 2, <ore:wireGtSingleRedAlloy> * 2, <ore:circuitUlv> * 2]
        );
    //steel frame box 
        val gtsteelframeboc = <gregtech:meta_block_frame_20:4>;
        mods.immersiveengineering.Blueprint.addRecipe(lvblueprint, gtsteelframeboc * 2,
                [<ore:stickSteel> * 8]
        );

print("END: Immersive Engineering : Blueprint : add ");