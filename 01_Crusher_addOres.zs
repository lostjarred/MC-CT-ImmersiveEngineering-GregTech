#priority 500
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Immersive Engineering Ore Processing Crusher Script: Gregtech Ore ");

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
                    addCrusher_Recipe(outputitemstack * (outputammount * 2), ore, secondoutputitemstack);
                }
            //normal
                for ore in oreoredict.items {
                    addCrusher_Recipe(outputitemstack * outputammount, ore, secondoutputitemstack);
                }
            //nether
                for ore in netheroredict.items {
                    addCrusher_Recipe(outputitemstack * (outputammount * 2), ore, secondoutputitemstack);
                }

        //crushed ore to dust
                var dustorestring = "dustImpure" + inputore;
            //oredicts
                var ouputoredictdust = oreDict.get(dustorestring);
                var crushedoreoredict = oreDict.get(crushedorestring);

            //itemstack
                var outputitemstackdust = ouputoredictdust.firstItem;
                var crushedoreitemstack = crushedoreoredict.firstItem;
            addCrusher_Recipe(outputitemstackdust, crushedoreitemstack, secondoutputitemstack);
    }

    function addGemOreProcessing(inputore as string, outputammount as int, secondaryore as string) {
        /*
            :TODO: make simpler and merge ?
            same as above has variables for gems
            get string for ore, convert to oredict then to itemstack to get all variables needed
        */
        //ore stuff
            //ore oredict names
                var endstoneorestring = "oreEndstone" + inputore;
                var overworldorestring = "ore" + inputore;
                var netherorestring = "oreNetherrack" + inputore;

            //oredicts
                var endstoneoredict = oreDict.get(endstoneorestring);
                var oreoredict = oreDict.get(overworldorestring);
                var netheroredict = oreDict.get(netherorestring);
        
        //crushed ore stuff
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
        
        //gem stuff
            //gem names
                var secondaryoregemstring = "gem" + secondaryore;
            //gem oredict
                var seondgemoutputoredict = oreDict.get(secondaryoregemstring);
            //gem itemstack
                var seondgemoutputitemstack = seondgemoutputoredict.firstItem;
        
        //ore to crushed ore
            //endstone
                for ore in endstoneoredict.items {
                    addCrusher_Recipe(outputitemstack * (outputammount * 2), ore, seondgemoutputitemstack);
                }
            //normal
                for ore in oreoredict.items {
                    addCrusher_Recipe(outputitemstack * outputammount, ore, seondgemoutputitemstack);
                }
            //nether
                for ore in netheroredict.items {
                    addCrusher_Recipe(outputitemstack * (outputammount * 2), ore, seondgemoutputitemstack);
                }

        //crushed ore to dust
            //oredicts
                var ouputoredictdust = oreDict.get(dustorestring);
                var crushedoreoredict = oreDict.get(crushedorestring);

            //itemstack
                var outputitemstackdust = ouputoredictdust.firstItem;
                var crushedoreitemstack = crushedoreoredict.firstItem;
            addCrusher_Recipe(outputitemstackdust, crushedoreitemstack, secondoutputitemstack);
    }

/*
    mods.immersiveengineering.Crusher.addRecipe(IItemStack output, IIngredient input, int energy, @Optional IItemStack secondaryOutput, @Optional double secondaryChance);

    mods.immersiveengineering.Crusher.addRecipe(<minecraft:diamond>, <ore:logWood>, 2048);
    mods.immersiveengineering.Crusher.addRecipe(<minecraft:diamond>, <ore:logWood>, 2048, <minecraft:dirt>);
    mods.immersiveengineering.Crusher.addRecipe(<minecraft:diamond>, <ore:logWood>, 2048, <minecraft:dirt>, 0.5);
*/
function addCrusher_Recipe(output as IItemStack, input as IIngredient, secondaryoutput as IItemStack) {
    //secondary output chance
    val chance as double = 0.20;
    //energy cost
    val energy as int = 2000;
    print("Add crushing recipe for " + output.commandString + " using " + input.commandString + " with secondary " + secondaryoutput.commandString);
    mods.immersiveengineering.Crusher.addRecipe(output, input, energy, secondaryoutput, chance);
}

