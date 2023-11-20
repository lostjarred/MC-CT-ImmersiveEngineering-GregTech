#priority 500
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Immersive Engineering Metal Press: Add Rods");
    
    /*
        mods.immersiveengineering.MetalPress.addRecipe(IItemStack output, IIngredient input, IItemStack mold, int energy, @Optional int inputSize);
        mods.immersiveengineering.MetalPress.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:emerald>, 2000);
        mods.immersiveengineering.MetalPress.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:emerald>, 2000, 16);
    */

    function add_metalpress_rod_recipe(rod as IItemStack, plate as IIngredient) {
        val energy = 1000;
        val mold = <immersiveengineering:mold:2>;
        val input_size = 1;
        print("adding metal press plate recipe for " +  rod.commandString + " " + rod.name + " using " + plate.commandString);
        mods.immersiveengineering.MetalPress.addRecipe(rod, plate, mold, energy, input_size);
    }

    //iron
    add_metalpress_rod_recipe(<gregtech:meta_stick:51>, <ore:plateIron>);


print("END: Immersive Engineering Metal Press: Add Rods");