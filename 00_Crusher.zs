#priority 50
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Immersive Engineering Crusher Script:00 Ore Gregtech");

//main functions 
    function addNonGemOreProcessing( inputore as string, outputammount as int, secondaryore as string ) {
        /*
            get string for ore, convert to oredict then to itemstack to get all variables needed
        */
        
        //ore oredict names
            var endstoneorestring = "oreEndstone" + inputore;
            var overworldorestring = "ore" + inputore;
            var netherorestring = "oreNetherrack" + inputore;

        //oredicts
            var endstoneoredict = oreDict.get(endstoneorestring);
            var oreoredict = oreDict.get(overworldorestring);
            var netheroredict = oreDict.get(netherorestring);
        
        //crushed ore oredict names
            var crushedorestring = "crushed" + inputore;
            var dustorestring = "dust" + inputore;
            var secondaryoreduststring = "dust" + secondaryore;
        
        //crushed oredicts
            var ouputoredict = oreDict.get(crushedorestring);
            var secondoutputoredict = oreDict.get(secondaryoreduststring);
        
        //itemstacks
            var outputitemstack = ouputoredict.firstItem;
            var secondoutputitemstack = secondoutputoredict.firstItem;
        
        //ore to crushed ore
            //endstone
                for ore in endstoneoredict.items {
                    addCrusher_CrushedOre_Recipe(outputitemstack * (outputammount * 2), ore, secondoutputitemstack);
                }
            //normal
                for ore in oreoredict.items {
                    addCrusher_CrushedOre_Recipe(outputitemstack * outputammount, ore, secondoutputitemstack);
                }
            //nether
                for ore in netheroredict.items {
                    addCrusher_CrushedOre_Recipe(outputitemstack * (outputammount * 2), ore, secondoutputitemstack);
                }

        //crushed ore to dust
            //oredicts
                var ouputoredictdust = oreDict.get(dustorestring);
                var crushedoreoredict = oreDict.get(crushedorestring);

            //itemstack
                var outputitemstackdust = ouputoredictdust.firstItem;
                var crushedoreitemstack = crushedoreoredict.firstItem;
    }

    function addGemOreProcessing(inputore as string, outputammount as int, secondaryore as string) {

    }

/*
    mods.immersiveengineering.Crusher.addRecipe(IItemStack output, IIngredient input, int energy, @Optional IItemStack secondaryOutput, @Optional double secondaryChance);

    mods.immersiveengineering.Crusher.addRecipe(<minecraft:diamond>, <ore:logWood>, 2048);
    mods.immersiveengineering.Crusher.addRecipe(<minecraft:diamond>, <ore:logWood>, 2048, <minecraft:dirt>);
    mods.immersiveengineering.Crusher.addRecipe(<minecraft:diamond>, <ore:logWood>, 2048, <minecraft:dirt>, 0.5);
*/
function addCrusher_CrushedOre_Recipe(output as IItemStack, input as IIngredient, secondaryoutput as IItemStack) {
    //secondary output chance
    val chance as double = 0.20;
    //energy cost
    val energy as int = 2000;
    print("Add crushing recipe for " + output.name + " using " + input.commandString + " with secondary " + secondaryoutput.name);
    mods.immersiveengineering.Crusher.addRecipe(output, input, energy, secondaryoutput, chance);
}

