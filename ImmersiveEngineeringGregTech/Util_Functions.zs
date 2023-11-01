#priority 800
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print("START: util functions");

function getItemstack(input as IOreDictEntry) as IItemStack {
    //returns a prefered mod itemstacl from oredict recipe
    val preferedmod = "gregtech" as string;
    var return_item = input.firstItem as IItemStack;
    for item in input.items {
        var itemdef = item.definition;
        if (itemdef.owner == preferedmod) {
            return_item = item;
            break;
        }
    }
    return return_item;
}

function gen_pickaxe_recipe(plate as IIngredient, ingot as IIngredient) as IIngredient[][] {
    val gtfile = <ore:craftingToolFile>;
    val gthammer = <ore:toolHammer>;
    return [
        [plate, ingot, ingot],
        [gthammer, <ore:stickTreatedWood>, gtfile],
        [null, <ore:stickTreatedWood>, null]
    ];
}

function gen_shovel_recipe(plate as IIngredient) as IIngredient[][] {
    val gtfile = <ore:craftingToolFile>;
    val gthammer = <ore:toolHammer>;
    return [
        [gthammer, plate, gtfile],
        [null, <ore:stickTreatedWood>, null],
        [null, <ore:stickTreatedWood>, null]
    ];
}

function gen_axe_recipe(plate as IIngredient, ingot as IIngredient) as IIngredient[][] {
    val gtfile = <ore:craftingToolFile>;
    val gthammer = <ore:toolHammer>;
    return [
        [plate, ingot, gtfile],
        [plate, <ore:stickTreatedWood>, null],
        [gthammer, <ore:stickTreatedWood>, null]
    ];
}

function gen_hoe_recipe(plate as IIngredient, ingot as IIngredient) as IIngredient[][] {
    val gtfile = <ore:craftingToolFile>;
    val gthammer = <ore:toolHammer>;
    return [
        [plate, ingot, gtfile],
        [gthammer, <ore:stickTreatedWood>, null],
        [null, <ore:stickTreatedWood>, null]
    ];
}

function gen_sword_recipe(plate as IIngredient) as IIngredient[][] {
    val gtfile = <ore:craftingToolFile>;
    val gthammer = <ore:toolHammer>;
    return [
        [null, plate, null],
        [gthammer, plate, gtfile],
        [null, <ore:stickTreatedWood>, null]
    ];
}

function get_gt_ore_array() as string[] {
    return [
        "Aluminium", "Beryllium", "Cobalt", "Copper", "Gold",
        "Iron", "Lead", "Lithium", "Molybdenum", "Neodymium",
        "Nickel", "Palladium", "Platinum", "Plutonium239", "Silver",
        "Sulfur", "Thorium", "Tin", "Naquadah", "CertusQuartz",
        "Almandine", "Asbestos", "BandedIron", "BlueTopaz", "BrownLimonite",
        "Calcite", "Cassiterite", "CassiteriteSand", "Chalcopyrite", "Chromite",
        "Cinnabar", "Coal", "Cobaltite", "Cooperite", "Diamond",
        "Emerald", "Galena", "Garnierite", "GreenSapphire", "Grossular",
        "Ilmenite", "Bauxite", "Lazurite", "Magnesite", "Magnetite",
        "Molybdenum", "Powellite", "Pyrite", "Pyrolusite", "Pyrope",
        "RockSalt", "Ruby", "Salt", "Saltpeter", "Sapphire",
        "Scheelite", "Sodalite", "Tantalite", "Spessartine", "Sphalerite",
        "Stibnite", "Tetrahedrite", "Topaz", "Tungstate", "Uraninite",
        "Wulfenite", "YellowLimonite", "NetherQuartz", "Quartzite", "Graphite",
        "Bornite", "Chalcocite", "Realgar", "Bastnasite", "Pentlandite",
        "Spodumene", "Lepidolite", "GlauconiteSand", "Malachite", "Mica",
        "Barite", "Alunite", "Talc", "Soapstone", "Kyanite",
        "Pyrochlore", "Oilsands", "Olivine", "Opal", "Amethyst",
        "Lapis", "Apatite", "TricalciumPhosphate", "GarnetRed", "GarnetYellow",
        "VanadiumMagnetite", "Pollucite", "Bentonite", "FullersEarth", "Pitchblende",
        "Monazite", "Trona", "Gypsum", "Zeolite", "Redstone",
        "Electrotine", "Diatomite", "GraniticMineralSand", "GarnetSand", "BasalticMineralSand",
    ];
}

print("END: util functions");