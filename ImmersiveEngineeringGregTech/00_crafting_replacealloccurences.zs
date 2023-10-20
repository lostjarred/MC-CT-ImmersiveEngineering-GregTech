#priority 900
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Crafting : Replace all occurences");
    //recipes.replaceAllOccurences(IIngredient toReplace, IIngredient replaceWith, @Optional IIngredient forOutput);
    recipes.replaceAllOccurences(<ore:plateAluminum>, <ore:plateAluminium>);

print("END: Crafting : Replace all occurences");