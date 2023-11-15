#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Immersive Engineering : JEI : hide ");
    /*
        //hide(IItemStack item);
        mods.jei.JEI.hide(<minecraft:diamond>);
    */

    function hide_wires() {
        //copper
            mods.jei.JEI.hide(<immersiveengineering:material:20>);
        //electrum
            mods.jei.JEI.hide(<immersiveengineering:material:21>);
        //aluminium
            mods.jei.JEI.hide(<immersiveengineering:material:22>);
        //steel
            mods.jei.JEI.hide(<immersiveengineering:material:23>);
    }

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

    function hide_rods() {
        //iron
            mods.jei.JEI.hide(<immersiveengineering:material:1>);
        //steel
        //aluminium
    }

    function hide_misc() {
        //vacuum tube
            mods.jei.JEI.hide(<immersiveengineering:material:26>);
        //circuit board
            mods.jei.JEI.hide(<immersiveengineering:material:27>);
        //blast brick
            mods.jei.JEI.hide(<immersiveengineering:stone_decoration:1>);
            //slab
                mods.jei.JEI.hide(<immersiveengineering:stone_decoration_slab:1>);
        //coke brick
            mods.jei.JEI.hide(<immersiveengineering:stone_decoration>);
            //slab
                mods.jei.JEI.hide(<immersiveengineering:stone_decoration_slab>);
    }

    hide_plates();
    hide_wires();
    hide_rods();
    hide_misc();
print("END: Immersive Engineering : JEI : hide ");