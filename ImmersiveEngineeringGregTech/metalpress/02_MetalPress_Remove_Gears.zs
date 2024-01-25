#priority 1510
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Immersive Engineering Metal Press: Remove Gears");
    /*
        mods.immersiveengineering.MetalPress.removeRecipe(IItemstack output);
        mods.immersiveengineering.MetalPress.removeRecipe(<minecraft:diamond>);
    */
    function Remove_Metalpress_Gear(gearmetal as string) {
        //gear string
        var gear_string = "gear" + gearmetal;
        //gear oredict
        var gear_oredict = oreDict.get(gear_string);
        for gear in gear_oredict.items{
        //print("removing metal press gear recipe for " +  gear.commandString + " " + gear.name);
        mods.immersiveengineering.MetalPress.removeRecipe(gear);
        }
    }

    val gears_metal_array = [
        "Aluminium",
        "Aluminum",
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
        "Gold",
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
        Remove_Metalpress_Gear(gearmetal);
    }
print("END: Immersive Engineering Metal Press: Remove Gears");