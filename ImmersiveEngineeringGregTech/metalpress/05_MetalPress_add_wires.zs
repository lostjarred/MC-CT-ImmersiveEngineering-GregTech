#priority 500
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import scripts.ImmersiveEngineeringGregTech.Util_Functions as utils;

print("START: Immersive Engineering Metal Press: Add wires");
    /*
        mods.immersiveengineering.MetalPress.addRecipe(IItemStack output, IIngredient input, IItemStack mold, int energy, @Optional int inputSize);
        mods.immersiveengineering.MetalPress.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:emerald>, 2000);
        mods.immersiveengineering.MetalPress.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:emerald>, 2000, 16);
    */
    function add_wire_recipe(metal as string) {
        val energy = 2000;
        val mold = <immersiveengineering:mold:4>;
        val outputnum = 2;
        //strings
            var wirestring = "wireGtSingle" + metal; 
            var platestring =  "plate" + metal;
        //oredict 
            var wire_oredict = oreDict.get(wirestring);
            var plate_oredict = oreDict.get(platestring);
        //turn wire oredict into itemstack
            var wireitemstack = utils.getItemstack(wire_oredict);
        //metal press
            mods.immersiveengineering.MetalPress.addRecipe(wireitemstack * outputnum, plate_oredict, mold, energy);
    }
    //only use ulv recipes
    val wire_metal_array = [
        "Aluminium",
        "Cobalt",
        "Copper",
        "Gold",
        "Iron",
        "Lead",
        "Nickel",
        "Platinum",
        "Silver",
        "Tin",
        "Tritanium",
        "AnnealedCopper",
        "Cupronickel",
        "Electrum",
        "Kanthal",
        "Nichrome",
        
        "Steel",
        "RedAlloy"
    ] as string[];

    for wiremetal in wire_metal_array {
        add_wire_recipe(wiremetal);
    }
print("END: Immersive Engineering Metal Press: Add wires");