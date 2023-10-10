#priority 900

print("Immersive Engineering Excavator Script:01 Nether Gregtech");
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

val stone = "oreNetherrack";
//mineral weight - gregtech vein weight
// 0 overworld -1 nether 1 end
//veins
    //banded iron
        mods.immersiveengineering.Excavator.addMineral(
            "NBandedIron", (30 + addionalweight), failchance, [stone + "BrownLimonite", stone + "YellowLimonite", stone + "BandedIron", stone + "Gold"], [primarychance, secondarychance, betweenchance, sporadichance], [-1], false
        );
    //beryllium
        mods.immersiveengineering.Excavator.addMineral(
            "NBeryllium", (30 + addionalweight), failchance, [stone + "Beryllium", stone + "Beryllium", stone + "Emerald", stone + "Thorium"], [primarychance, secondarychance, betweenchance, sporadichance], [-1], false
        );
    //certus quartz
        mods.immersiveengineering.Excavator.addMineral(
            "NCertus Quartz", (40 + addionalweight), failchance, [stone + "Quartzite", stone + "CertusQuartz", stone + "CertusQuartz", stone + "Barite"], [primarychance, secondarychance, betweenchance, sporadichance], [-1], false
        );
    //manganese
        mods.immersiveengineering.Excavator.addMineral(
            "NManganese", (20 + addionalweight), failchance, [stone + "Grossular", stone + "Pyrolusite", stone + "Pyrochlore", stone + "Tantalite"], [primarychance, secondarychance, betweenchance, sporadichance], [-1], false
        );
    //molybdenum
        mods.immersiveengineering.Excavator.addMineral(
            "NMolybenite", (5 + addionalweight), failchance, [stone + "Wulfenite", stone + "Molybdenite", stone + "Molybdenum", stone + "Powellite"], [primarychance, secondarychance, betweenchance, sporadichance], [-1], false
        );
    //monazite
        mods.immersiveengineering.Excavator.addMineral(
            "NMonazite", (30 + addionalweight), failchance, [stone + "Bastnasite", stone + "Bastnasite", stone + "Monazite", stone + "Neodymium"], [primarychance, secondarychance, betweenchance, sporadichance], [-1], false
        );
    //nether quartz
        mods.immersiveengineering.Excavator.addMineral(
            "NNether Quartz", (80 + addionalweight), failchance, [stone + "NetherQuartz", stone + "NetherQuartz", stone + "NetherQuartz", stone + "Quartzite"], [primarychance, secondarychance, betweenchance, sporadichance], [-1], false
        );
    //redstone
        mods.immersiveengineering.Excavator.addMineral(
            "NRedstone", (60 + addionalweight), failchance, [stone + "Redstone", stone + "Redstone", stone + "Ruby", stone + "Cinnabar"], [primarychance, secondarychance, betweenchance, sporadichance], [-1], false
        );
    //saltpeter
        mods.immersiveengineering.Excavator.addMineral(
            "NSaltpeter", (40 + addionalweight), failchance, [stone + "Saltpeter", stone + "Diatomite", stone + "Electrotine", stone + "Alunite"], [primarychance, secondarychance, betweenchance, sporadichance], [-1], false
        );
    //sulfur
        mods.immersiveengineering.Excavator.addMineral(
            "NSulfur", (100 + addionalweight), failchance, [stone + "Sulfur", stone + "Sulfur", stone + "Pyrite", stone + "Sphalerite"], [primarychance, secondarychance, betweenchance, sporadichance], [-1], false
        );
    //tetrahedrite
        mods.immersiveengineering.Excavator.addMineral(
            "NTetrahedrite", (70 + addionalweight), failchance, [stone + "Tetrahedrite", stone + "Tetrahedrite", stone + "Copper", stone + "Stibnite"], [primarychance, secondarychance, betweenchance, sporadichance], [-1], false
        );
    //topaz
        mods.immersiveengineering.Excavator.addMineral(
            "NTopaz", (40 + addionalweight), failchance, [stone + "BlueTopaz", stone + "Topaz", stone + "Chalcocite", stone + "Bornite"], [primarychance, secondarychance, betweenchance, sporadichance], [-1], false
        );