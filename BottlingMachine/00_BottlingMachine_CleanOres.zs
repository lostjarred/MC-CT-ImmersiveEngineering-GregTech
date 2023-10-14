#priority 500
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Immersive Engineering Ore Processing Bottler Script: Clean Gregtech Ore ");
/*
    mods.immersiveengineering.BottlingMachine.addRecipe(IItemStack output, IIngredient input, ILiquidStack fluid);
    mods.immersiveengineering.BottlingMachine.addRecipe(<minecraft:diamond>, <ore:logWood>, <liquid:water>);
*/

function cleanOreMain(ore as string) {
    //turn input ore into strings
        var dirty_crushed_string = "crushed" + ore;
        var clean_crushed_string = "crushedPurified" + ore;
        var dirty_dust_string = "dustImpure" + ore;
        var clean_dust_string = "dust" + ore;
    //turn strings into oredicts
        var dirty_crushed_ore = oreDict.get(dirty_crushed_string);
        var clean_crushed_ore = oreDict.get(clean_crushed_string);
        var dirty_dust_ore = oreDict.get(dirty_dust_string);
        var clean_dust_ore = oreDict.get(clean_dust_string);
    //get iitemstacks
        var clean_crushed_item = clean_crushed_ore.firstItem;
        var clean_dust_item = clean_dust_ore.firstItem;
    
    add_bottler_recipe(clean_crushed_item, dirty_crushed_ore);
    add_bottler_recipe(clean_dust_item, dirty_dust_ore);
}

function add_bottler_recipe(output as IItemStack, input as IIngredient) {
    val fluid = <liquid:water> * 200;
    print("Add bottling recipe for " + output.commandString + " using " + input.commandString);
    mods.immersiveengineering.BottlingMachine.addRecipe(output, input, fluid);
}

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
    cleanOreMain(orestring);
}

print("END: Immersive Engineering Ore Processing Bottler Script: Clean Gregtech Ore ");