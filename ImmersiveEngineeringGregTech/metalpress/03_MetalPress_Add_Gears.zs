#priority 500
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import scripts.ImmersiveEngineeringGregTech.Util_Functions as utils;

print("START: Immersive Engineering Metal Press: Add Gears");
    /*
        mods.immersiveengineering.MetalPress.addRecipe(IItemStack output, IIngredient input, IItemStack mold, int energy, @Optional int inputSize);
        mods.immersiveengineering.MetalPress.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:emerald>, 2000);
        mods.immersiveengineering.MetalPress.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:emerald>, 2000, 16);
    */
    function add_metalpress_gear_recipe(metalname as string) {
        //values for energy and number of plates
        val energy = 2000 as int;
        val platenum = 4 as int;
        val gear_press = <immersiveengineering:mold:1>;
        
        //turns metalname into string for plate and gear
        var plate_string = "plate" + metalname;
        var gear_string = "gear" + metalname;
        
        //turn strings in oredict
        var plate_oredict = oreDict.get(plate_string);
        var gear_oredict = oreDict.get(gear_string);
        
        //turn oredict into iitemstack for output
        var gear_itemstack = utils.getItemstack(gear_oredict);

        print("adding metal press gear recipe for " +  gear_itemstack.commandString + " " + gear_itemstack.name + " using " + plate_oredict.commandString);
        mods.immersiveengineering.MetalPress.addRecipe(gear_itemstack, plate_oredict, gear_press, energy, platenum);

    }

    val gears_metal_array = [
        "Aluminium",
        "Iridium",
        "Iron",
        "Rhodium",
        "Ruthenium",
        "Titanium",
        "Tungsten",
        "Naquadria",
        "Neutronium",
        "Tritanium",
        "Duranium",
        "Trinium",
        "Bronze",
        "Invar",
        "SterlingSilver",
        "RoseGold",
        "BlackBronze",
        "Ruridit",
        "StainlessSteel",
        "Steel",
        "Ultimet",
        "WroughtIron",
        "Osmiridium",
        "TungstenCarbide",
        "SiliconeRubber",
        "Rubber",
        "BlackSteel",
        "DamascusSteel",
        "TungstenSteel",
        "CobaltBrass",
        "VanadiumSteel",
        "Potin",
        "NaquadahAlloy",
        "RedSteel",
        "BlueSteel",
        "Hssg",
        "Hsse",
        "Hsss",
    ] as string[];

    for gearmetal in gears_metal_array {
        add_metalpress_gear_recipe(gearmetal);
    }
print("END: Immersive Engineering Metal Press: Add Gears");