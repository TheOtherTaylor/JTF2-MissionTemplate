/*
 * Author: Anton and TheOtherTaylor
 * Sets gear class as variable to player for gear assignment then calls JTF2_fnc_assignGear.
 *
 * Arguments:
 * 0: The player <OBJECT>
 * 1: Class <STRING>
 *
 * Return Value:
 * None
 *
 * Example:
 * [player, "b_ar"] call JTF2_fnc_setGear;
 *
 * Public: Yes
 */
(_this select 0) setVariable ["JTF2_UnitType", (_this select 1)];
[(_this select 0)] call JTF2_fnc_assignGear;