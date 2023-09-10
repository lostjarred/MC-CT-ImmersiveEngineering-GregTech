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
//apatite vein
    mods.immersiveengineering.Excavator.addMineral(
        "Apatite", 40, 0.005, ["oreApatite", "oreApatite", "oreTricalciumPhosphate", "orePyrochlore"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
    );

//cassiterite
    mods.immersiveengineering.Excavator.addMineral(
        "Cassiterite", 80, 0.005, ["oreTin", "oreTin", "oreCassiterite", "oreTin"], [primarychance, secondarychance, betweenchance, sporadichance], [0], false
    );
