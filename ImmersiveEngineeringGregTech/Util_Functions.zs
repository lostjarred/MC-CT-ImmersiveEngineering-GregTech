#priority 800
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print("START: util functions");

function getItemstack(input as IOreDictEntry) as IItemStack {
    //returns a prefered mod itemstacl from oredict recipe
    val preferedmod = "gregtech" as string;
    var return_item = input.firstItem as IItemStack;
    for item in input.items {
        var itemdef = item.definition;
        if (itemdef.owner == preferedmod) {
            return_item = item;
            break;
        }
    }
    return return_item;
}

function gen_pickaxe_recipe(plate as IIngredient, ingot as IIngredient) as IIngredient[][] {
    val gtfile = <ore:craftingToolFile>;
    val gthammer = <ore:toolHammer>;
    return [
        [plate, ingot, ingot],
        [gthammer, <ore:stickTreatedWood>, gtfile],
        [null, <ore:stickTreatedWood>, null]
    ];
}

function gen_shovel_recipe(plate as IIngredient) as IIngredient[][] {
    val gtfile = <ore:craftingToolFile>;
    val gthammer = <ore:toolHammer>;
    return [
        [gthammer, ingot, gtfile],
        [null, <ore:stickTreatedWood>, null],
        [null, <ore:stickTreatedWood>, null]
    ];
}

print("END: util functions");