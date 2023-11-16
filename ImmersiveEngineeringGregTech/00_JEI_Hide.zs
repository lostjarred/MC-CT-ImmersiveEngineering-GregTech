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
    /*
        //removeAndHide(IIngredient output, @optional boolean NBT-Match)
        mods.jei.JEI.removeAndHide(<minecraft:iron_leggings>);
    */
    function hide_rods() {
        //treated stick
            mods.jei.JEI.removeAndHide(<immersiveengineering:material:0>);
        //iron
            mods.jei.JEI.hide(<immersiveengineering:material:1>);
        //steel
            mods.jei.JEI.hide(<immersiveengineering:material:2>);
        //aluminium
            mods.jei.JEI.hide(<immersiveengineering:material:3>);
    }

    function hide_nuggets() {
        //copper
            mods.jei.JEI.removeAndHide(<immersiveengineering:metal:20>);
        //aluminium
            mods.jei.JEI.removeAndHide(<immersiveengineering:metal:21>);
        //lead
            mods.jei.JEI.removeAndHide(<immersiveengineering:metal:22>);
        //silver
            mods.jei.JEI.removeAndHide(<immersiveengineering:metal:23>);
        //nickel
            mods.jei.JEI.removeAndHide(<immersiveengineering:metal:24>);
        //uranium
            mods.jei.JEI.removeAndHide(<immersiveengineering:metal:25>);
        //constantan
            //mods.jei.JEI.removeAndHide(<immersiveengineering:metal:26>);
        //electrum
            mods.jei.JEI.removeAndHide(<immersiveengineering:metal:27>);
        //steel
            mods.jei.JEI.removeAndHide(<immersiveengineering:metal:28>);
        //iron
            mods.jei.JEI.removeAndHide(<immersiveengineering:metal:29>);
    }

    function hide_grit() {
        //copper
            mods.jei.JEI.hide(<immersiveengineering:metal:9>);
        //aluminium
            mods.jei.JEI.hide(<immersiveengineering:metal:10>);
        //lead
            mods.jei.JEI.hide(<immersiveengineering:metal:11>);
        //silver
            mods.jei.JEI.hide(<immersiveengineering:metal:12>);
        //nickel
            mods.jei.JEI.hide(<immersiveengineering:metal:13>);
        //urainium
            mods.jei.JEI.hide(<immersiveengineering:metal:14>);
        //constantan
            //mods.jei.JEI.hide(<immersiveengineering:metal:15>);
        //electrum
            mods.jei.JEI.removeAndHide(<immersiveengineering:metal:16>);
        //steel
            mods.jei.JEI.hide(<immersiveengineering:metal:17>);
        //iron
            mods.jei.JEI.hide(<immersiveengineering:metal:18>);
        //gold
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
    hide_nuggets();
    hide_grit();
    hide_misc();
print("END: Immersive Engineering : JEI : hide ");