//gregtech ores 
     //aluminium
        addNonGemOreProcessing("Aluminium", 2, "Bauxite");
    //beryllium
        addGemOreProcessing("Beryllium", 2, "Emerald");
    //cobalt
        addNonGemOreProcessing("Cobalt", 2, "CobaltOxide");
    //copper
        addNonGemOreProcessing("Copper", 2, "Cobalt");
    //gold
        addNonGemOreProcessing("Gold", 2, "Copper");
    //iron
        addNonGemOreProcessing("Iron", 2, "Nickel");
    //lead
        addNonGemOreProcessing("Lead", 2, "Silver");
    //lithium
        addNonGemOreProcessing("Lithium", 2, "Lithium");
    //molybdenum
        addNonGemOreProcessing("Molybdenum", 2, "Molybdenum");
    //neodymium
        addNonGemOreProcessing("Neodymium", 2, "RareEarth");
    //nickel
        addNonGemOreProcessing("Nickel", 2, "Cobalt");
    //palladium
        addNonGemOreProcessing("Palladium", 2, "Palladium");
    //platinum
        addNonGemOreProcessing("Platinum", 2, "Nickel");
    //plutonium 239
        addNonGemOreProcessing("Plutonium239", 2, "Uraninite");
    //silver
        addNonGemOreProcessing("Silver", 2, "Lead");
    //sulfur
        addNonGemOreProcessing("Sulfur", 2, "Sulfur");
    //thorium
        addNonGemOreProcessing("Thorium", 2, "Uraninite");
    //tin
        addNonGemOreProcessing("Tin", 2, "Iron");
    //naquadah
        addNonGemOreProcessing("Naquadah", 2, "Sulfur");
    //certusquartz
        addGemOreProcessing("CertusQuartz", 4, "NetherQuartz");
    //almandine
        addGemOreProcessing("Almandine", 6, "GarnetRed");
    //asbestos
        addNonGemOreProcessing("Asbestos", 6, "Diatomite");
    //banded iron
        addNonGemOreProcessing("BandedIron", 2, "Magnetite");
    //blue topaz
        addGemOreProcessing("BlueTopaz", 4, "Topaz");
    //brown limonite
        addGemOreProcessing("BrownLimonite", 4, "Malachite");
    //calcite
        addNonGemOreProcessing("Calcite", 2, "Calcite");
    //cassiterite
        addNonGemOreProcessing("Cassiterite", 4, "Tin");
    //cassiterite sand
        addNonGemOreProcessing("CassiteriteSand", 4, "Tin");
    //chalcopyrite
        addNonGemOreProcessing("Chalcopyrite", 2, "Pyrite");
    //chromite
        addNonGemOreProcessing("Chromite", 2, "Iron");
    //cinnabar
        addNonGemOreProcessing("Cinnabar", 2, "Redstone");
    //coal :WRONG OUTPUT :TODO
        addNonGemOreProcessing("Coal", 2, "Coal");
    //cobaltite
        addNonGemOreProcessing("Cobaltite", 2, "Sulfur");
    //sheldonite
        addNonGemOreProcessing("Cooperite", 2, "Nickel");
    //diamond
        addNonGemOreProcessing("Diamond", 2, "Graphite");
    //emerald
        addNonGemOreProcessing("Emerald", 4, "Beryllium");
    //galena
        addNonGemOreProcessing("Galena", 2, "Sulfur");
    //garnierite
        addNonGemOreProcessing("Garnierite", 2, "Iron");
    //green sapphire
        addNonGemOreProcessing("GreenSapphire", 2, "Aluminium");
    //grossular
        addGemOreProcessing("Grossular", 6, "GarnetYellow");
    //ilmenite
        addNonGemOreProcessing("Ilmenite", 2, "Iron");
    //bauxite
        addGemOreProcessing("Bauxite", 2, "Grossular");
    //lazurite
        addGemOreProcessing("Lazurite", 12, "Sodalite");
    //magnesite
        addNonGemOreProcessing("Magnesite", 2, "Magnesium");
    //magnetite
        addNonGemOreProcessing("Magnetite", 2, "Iron");
    //molybdenite
        addNonGemOreProcessing("Molybdenum", 2, "Molybdenum");
    //powellite
        addNonGemOreProcessing("Powellite", 2, "Iron");
    //pyrite
        addNonGemOreProcessing("Pyrite", 2, "Sulfur");
    //pyrolusite
        addNonGemOreProcessing("Pyrolusite", 2, "Manganese");
    //pyrope
        addGemOreProcessing("Pyrope", 6, "GarnetRed");
    //rock salt
        addGemOreProcessing("RockSalt", 4, "Salt");
    //ruby
        addNonGemOreProcessing("Ruby", 2, "Chrome");
    //salt
        addGemOreProcessing("Salt", 4, "RockSalt");
    //saltpeter
        addNonGemOreProcessing("Saltpeter", 4, "Saltpeter");
    //sapphire
        addNonGemOreProcessing("Sapphire", 2, "Aluminium");
    //scheelite
        addNonGemOreProcessing("Scheelite", 2, "Manganese");
    //sodalite
        addGemOreProcessing("Sodalite", 12, "Lazurite");
     //tantalite
        addNonGemOreProcessing("Tantalite", 2, "Manganese");
    //spessartine
        addGemOreProcessing("Spessartine", 6, "GarnetRed");
    //sphalerite
        addGemOreProcessing("Sphalerite", 2, "GarnetYellow");
    //stibnite
        addNonGemOreProcessing("Stibnite", 2, "AntimonyTrioxide");
    //tetrahedrite
        addNonGemOreProcessing("Tetrahedrite", 2, "Antimony");
    //topaz
        addGemOreProcessing("Topaz", 2, "BlueTopaz");
    //tungstate
        addNonGemOreProcessing("Tungstate", 2, "Manganese");
    //uraninite
        addNonGemOreProcessing("Uraninite", 2, "Uraninite");
    //wulfenite
        addNonGemOreProcessing("Wulfenite", 2, "Iron");
    //yellow limonite
        addNonGemOreProcessing("YellowLimonite", 2, "Nickel");
    //nether quartz
        addNonGemOreProcessing("NetherQuartz", 4, "Quartzite");
    //quartzite
        addNonGemOreProcessing("Quartzite", 4, "CertusQuartz");
    //graphite
        addNonGemOreProcessing("Graphite", 2, "Carbon");
    //bornite
        addNonGemOreProcessing("Bornite", 2, "Pyrite");
    //chalcocite
        addNonGemOreProcessing("Chalcocite", 2, "Sulfur");
    //realgar
        addNonGemOreProcessing("Realgar", 2, "Sulfur");
    //bastnasite
        addNonGemOreProcessing("Bastnasite", 4, "Neodymium");
    //pentlandite
        addNonGemOreProcessing("Pentlandite", 2, "Iron");
    //spodumene
        addNonGemOreProcessing("Spodumene", 2, "Aluminium");
    //lepidolite
        addNonGemOreProcessing("Lepidolite", 4, "Lithium");
    //glauconite
        addNonGemOreProcessing("GlauconiteSand", 6, "Sodium");
    //malachite
        addNonGemOreProcessing("Malachite", 2, "BrownLimonite");
    //mica
        addNonGemOreProcessing("Mica", 4, "Potassium");
    //barite
        addNonGemOreProcessing("Barite", 2, "Barite");
    //alunite
        addNonGemOreProcessing("Alunite", 6, "Alunite");
    //talc
        addNonGemOreProcessing("Talc", 4, "Clay");
    //soapstone
        addNonGemOreProcessing("Soapstone", 6, "SiliconDioxide");
    //kyanite
        addNonGemOreProcessing("Kyanite", 2, "Talc");
    //pyrochlore
        addGemOreProcessing("Pyrochlore", 2, "Apatite");
    //oilsand
        addNonGemOreProcessing("Oilsands", 2, "Oilsands");
    //olivine
        addGemOreProcessing("Olivine", 4, "Pyrope");
    //opal
        addGemOreProcessing("Opal", 2, "Opal");
    //amethyst
        addGemOreProcessing("Amethyst", 2, "Amethyst");
    //lapis
        addGemOreProcessing("Lapis", 12, "Lazurite");
    //apatite
        addNonGemOreProcessing("Apatite", 8, "TricalciumPhosphate");
    //tricalcium phosphate
        addGemOreProcessing("TricalciumPhosphate", 3, "Apatite");
    //red garnet
        addGemOreProcessing("GarnetRed", 8, "Spessartine");
    //yellow garnet
        addGemOreProcessing("GarnetYellow", 8, "Andradite");
    //vanadium magnetite
        addNonGemOreProcessing("VanadiumMagnetite", 2, "Magnetite");
    //pollucite
        addNonGemOreProcessing("Pollucite", 2, "Caesium");
    //bentonite
        addNonGemOreProcessing("Bentonite", 6, "Aluminium");
    //fullers earth
        addNonGemOreProcessing("FullersEarth", 4, "Aluminium");
    //pitchblende
        addNonGemOreProcessing("Pitchblende", 2, "Thorium");
    //monazite
        addNonGemOreProcessing("Monazite", 8, "Thorium");
    //trona
        addNonGemOreProcessing("Trona", 4, "Thorium");
    //gypsum
        addNonGemOreProcessing("Gypsum", 2, "Sulfur");
    //zeolite
        addNonGemOreProcessing("Zeolite", 6, "Calcium");
    /*
        :TODO: Gives wrong dust gives clean redstone dust instead of dirty
    */
    //redstone
        addGemOreProcessing("Redstone", 10, "Cinnabar");
    //electrotine
        addNonGemOreProcessing("Electrotine", 10, "Redstone");
    //diatomite
        addNonGemOreProcessing("Diatomite", 2, "BandedIron");
    //granitic mineral sand
        addNonGemOreProcessing("GraniticMineralSand", 2, "GraniteBlack");
    //garnet sand
        addGemOreProcessing("GarnetSand", 2, "GarnetRed");
    //basaltic mineral sand
        addNonGemOreProcessing("BasalticMineralSand", 2, "Basalt");




print("END: Immersive Engineering Ore Processing Crusher Script: Gregtech Ore ");