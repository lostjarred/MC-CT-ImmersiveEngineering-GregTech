#priority 900

print("Immersive Engineering Excavator Script:01 Overworld Gregtech");
/*
    mods.immersiveengineering.Excavator.addMineral(String name, int mineralWeight, double failChance, String[] ores, double[] chances, @Optional int[] dimensionWhitelist, @Optional boolean blacklist)
    mods.immersiveengineering.Excavator.addMineral("Iron Ore", 50, 0.005, ["oreIron", "oreDiamond"], [0.005, 0.01], [1, 0, -1], true);
*/
val primarychance as double = 0.10;
val secondarychance as double = 0.5;
val betweenchance as double = 0.05;
val sporadichance as double = 0.02;
val failchance as double = 0.005;
val addionalweight as int = 200;

//mineral weight - gregtech vein weight
//apatite vein
    mods.immersiveengineering.Excavator.addMineral(
        "Apatite", 40 + addionalweight, failchance, ["oreApatite", "oreApatite", "oreTricalciumPhosphate", "orePyrochlore"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
    );

//cassiterite
    mods.immersiveengineering.Excavator.addMineral(
        "Cassiterite", 80 + addionalweight, failchance, ["oreTin", "oreTin", "oreCassiterite", "oreTin"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
    );

//Coal
    mods.immersiveengineering.Excavator.addMineral(
        "Coal", 80 + addionalweight, failchance, ["oreCoal", "oreCoal", "oreCoal", "oreCoal"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
    );

//Copper Tin 
    mods.immersiveengineering.Excavator.addMineral(
        "Copper Tin", 50 + addionalweight, failchance, ["oreChalcopyrite", "oreZeolite", "oreCassiterite", "oreRealgar"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
    );

//Copper
    mods.immersiveengineering.Excavator.addMineral(
        "Copper", 80 + addionalweight, failchance, ["oreChalcopyrite", "oreIron", "orePyrite", "oreCopper"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
    );

//Diamond
    mods.immersiveengineering.Excavator.addMineral(
        "Diamond", 40 + addionalweight, failchance, ["oreGraphite", "oreGraphite", "oreDiamond", "oreCoal"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
    );

//Galena
    mods.immersiveengineering.Excavator.addMineral(
        "Galena", 40 + addionalweight, failchance, ["oreGalena", "oreGalena", "oreSilver", "oreLead"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
    );

//Garnet Tin
    mods.immersiveengineering.Excavator.addMineral(
        "Garnet Tin", 80 + addionalweight, failchance, ["oreCassiteriteSand", "oreGarnetSand", "oreAsbestos", "oreDiatomite"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
    );

//Garnet
    mods.immersiveengineering.Excavator.addMineral(
        "Garnet", 40 + addionalweight, failchance, ["oreGarnetRed", "oreGarnetYellow", "oreAmethyst", "oreOpal"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
    );

//Iron 
    mods.immersiveengineering.Excavator.addMineral(
        "Iron", 120 + addionalweight, failchance, ["oreBrownLimonite", "oreYellowLimonite", "oreBandedIron", "oreMalachite"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
    );

//Lapis
    mods.immersiveengineering.Excavator.addMineral(
        "Lapis", 40 + addionalweight, failchance, ["oreLazurite", "oreSodalite", "oreLapis", "oreCalcite"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
    );

//Lubricant
    mods.immersiveengineering.Excavator.addMineral(
        "Lubricant", 40 + addionalweight, failchance, ["oreSoapstone", "oreTalc", "oreGlauconiteSand", "orePentlandite"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
    );

//Magnetite
    mods.immersiveengineering.Excavator.addMineral(
        "Magnetite", 80 + addionalweight, failchance, ["oreMagnetite", "oreMagnetite", "oreVanadiumMagnetite", "oreGold"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
    );

//Manganse 
    mods.immersiveengineering.Excavator.addMineral(
        "Manganse", 20 + addionalweight, failchance, ["oreGrossular", "oreSpessartine", "orePyrolusite", "oreTantalite"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
    );

//Mica
    mods.immersiveengineering.Excavator.addMineral(
        "Mica", 20 + addionalweight, failchance, ["oreKyanite", "oreMica", "oreBauxite", "orePollucite"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
    );

//Mineral Sand
    mods.immersiveengineering.Excavator.addMineral(
        "Mineral Sand", 80 + addionalweight, failchance, ["oreBasalticMineralSand", "oreGraniticMineralSand", "oreFullersEarth", "oreGypsum"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
    );

//Nickel
    mods.immersiveengineering.Excavator.addMineral(
        "Nickel", 40 + addionalweight, failchance, ["oreGarnierite", "oreNickel", "oreCobaltite", "orePentlandite"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
    );

//Olivine
    mods.immersiveengineering.Excavator.addMineral(
        "Olivine", 20 + addionalweight, failchance, ["oreBentonite", "oreMagnesite", "oreOlivine", "oreGlauconiteSand"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
    );

//Redstone
    mods.immersiveengineering.Excavator.addMineral(
        "Redstone", 60 + addionalweight, failchance, ["oreRedstone", "oreRedstone", "oreRuby", "oreCinnabar"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
    );

//Salts
    mods.immersiveengineering.Excavator.addMineral(
        "Salts", 50 + addionalweight, failchance, ["oreRockSalt", "oreSalt", "oreLepidolite", "oreSpodumene"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
    );

//Sapphire
    mods.immersiveengineering.Excavator.addMineral(
        "Sapphire", 60 + addionalweight, failchance, ["oreAlmandine", "orePyrope", "oreSapphire", "oreGreenSapphire"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
    );