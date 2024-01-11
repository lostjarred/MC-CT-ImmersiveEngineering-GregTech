#priority 500
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Immersive Engineering: Bottling Machine: Coat wires ");
    /*
        mods.immersiveengineering.BottlingMachine.addRecipe(IItemStack output, IIngredient input, ILiquidStack fluid);
        mods.immersiveengineering.BottlingMachine.addRecipe(<minecraft:diamond>, <ore:logWood>, <liquid:water>);
    */
    function coat1xwire(output as IItemStack, input as IIngredient) {
        val rubber_liquid = <liquid:rubber> * 144;
        mods.immersiveengineering.BottlingMachine.addRecipe(output, input, rubber_liquid);
    }

    function coat2xwire(output as IItemStack, input as IIngredient) {
        val rubber_liquid = <liquid:rubber> * 144;
        mods.immersiveengineering.BottlingMachine.addRecipe(output, input, rubber_liquid);
    }

    function coat4xwire(output as IItemStack, input as IIngredient) { 
        val rubber_liquid = <liquid:rubber> * 288;
        mods.immersiveengineering.BottlingMachine.addRecipe(output, input, rubber_liquid);
    }

    function coat8xwire(output as IItemStack, input as IIngredient) { 
        val rubber_liquid = <liquid:rubber> * 432;
        mods.immersiveengineering.BottlingMachine.addRecipe(output, input, rubber_liquid);
    }

    function coat16xwire(output as IItemStack, input as IIngredient) { 
        val rubber_liquid = <liquid:rubber> * 720;
        mods.immersiveengineering.BottlingMachine.addRecipe(output, input, rubber_liquid);
    }

    //copper
        coat1xwire(<gregtech:cable_single:25>, <ore:wireGtSingleCopper>);
        coat2xwire(<gregtech:cable_double:25>, <ore:wireGtDoubleCopper>);
        coat4xwire(<gregtech:cable_quadruple:25>, <ore:wireGtQuadrupleCopper>);
        coat8xwire(<gregtech:cable_octal:25>, <ore:wireGtOctalCopper>);
        coat16xwire(<gregtech:cable_hex:25>, <ore:wireGtHexCopper>);
    //electrum
        coat1xwire(<gregtech:cable_single:277>, <ore:wireGtSingleElectrum>);
        coat2xwire(<gregtech:cable_double:277>, <ore:wireGtDoubleElectrum>);
        coat4xwire(<gregtech:cable_quadruple:277>, <ore:wireGtQuadrupleElectrum>);
        coat8xwire(<gregtech:cable_octal:277>, <ore:wireGtOctalElectrum>);
        coat16xwire(<gregtech:cable_hex:277>, <ore:wireGtHexElectrum>);
    //red alloy
        coat1xwire(<gregtech:cable_single:2517>, <ore:wireGtSingleRedAlloy>);
        coat2xwire(<gregtech:cable_double:2517>, <ore:wireGtDoubleRedAlloy>);
        coat4xwire(<gregtech:cable_quadruple:2517>, <ore:wireGtQuadrupleRedAlloy>);
        coat8xwire(<gregtech:cable_octal:2517>, <ore:wireGtOctalRedAlloy>);
        coat16xwire(<gregtech:cable_hex:2517>, <ore:wireGtHexRedAlloy>);
print("END: Immersive Engineering: Bottling Machine: Coat wires ");