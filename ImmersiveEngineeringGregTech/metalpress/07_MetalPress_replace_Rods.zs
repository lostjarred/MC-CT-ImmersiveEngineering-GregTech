#priority 500
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import scripts.ImmersiveEngineeringGregTech.Util_Functions as uf;

print("START: Immersive Engineering Metal Press: Replace Rods");
    
    /*
        mods.immersiveengineering.MetalPress.addRecipe(IItemStack output, IIngredient input, IItemStack mold, int energy, @Optional int inputSize);
        mods.immersiveengineering.MetalPress.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:emerald>, 2000);
        mods.immersiveengineering.MetalPress.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:emerald>, 2000, 16);

        mods.immersiveengineering.MetalPress.removeRecipe(IItemstack output);
    */

    function add_metalpress_rod_recipe(rod as IItemStack, plate as IIngredient) {
        val energy = 2400;
        val mold = <immersiveengineering:mold:2>;
        val input_size = 1;
        print("replacing metal press rod recipe for " +  rod.commandString + " " + rod.name + " using " + plate.commandString);
        mods.immersiveengineering.MetalPress.addRecipe(rod * 2, plate, mold, energy, input_size);
    }
    val metal_string_array = [
        "Aluminium",
        "Americium",
        "Chrome",
        "Cobalt",
        "Copper",
        "Darmstadtium",
        "Europium",
        "Gold",
        "Iridium",
        "Iron",
        "Lead",
        "Manganese",
        "Molybdenum",
        "Neodymium",
        "Osmium",
        "Palladium",
        "Platinum",
        "Plutonium241",
        "Rhodium",
        "Ruthenium",
        "Samarium",
        "Silver",
        "Thorium",
        "Tin",
        "Titanium",
        "Tungsten",
        "Uranium238",
        "Uranium235",
        "Zinc",
        "Naquadah",
        "NaquadahEnriched",
        "Naquadria",
        "Neutronium",
        "Tritanium",
        "Duranium",
        "Trinium",
        "AnnealedCopper",
        "BatteryAlloy",
        "Brass",
        "Bronze",
        "Cupronickel",
        "Electrum",
        "Invar",
        "Kanthal",
        "Magnalium",
        "Nichrome",
        "NiobiumNitride",
        "NiobiumTitanium",
        "SterlingSilver",
        "RoseGold",
        "BlackBronze",
        "BismuthBronze",
        "Ruridit",
        "StainlessSteel",
        "Steel",
        "TinAlloy",
        "Ultimet",
        "VanadiumGallium",
        "WroughtIron",
        "YttriumBariumCuprate",
        "Osmiridium",
        "TungstenCarbide",
        "SiliconeRubber",
        "StyreneButadieneRubber",
        "PolyvinylChloride",
        "PolyphenyleneSulfide",
        "Polytetrafluoroethylene",
        "Rubber",
        "BlackSteel",
        "DamascusSteel",
        "TungstenSteel",
        "CobaltBrass",
        "VanadiumSteel",
        "Potin",
        "NaquadahAlloy",
        "RhodiumPlatedPalladium",
        "RedSteel",
        "BlueSteel",
        "Hssg",
        "RedAlloy",
        "Hsse",
        "Hsss",
        "BlueAlloy"
    ]as string[];
    /*
        dont have plates
        *gems
        NickelZincFerrite
        IronMagnetic
        NeodymiumMagnetic
        SamariumMagnetic
        RtmAlloy
        MagneticSteel
    */
    for metal_string in metal_string_array {
        //get plate and rod strings
            var plate_string = "plate" + metal_string;
            var stick_string = "stick" + metal_string;
        //get oredict entrys
            var plate_oredict = oreDict.get(plate_string);
            var stick_oredict = oreDict.get(stick_string);
        //turn stick oredict into itemstack
            var stick_iitemstack = uf.getItemstack(stick_oredict);
        //remove existing recipe
            mods.immersiveengineering.MetalPress.removeRecipe(stick_iitemstack);
        //run function
            add_metalpress_rod_recipe(stick_iitemstack, plate_oredict);
    }

print("END: Immersive Engineering Metal Press: Replace Rods");