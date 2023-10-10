#priority 900

print("START: Immersive Engineering Excavator Script:01 End Gregtech");
/*
    mods.immersiveengineering.Excavator.addMineral(String name, int mineralWeight, double failChance, String[] ores, double[] chances, @Optional int[] dimensionWhitelist, @Optional boolean blacklist)
    mods.immersiveengineering.Excavator.addMineral("Iron Ore", 50, 0.005, ["oreIron", "oreDiamond"], [0.005, 0.01], [1, 0, -1], true);
*/
val primarychance as double = 0.10;
val secondarychance as double = 0.05;
val betweenchance as double = 0.05;
val sporadichance as double = 0.02;
val failchance as double = 0.005;
val addionalweight as int = 300;

val stone = "oreEndstone";
//mineral weight - gregtech vein weight
// 0 overworld -1 nether 1 end
//veins
    //Bauxite
        mods.immersiveengineering.Excavator.addMineral(
            "EBauxite", (40 + addionalweight), failchance, [stone + "Bauxite", stone + "Ilmenite", stone + "Aluminium", stone + "Ilmenite"], [primarychance, secondarychance, betweenchance, sporadichance], [1], false
        );
    //Magnetite
        mods.immersiveengineering.Excavator.addMineral(
            "EMagnetite", (30 + addionalweight), failchance, [stone + "Magnetite", stone + "VanadiumMagnetite", stone + "Chromite", stone + "Gold"], [primarychance, secondarychance, betweenchance, sporadichance], [1], false
        );
    //Naquahdah
        mods.immersiveengineering.Excavator.addMineral(
            "ENaquahdah", (30 + addionalweight), failchance, [stone + "Naquadah", stone + "Naquadah", stone + "Naquadah", stone + "Plutonium"], [primarychance, secondarychance, betweenchance, sporadichance], [1], false
        );
    //Pitchblende
        mods.immersiveengineering.Excavator.addMineral(
            "EPitchblende", (20 + addionalweight), failchance, [stone + "Pitchblende", stone + "Pitchblende", stone + "Uraninite", stone + "Uraninite"], [primarychance, secondarychance, betweenchance, sporadichance], [1], false
        );
    //Scheelite
        mods.immersiveengineering.Excavator.addMineral(
            "EScheelite", (20 + addionalweight), failchance, [stone + "Scheelite", stone + "Scheelite", stone + "Tungstate", stone + "Lithium"], [primarychance, secondarychance, betweenchance, sporadichance], [1], false
        );
    //Sheldonite
        mods.immersiveengineering.Excavator.addMineral(
            "EScheelite", (10 + addionalweight), failchance, [stone + "Bornite", stone + "Cooperite", stone + "Platinum", stone + "Palladium"], [primarychance, secondarychance, betweenchance, sporadichance], [1], false
        );
print("END: Immersive Engineering Excavator Script:01 End Gregtech");