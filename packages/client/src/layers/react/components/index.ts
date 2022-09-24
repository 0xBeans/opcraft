import { registerComponentBrowser } from "./ComponentBrowser";
import { registerActionQueue } from "./ActionQueue";
import { registerCrosshairs } from "./Crosshairs";
import { registerCrafting } from "./Crafting";
import { registerLoadingState } from "./LoadingState";
import { registerBlockExplorer } from "./BlockExplorer";
import { registerInventory } from "./Inventory";
export * from "./common";

export function registerUIComponents() {
  registerLoadingState();
  registerComponentBrowser();
  registerActionQueue();
  registerCrosshairs();
  registerCrafting();
  registerBlockExplorer();
  registerInventory();
}
