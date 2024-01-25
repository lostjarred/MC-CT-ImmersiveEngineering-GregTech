#priority 1510
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Immersive Engineering Metal Press: Remove Plates");

/*
    mods.immersiveengineering.MetalPress.removeRecipe(IItemstack output);
    mods.immersiveengineering.MetalPress.removeRecipe(<minecraft:diamond>);
*/
    function Remove_Metalpress_plate(plate as IItemStack) {
        //print("removing metal press plate recipe for " +  plate.commandString + " " + plate.name);
        mods.immersiveengineering.MetalPress.removeRecipe(plate);
    }
    val plate_array_item = [
        <immersiveengineering:metal:34>,
        <immersiveengineering:metal:32>,
        <immersiveengineering:metal:33>,
        <immersiveengineering:metal:31>,
        <immersiveengineering:metal:30>,
        <immersiveengineering:metal:37>,
        <immersiveengineering:metal:35>,
        <immersiveengineering:metal:34>,
        <immersiveengineering:metal:40>,
        <immersiveengineering:metal:36>,
        <immersiveengineering:metal:39>,
        <immersiveengineering:metal:38>,
    ] as IItemStack[];

    for plate in plate_array_item {
        Remove_Metalpress_plate(plate);
    }

print("END: Immersive Engineering Metal Press: Remove Plates");