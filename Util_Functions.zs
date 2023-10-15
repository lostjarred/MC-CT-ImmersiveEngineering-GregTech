#priority 800
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print("START: util functions");

function getItemstack(input as IOreDictEntry) as IItemStack {
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

print("END: util functions");