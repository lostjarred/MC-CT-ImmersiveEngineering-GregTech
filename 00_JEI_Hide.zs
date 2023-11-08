#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Immersive Engineering : JEI : hide ");
    /*
        //hide(IItemStack item);
        mods.jei.JEI.hide(<minecraft:diamond>);
    */

    function hide_plates() {
        //copper
            mods.jei.JEI.hide(<immersiveengineering:metal:30>);
        //aluminium
            mods.jei.JEI.hide(<immersiveengineering:metal:31>);
        //lead
            mods.jei.JEI.hide(<immersiveengineering:metal:32>);
        //silver
            mods.jei.JEI.hide(<immersiveengineering:metal:33>);
        //nickel
            mods.jei.JEI.hide(<immersiveengineering:metal:34>);
        //uranium
            mods.jei.JEI.hide(<immersiveengineering:metal:35>);
        //constantan
            mods.jei.JEI.hide(<immersiveengineering:metal:36>);
        //electrum
            mods.jei.JEI.hide(<immersiveengineering:metal:37>);
        //steel
            mods.jei.JEI.hide(<immersiveengineering:metal:38>);
        //iron
            mods.jei.JEI.hide(<immersiveengineering:metal:39>);
        //gold
            mods.jei.JEI.hide(<immersiveengineering:metal:40>);
    }

    hide_plate();
print("END: Immersive Engineering : JEI : hide ");