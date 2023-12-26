#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Immersive Engineering : Recipe : Unify ");
    function unify_resources(output as IItemStack, input as IIngredient) {
       //recipes.addShaped(output,inputs,function,action);
       recipes.addShaped(output * 2,[
           [input, input]
       ]); 
    }

    function unify_ingots() {
        //copper
            unify_resources(<gregtech:meta_ingot:25>, <immersiveengineering:metal>);
        //aluminium
            unify_resources(<gregtech:meta_ingot:2>, <immersiveengineering:metal:1>);
    }
    
    unify_ingots();
print("END: Immersive Engineering : Recipe : Unify ");