#priority 510
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Immersive Engineering Ore Processing Crusher Script: Remove Gregtech Ore ");

function removeOreprocess_Crusher(orename as string) {
    //turn string into oredict, for though oredict to get iitemstacks 
    
    //ore names
        var endore_name = "oreEndstone" + orename;
        var ore_name = "ore" + orename;
        var netherore_name = "oreNetherrack" + orename;
    //ore oredicts
        var end_oredict = oreDict.get(endore_name);
        var ore_oredict = oreDict.get(ore_name);
        var nether_oredict = oreDict.get(netherore_name);
    //for loops
        for ore in end_oredict.items {
            RemoveCrusherRecipe(ore);
        }

        for ore in ore_oredict.items {
            RemoveCrusherRecipe(ore);
        }

        for ore in nether_oredict.items {
            RemoveCrusherRecipe(ore);
        }
}


/*
    mods.immersiveengineering.Crusher.removeRecipesForInput(IItemstack input);

    mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:diamond>);
*/

function RemoveCrusherRecipe(input as IItemStack) {
    print("removing crusher recipe for " +  input.commandString);
    mods.immersiveengineering.Crusher.removeRecipesForInput(input);
}

//array to hold ores
val ore_array_string = [
    "Aluminium",
    "Beryllium",
    "Cobalt",
    "Copper",
    "Gold",
    "Iron",
    "Lead",
    "Lithium",
    "Molybdenum",
    "Neodymium",
    "Nickel",
    "Palladium",
    "Platinum",
    "Plutonium239",
    "Silver",
    "Sulfur",
    "Thorium",
    "Tin",
    "Naquadah",
    "CertusQuartz",
    "Almandine",
    "Asbestos",
    "BandedIron",
    "BlueTopaz",
    "BrownLimonite",
    "Calcite",
    "Cassiterite",
    "CassiteriteSand",
    "Chalcopyrite",
    "Chromite",
    "Cinnabar",
    "Coal",
    "Cobaltite",
    "Cooperite",
    "Diamond",
    "Emerald",
    "Galena",
    "Garnierite",
    "GreenSapphire",
    "Grossular",
    "Ilmenite",
    "Bauxite",
    "Lazurite",
    "Magnesite",
    "Magnetite",
    "Molybdenum",
    "Powellite",
    "Pyrite",
    "Pyrolusite",
    "Pyrope",
    "RockSalt",
    "Ruby",
    "Salt",
    "Saltpeter",
    "Sapphire",
    "Scheelite",
    "Sodalite",
    "Tantalite",
    "Spessartine",
    "Sphalerite",
    "Stibnite",
    "Tetrahedrite",
    "Topaz",
    "Tungstate",
    "Uraninite",
    "Wulfenite",
    "YellowLimonite",
    "NetherQuartz",
    "Quartzite",
    "Graphite",
    "Bornite",
    "Chalcocite",
    "Realgar",
    "Bastnasite",
    "Pentlandite",
    "Spodumene",
    "Lepidolite",
    "GlauconiteSand",
    "Malachite",
    "Mica",
    "Barite",
    "Alunite",
    "Talc",
    "Soapstone",
    "Kyanite",
    "Pyrochlore",
    "Oilsands",
    "Olivine",
    "Opal",
    "Amethyst",
    "Lapis",
    "Apatite",
    "TricalciumPhosphate",
    "GarnetRed",
    "GarnetYellow",
    "VanadiumMagnetite",
    "Pollucite",
    "Bentonite",
    "FullersEarth",
    "Pitchblende",
    "Monazite",
    "Trona",
    "Gypsum",
    "Zeolite",
    "Redstone",
    "Electrotine",
    "Diatomite",
    "GraniticMineralSand",
    "GarnetSand",
    "BasalticMineralSand",
] as string[]; 

//for loop for ores
for orestring in ore_array_string {
    removeOreprocess_Crusher(orestring);
}
print("END: Immersive Engineering Ore Processing Crusher Script: Remove Gregtech Ore ");