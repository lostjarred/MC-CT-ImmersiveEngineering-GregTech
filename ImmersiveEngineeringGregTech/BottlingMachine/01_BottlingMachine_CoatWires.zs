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

    //copper
        coat1xwire(<gregtech:cable_single:25>, <ore:wireGtSingleCopper>);
        coat2xwire(<gregtech:cable_double:25>, <ore:wireGtDoubleCopper>);
        coat4xwire(<gregtech:cable_quadruple:25>, <ore:wireGtQuadrupleCopper>);
    //electrum
        coat1xwire(<gregtech:cable_single:277>, <ore:wireGtSingleElectrum>);

print("END: Immersive Engineering: Bottling Machine: Coat wires ");