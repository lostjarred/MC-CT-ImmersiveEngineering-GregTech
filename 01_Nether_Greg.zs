#priority 900

print("Immersive Engineering Excavator Script:01 Nether Gregtech");
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

val stone = "oreNetherrack";
//mineral weight - gregtech vein weight
//veins
    //banded iron
        mods.immersiveengineering.Excavator.addMineral(
            "NBandedIron", 30 + addionalweight, failchance, [stone + "BrownLimonite", stone + "YellowLimonite", stone + "BandedIron", stone + "Gold"], [primarychance, secondarychance, betweenchance, sporadichance], [1], false
        );