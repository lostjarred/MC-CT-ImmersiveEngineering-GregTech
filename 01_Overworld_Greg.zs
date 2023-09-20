#priority 900

print("Immersive Engineering Excavator Script:01 Overworld Gregtech");
/*
    mods.immersiveengineering.Excavator.addMineral(String name, int mineralWeight, double failChance, String[] ores, double[] chances, @Optional int[] dimensionWhitelist, @Optional boolean blacklist)
    mods.immersiveengineering.Excavator.addMineral("Iron Ore", 50, 0.005, ["oreIron", "oreDiamond"], [0.005, 0.01], [1, 0, -1], true);
*/
val primarychance as double = 0.10;
val secondarychance as double = 0.05;
val betweenchance as double = 0.05;
val sporadichance as double = 0.02;
val failchance as double = 0.005;
val addionalweight as int = 200;

val stone = "ore";

//mineral weight - gregtech vein weight
//veins
    //apatite vein
        mods.immersiveengineering.Excavator.addMineral(
            "Apatite", 40 + addionalweight, failchance, [stone + "Apatite", stone + "Apatite", stone + "TricalciumPhosphate", stone + "Pyrochlore"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
        );

    //cassiterite
        mods.immersiveengineering.Excavator.addMineral(
            "Cassiterite", 80 + addionalweight, failchance, [stone + "Tin", stone + "Tin", stone + "Cassiterite", stone + "Tin"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
        );

    //Coal
        mods.immersiveengineering.Excavator.addMineral(
            "Coal", 80 + addionalweight, failchance, [stone + "Coal", stone + "Coal", stone + "Coal", stone + "Coal"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
        );

    //Copper Tin 
        mods.immersiveengineering.Excavator.addMineral(
            "Copper Tin", 50 + addionalweight, failchance, [stone + "Chalcopyrite", stone + "Zeolite", stone + "Cassiterite", stone + "Realgar"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
        );

    //Copper
        mods.immersiveengineering.Excavator.addMineral(
            "Copper", 80 + addionalweight, failchance, [stone + "Chalcopyrite", stone + "Iron", stone + "Pyrite", stone + "Copper"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
        );

    //Diamond
        mods.immersiveengineering.Excavator.addMineral(
            "Diamond", 40 + addionalweight, failchance, [stone + "Graphite", stone + "Graphite", stone + "Diamond", stone + "Coal"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
        );

    //Galena
        mods.immersiveengineering.Excavator.addMineral(
            "Galena", 40 + addionalweight, failchance, [stone + "Galena", stone + "Galena", stone + "Silver", stone + "Lead"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
        );

    //Garnet Tin
        mods.immersiveengineering.Excavator.addMineral(
            "Garnet Tin", 80 + addionalweight, failchance, [stone + "CassiteriteSand", stone + "GarnetSand", stone + "Asbestos", stone + "Diatomite"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
        );

    //Garnet
        mods.immersiveengineering.Excavator.addMineral(
            "Garnet", 40 + addionalweight, failchance, [stone + "GarnetRed", stone + "GarnetYellow", stone + "Amethyst", stone + "Opal"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
        );

    //Iron 
        mods.immersiveengineering.Excavator.addMineral(
            "Iron", 120 + addionalweight, failchance, [stone + "BrownLimonite", stone + "YellowLimonite", stone + "BandedIron", stone + "Malachite"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
        );

    //Lapis
        mods.immersiveengineering.Excavator.addMineral(
            "Lapis", 40 + addionalweight, failchance, [stone + "Lazurite", stone + "Sodalite", stone + "Lapis", stone + "Calcite"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
        );

    //Lubricant
        mods.immersiveengineering.Excavator.addMineral(
            "Lubricant", 40 + addionalweight, failchance, [stone + "Soapstone", stone + "Talc", stone + "GlauconiteSand", stone + "Pentlandite"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
        );

    //Magnetite
        mods.immersiveengineering.Excavator.addMineral(
            "Magnetite", 80 + addionalweight, failchance, [stone + "Magnetite", stone + "Magnetite", stone + "VanadiumMagnetite", stone + "Gold"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
        );

    //Manganse 
        mods.immersiveengineering.Excavator.addMineral(
            "Manganse", 20 + addionalweight, failchance, [stone + "Grossular", stone + "Spessartine", stone + "Pyrolusite", stone + "Tantalite"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
        );

    //Mica
        mods.immersiveengineering.Excavator.addMineral(
            "Mica", 20 + addionalweight, failchance, [stone + "Kyanite", stone + "Mica", stone + "Bauxite", stone + "Pollucite"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
        );

    //Mineral Sand
        mods.immersiveengineering.Excavator.addMineral(
            "Mineral Sand", 80 + addionalweight, failchance, [stone + "BasalticMineralSand", stone + "GraniticMineralSand", stone + "FullersEarth", stone + "Gypsum"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
        );

    //Nickel
        mods.immersiveengineering.Excavator.addMineral(
            "Nickel", 40 + addionalweight, failchance, [stone + "Garnierite", stone + "Nickel", stone + "Cobaltite", stone + "Pentlandite"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
        );

    //Olivine
        mods.immersiveengineering.Excavator.addMineral(
            "Olivine", 20 + addionalweight, failchance, [stone + "Bentonite", stone + "Magnesite", stone + "Olivine", stone + "GlauconiteSand"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
        );

    //Redstone
        mods.immersiveengineering.Excavator.addMineral(
            "Redstone", 60 + addionalweight, failchance, [stone + "Redstone", stone + "Redstone", stone + "Ruby", stone + "Cinnabar"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
        );

    //Salts
        mods.immersiveengineering.Excavator.addMineral(
            "Salts", 50 + addionalweight, failchance, [stone + "RockSalt", stone + "Salt", stone + "Lepidolite", stone + "Spodumene"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
        );

    //Sapphire
        mods.immersiveengineering.Excavator.addMineral(
            "Sapphire", 60 + addionalweight, failchance, [stone + "Almandine", stone + "Pyrope", stone + "Sapphire", stone + "GreenSapphire"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
        );