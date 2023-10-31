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
    val energyuse = 2000 as int;
    val mold = <immersiveengineering:mold:4>;
    val output_num = 2 as int;
    var wire = utils.getItemstack(<ore:wireGtSingleCopper>);
    mods.immersiveengineering.MetalPress.addRecipe(wire * output_num, <ore:plateCopper>, mold, energyuse);
    
    wire = utils.getItemstack(<ore:wireGtSingleElectrum>);
    mods.immersiveengineering.MetalPress.addRecipe(wire * output_num, <ore:plateElectrum>, mold, energyuse);
    
    wire = utils.getItemstack(<ore:wireGtSingleAluminium>);
    mods.immersiveengineering.MetalPress.addRecipe(wire * output_num, <ore:plateAluminium>, mold, energyuse);
    
    wire = utils.getItemstack(<ore:wireGtSingleSteel>);
    mods.immersiveengineering.MetalPress.addRecipe(wire * output_num, <ore:plateSteel>, mold, energyuse);
print("END: Immersive Engineering Metal Press: Add wires");