//gregtech ores 
     //aluminium
        addNonGemOreProcessing("Aluminium", 2, "Bauxite");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_aluminium_0>);
    //beryllium
        addGemOreProcessing("Beryllium", 2, "Emerald");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_beryllium_0>);
    //cobalt
        addNonGemOreProcessing("Cobalt", 2, "CobaltOxide");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_cobalt_0>);
    //copper
        addNonGemOreProcessing("Copper", 2, "Cobalt");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_copper_0>);
    //gold
        addNonGemOreProcessing("Gold", 2, "Copper");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_gold_0>);
    //iron
        addNonGemOreProcessing("Iron", 2, "Nickel");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_iron_0>);
    //lead
        addNonGemOreProcessing("Lead", 2, "Silver");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_lead_0>);
    //lithium
        addNonGemOreProcessing("Lithium", 2, "Lithium");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_lithium_0>);
    //molybdenum
        addNonGemOreProcessing("Molybdenum", 2, "Molybdenum");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_molybdenum_0>);
    //neodymium
        addNonGemOreProcessing("Neodymium", 2, "RareEarth");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_neodymium_0>);
    //nickel
        addNonGemOreProcessing("Nickel", 2, "Cobalt");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_nickel_0>);
    //palladium
        addNonGemOreProcessing("Palladium", 2, "Palladium");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_palladium_0>);
    //platinum
        addNonGemOreProcessing("Platinum", 2, "Nickel");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_platinum_0>);
    //plutonium 239
        addNonGemOreProcessing("Plutonium239", 2, "Uraninite");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_plutonium_0>);
    //silver
        addNonGemOreProcessing("Silver", 2, "Lead");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_silver_0>);
    //sulfur
        addNonGemOreProcessing("Sulfur", 2, "Sulfur");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_sulfur_0>);
    //thorium
        addNonGemOreProcessing("Thorium", 2, "Uraninite");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_thorium_0>);
    //tin
        addNonGemOreProcessing("Tin", 2, "Iron");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_tin_0>);
    //naquadah
        addNonGemOreProcessing("Naquadah", 2, "Sulfur");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_naquadah_0>);
    //certusquartz
        addGemOreProcessing("CertusQuartz", 4, "NetherQuartz");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_certus_quartz_0>);
    //almandine
        addGemOreProcessing("Almandine", 6, "GarnetRed");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_almandine_0>);
    //asbestos
        addNonGemOreProcessing("Asbestos", 6, "Diatomite");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_asbestos_0>);
    //banded iron
        addNonGemOreProcessing("BandedIron", 2, "Magnetite");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_banded_iron_0>);
    //blue topaz
        addGemOreProcessing("BlueTopaz", 4, "Topaz");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_blue_topaz_0>);
    //brown limonite
        addGemOreProcessing("BrownLimonite", 4, "Malachite");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_brown_limonite_0>);
    //calcite
        addNonGemOreProcessing("Calcite", 2, "Calcite");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_calcite_0>);
    //cassiterite
        addNonGemOreProcessing("Cassiterite", 4, "Tin");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_cassiterite_0>);
    //cassiterite sand
        addNonGemOreProcessing("CassiteriteSand", 4, "Tin");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_cassiterite_sand_0>);
    //chalcopyrite
        addNonGemOreProcessing("Chalcopyrite", 2, "Pyrite");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_chalcopyrite_0>);
    //chromite
        addNonGemOreProcessing("Chromite", 2, "Iron");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_chromite_0>);
    //cinnabar
        addNonGemOreProcessing("Cinnabar", 2, "Redstone");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_cinnabar_0>);
    //coal :WRONG OUTPUT :TODO
        addNonGemOreProcessing("Coal", 2, "Coal");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_coal_0>);
    //cobaltite
        addNonGemOreProcessing("Cobaltite", 2, "Sulfur");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_cobaltite_0>);
    //sheldonite
        addNonGemOreProcessing("Cooperite", 2, "Nickel");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_cooperite_0>);
    //diamond
        addNonGemOreProcessing("Diamond", 2, "Graphite");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_diamond_0>);
    //emerald
        addNonGemOreProcessing("Emerald", 4, "Beryllium");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_emerald_0>);
    //galena
        addNonGemOreProcessing("Galena", 2, "Sulfur");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_galena_0>);
    //garnierite
        addNonGemOreProcessing("Garnierite", 2, "Iron");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_garnierite_0>);
    //green sapphire
        addNonGemOreProcessing("GreenSapphire", 2, "Aluminium");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_green_sapphire_0>);
    //grossular
        addGemOreProcessing("Grossular", 6, "GarnetYellow");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_grossular_0>); 
    //ilmenite
        addNonGemOreProcessing("Ilmenite", 2, "Iron");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_ilmenite_0>);
    //bauxite
        addGemOreProcessing("Bauxite", 2, "Grossular");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_grossular_0>); 
    //lazurite
        addGemOreProcessing("Lazurite", 12, "Sodalite");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_lazurite_0>);
    //magnesite
        addNonGemOreProcessing("Magnesite", 2, "Magnesium");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_magnesite_0>);
    //magnetite
        addNonGemOreProcessing("Magnetite", 2, "Iron");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_magnetite_0>);
    //molybdenite
        addNonGemOreProcessing("Molybdenum", 2, "Molybdenum");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_molybdenite_0>);
    //powellite
        addNonGemOreProcessing("Powellite", 2, "Iron");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_powellite_0>);
    //pyrite
        addNonGemOreProcessing("Pyrite", 2, "Sulfur");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_pyrite_0>);
    //pyrolusite
        addNonGemOreProcessing("Pyrolusite", 2, "Manganese");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_pyrolusite_0>);
    //pyrope
        addGemOreProcessing("Pyrope", 6, "GarnetRed");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_pyrope_0>);
    //rock salt
        addGemOreProcessing("RockSalt", 4, "Salt");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_rock_salt_0>);
    //ruby
        addNonGemOreProcessing("Ruby", 2, "Chrome");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_ruby_0>);
    //salt
        addGemOreProcessing("Salt", 4, "RockSalt");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_salt_0>);
    //saltpeter
        addNonGemOreProcessing("Saltpeter", 4, "Saltpeter");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_saltpeter_0>);
    //sapphire
        addNonGemOreProcessing("Sapphire", 2, "Aluminium");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_sapphire_0>);
    //scheelite
        addNonGemOreProcessing("Scheelite", 2, "Manganese");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_scheelite_0>);
    //sodalite
        addGemOreProcessing("Sodalite", 12, "lazurite");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_sodalite_0>);
     //tantalite
        addNonGemOreProcessing("Tantalite", 2, "Manganese");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_tantalite_0>);
    //spessartine
        addGemOreProcessing("Spessartine", 6, "GarnetRed");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_spessartine_0>);
    //sphalerite
        addGemOreProcessing("Sphalerite", 2, "GarnetYellow");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_sphalerite_0>);
    //stibnite
        addNonGemOreProcessing("Tantalite", 2, "AntimonyTrioxide");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_tantalite_0>);
    //tetrahedrite
        addNonGemOreProcessing("Tetrahedrite", 2, "Antimony");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_tetrahedrite_0>);
    //topaz
        addGemOreProcessing("Topaz", 2, "BlueTopaz");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_topaz_0>);
    //tungstate
        addNonGemOreProcessing("Tungstate", 2, "Manganese");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_tungstate_0>);
    //uraninite
        addNonGemOreProcessing("Uraninite", 2, "Uraninite");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_uraninite_0>);
    //wulfenite
        addNonGemOreProcessing("Wulfenite", 2, "Iron");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_wulfenite_0>);
    //yellow limonite
        addNonGemOreProcessing("YellowLimonite", 2, "Nickel");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_yellow_limonite_0>);
    //nether quartz
        addNonGemOreProcessing("NetherQuartz", 4, "Quartzite");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_nether_quartz_0>);
    //quartzite
        addNonGemOreProcessing("Quartzite", 4, "CertusQuartz");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_quartzite_0>);
    //graphite
        addNonGemOreProcessing("Graphite", 2, "Carbon");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_graphite_0>);
    //bornite
        addNonGemOreProcessing("Bornite", 2, "Pyrite");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_bornite_0>);
    //chalcocite
        addNonGemOreProcessing("Chalcocite", 2, "Sulfur");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_chalcocite_0>);
    //realgar
        addNonGemOreProcessing("Realgar", 2, "Sulfur");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_realgar_0>);
    //bastnasite
        addNonGemOreProcessing("Bastnasite", 4, "Neodymium");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_bastnasite_0>);
    //pentlandite
        addNonGemOreProcessing("Pentlandite", 2, "Iron");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_pentlandite_0>);
    //spodumene
        addNonGemOreProcessing("Spodumene", 2, "Aluminium");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_spodumene_0>);
    //lepidolite
        addNonGemOreProcessing("Lepidolite", 4, "Lithium");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_lepidolite_0>);
    //glauconite
        addNonGemOreProcessing("GlauconiteSand", 6, "Sodium");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_glauconite_sand_0>);
    //malachite
        addNonGemOreProcessing("Malachite", 2, "BrownLimonite");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_malachite_0>);
    //mica
        addNonGemOreProcessing("Mica", 4, "Potassium");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_mica_0>);
    //barite
        addNonGemOreProcessing("Barite", 2, "Barite");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_barite_0>);
    //alunite
        addNonGemOreProcessing("Alunite", 6, "Alunite");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_alunite_0>);
    //talc
        addNonGemOreProcessing("Talc", 4, "Clay");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_talc_0>);
    //soapstone
        addNonGemOreProcessing("Soapstone", 6, "SiliconDioxide");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_soapstone_0>);
    //kyanite
        addNonGemOreProcessing("Kyanite", 2, "Talc");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_kyanite_0>);
    //pyrochlore
        addGemOreProcessing("Pyrochlore", 2, "Apatite");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_pyrochlore_0>);
    //oilsand
        addNonGemOreProcessing("Oilsands", 2, "Oilsands");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_oilsands_0>);
    //olivine
        addGemOreProcessing("Olivine", 4, "Pyrope");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_olivine_0>);
    //opal
        addGemOreProcessing("Opal", 2, "Opal");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_opal_0>);
    //amethyst
        addGemOreProcessing("Amethyst", 2, "Amethyst");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_amethyst_0>);
    //lapis
        addGemOreProcessing("Lapis", 12, "Lazurite");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_lapis_0>);
    //apatite
        addNonGemOreProcessing("Apatite", 8, "TricalciumPhosphate");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_apatite_0>);
    //tricalcium phosphate
        addGemOreProcessing("TricalciumPhosphate", 3, "Apatite");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_tricalcium_phosphate_0>);
    //red garnet
        addGemOreProcessing("GarnetRed", 8, "Spessartine");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_garnet_red_0>);
    //yellow garnet
        addGemOreProcessing("GarnetYellow", 8, "Andradite");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_garnet_yellow_0>);
    //vanadium magnetite
        addNonGemOreProcessing("VanadiumMagnetite", 2, "Magnetite");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_vanadium_magnetite_0>);
    //pollucite
        addNonGemOreProcessing("Pollucite", 2, "Caesium");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_pollucite_0>);
    //bentonite
        addNonGemOreProcessing("Bentonite", 6, "Aluminium");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_bentonite_0>);
    //fullers earth
        addNonGemOreProcessing("FullersEarth", 4, "Aluminium");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_fullers_earth_0>);
    //pitchblende
        addNonGemOreProcessing("Pitchblende", 2, "Thorium");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_pitchblende_0>);
    //monazite
        addNonGemOreProcessing("Monazite", 8, "Thorium");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_monazite_0>);
    //trona
        addNonGemOreProcessing("Trona", 4, "Thorium");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_trona_0>);
    //gypsum
        addNonGemOreProcessing("Gypsum", 2, "Sulfur");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_gypsum_0>);
    //zeolite
        addNonGemOreProcessing("Zeolite", 6, "Calcium");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_zeolite_0>);
    /*
        :TODO: Gives wrong dust gives clean redstone dust instead of dirty
    */
    //redstone
        addGemOreProcessing("Redstone", 10, "Cinnabar");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_redstone_0>);
    //electrotine
        addNonGemOreProcessing("Electrotine", 10, "Redstone");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_electrotine_0>);
    //diatomite
        addNonGemOreProcessing("Diatomite", 2, "BandedIron");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_diatomite_0>);
    //granitic mineral sand
        addNonGemOreProcessing("GraniticMineralSand", 2, "GraniteBlack");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_granitic_mineral_sand_0>);
    //garnet sand
        addGemOreProcessing("GarnetSand", 2, "GarnetRed");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_garnet_sand_0>);
    //basaltic mineral sand
        addNonGemOreProcessing("BasalticMineralSand", 2, "Basalt");
        mods.thermalexpansion.Pulverizer.removeRecipe(<gregtech:ore_basaltic_mineral_sand_0>);




print("END: Immersive Engineering Crusher Script:00 Ore Gregtech");