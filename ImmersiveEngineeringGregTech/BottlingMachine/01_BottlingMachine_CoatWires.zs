#priority 500
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import scripts.ImmersiveEngineeringGregTech.Util_Functions as utils;

print("START: Immersive Engineering: Bottling Machine: Coat wires ");
    /*
        mods.immersiveengineering.BottlingMachine.addRecipe(IItemStack output, IIngredient input, ILiquidStack fluid);
        mods.immersiveengineering.BottlingMachine.addRecipe(<minecraft:diamond>, <ore:logWood>, <liquid:water>);
    */
    function coat1xwire(output as IItemStack, input as IIngredient) {
        val rubber_liquid = <liquid:rubber> * 144;
        mods.immersiveengineering.BottlingMachine.addRecipe(output, input, rubber_liquid);
    }

    function coat2xwire(output as IItemStack, input as IIngredient) {
        val rubber_liquid = <liquid:rubber> * 144;
        mods.immersiveengineering.BottlingMachine.addRecipe(output, input, rubber_liquid);
    }

    function coat4xwire(output as IItemStack, input as IIngredient) { 
        val rubber_liquid = <liquid:rubber> * 288;
        mods.immersiveengineering.BottlingMachine.addRecipe(output, input, rubber_liquid);
    }

    function coat8xwire(output as IItemStack, input as IIngredient) { 
        val rubber_liquid = <liquid:rubber> * 432;
        mods.immersiveengineering.BottlingMachine.addRecipe(output, input, rubber_liquid);
    }

    function coat16xwire(output as IItemStack, input as IIngredient) { 
        val rubber_liquid = <liquid:rubber> * 720;
        mods.immersiveengineering.BottlingMachine.addRecipe(output, input, rubber_liquid);
    }

    function coatwires(wiremetal as string) {
        //strings
            var gt1x_string = "GtSingle";
            var gt2x_string = "GtDouble";
            var gt4x_string = "GtQuadruple";
            var gt8x_string = "GtOctal";
            var gt16x_string = "GtHex";
            var wire_string = "wire";
            var cable_string = "cable";
        //oredicts
            //cable
                var cable_1x_oredict = oreDict.get(cable_string + gt1x_string + wiremetal);
                var cable_2x_oredict = oreDict.get(cable_string + gt2x_string + wiremetal);
                var cable_4x_oredict = oreDict.get(cable_string + gt4x_string + wiremetal);
                var cable_8x_oredict = oreDict.get(cable_string + gt8x_string + wiremetal);
                var cable_16x_oredict = oreDict.get(cable_string + gt16x_string + wiremetal);
            //wire
                var wire_1x_oredict = oreDict.get(wire_string + gt1x_string + wiremetal);
                var wire_2x_oredict = oreDict.get(wire_string + gt2x_string + wiremetal);
                var wire_4x_oredict = oreDict.get(wire_string + gt4x_string + wiremetal);
                var wire_8x_oredict = oreDict.get(wire_string + gt8x_string + wiremetal);
                var wire_16x_oredict = oreDict.get(wire_string + gt16x_string + wiremetal);
        //itemstacks
            var cable_1x_iitemstack = utils.getItemstack(cable_1x_oredict);
            var cable_2x_iitemstack = utils.getItemstack(cable_2x_oredict);
            var cable_4x_iitemstack = utils.getItemstack(cable_4x_oredict);
            var cable_8x_iitemstack = utils.getItemstack(cable_8x_oredict);
            var cable_16x_iitemstack = utils.getItemstack(cable_16x_oredict);
        //recipes
            coat1xwire(cable_1x_iitemstack, wire_1x_oredict);
            coat2xwire(cable_2x_iitemstack, wire_2x_oredict);
            coat4xwire(cable_4x_iitemstack, wire_4x_oredict);
            coat8xwire(cable_8x_iitemstack, wire_8x_oredict);
            coat16xwire(cable_16x_iitemstack, wire_16x_oredict);
    }

    val wire_metal_array = [
        "Copper",
        "Cobalt",

        "Electrum",
        "RedAlloy",
    ] as string[];

    for wiremetal in wire_metal_array {
        coatwires(wiremetal);
    }
print("END: Immersive Engineering: Bottling Machine: Coat wires ");