#priority 500

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
        //lead
            unify_resources(<gregtech:meta_ingot:55>, <immersiveengineering:metal:2>);
        //silver
            unify_resources(<gregtech:meta_ingot:100>, <immersiveengineering:metal:3>);
        //nickel
            unify_resources(<gregtech:meta_ingot:69>, <immersiveengineering:metal:4>);
        //uranium
            unify_resources(<gregtech:meta_ingot:116>, <immersiveengineering:metal:5>);
        //electrum 
            unify_resources(<gregtech:meta_ingot:277>, <immersiveengineering:metal:7>);
    }
    
    unify_ingots();
print("END: Immersive Engineering : Recipe : Unify ");