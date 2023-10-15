#priority 500
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import scripts.ImmersiveEngineeringGregTech.Util_Functions as utils;

print("START: Immersive Engineering Metal Press: Add Plates");

/*
    mods.immersiveengineering.MetalPress.addRecipe(IItemStack output, IIngredient input, IItemStack mold, int energy, @Optional int inputSize);
    mods.immersiveengineering.MetalPress.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:emerald>, 2000);
    mods.immersiveengineering.MetalPress.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:emerald>, 2000, 16);
*/

function add_metalpress_plate_recipe(ingot as IIngredient, plate as IItemStack) {
    val energy = 1000;
    val plate_mold = <immersiveengineering:mold>;
    val input_size = 1;
    print("adding metal press plate recipe for " +  plate.commandString + " " + plate.name + " using " + ingot.commandString) ;
    mods.immersiveengineering.MetalPress.addRecipe(plate, ingot, plate_mold, energy, input_size);
}

var plate = utils.getItemstack(<ore:plateNickel>);
add_metalpress_plate_recipe(<ore:ingotNickel>, plate);

plate = utils.getItemstack(<ore:plateIron>);
add_metalpress_plate_recipe(<ore:ingotIron>, plate);

plate = utils.getItemstack(<ore:plateElectrum>);
add_metalpress_plate_recipe(<ore:ingotElectrum>, plate);

plate = utils.getItemstack(<ore:plateConstantan>);
add_metalpress_plate_recipe(<ore:ingotConstantan>, plate);

plate = utils.getItemstack(<ore:plateSteel>);
add_metalpress_plate_recipe(<ore:ingotSteel>, plate);

plate = utils.getItemstack(<ore:plateCopper>);
add_metalpress_plate_recipe(<ore:ingotCopper>, plate);

plate = utils.getItemstack(<ore:plateGold>);
add_metalpress_plate_recipe(<ore:ingotGold>, plate);

plate = utils.getItemstack(<ore:plateAluminum>);
add_metalpress_plate_recipe(<ore:ingotAluminum>, plate);

plate = utils.getItemstack(<ore:plateUranium>);
add_metalpress_plate_recipe(<ore:ingotUranium>, plate);

plate = utils.getItemstack(<ore:plateLead>);
add_metalpress_plate_recipe(<ore:ingotLead>, plate);

plate = utils.getItemstack(<ore:plateSilver>);
add_metalpress_plate_recipe(<ore:ingotSilver>, plate);


print("END: Immersive Engineering Metal Press: Add Plates");