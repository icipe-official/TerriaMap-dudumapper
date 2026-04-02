import Terria from "terriajs/lib/Models/Terria";
import {
  defaultTourPoints,
  TourPoint
} from "terriajs/lib/ReactViewModels/defaultTourPoints";

/**
 * Tour spotlight steps that match this deployment: map settings, upload, and
 * compare/splitter are omitted or not exposed like stock Terria.
 */
export function getDuduTourPoints(terria: Terria): TourPoint[] {
  return defaultTourPoints.filter((p) => {
    if (p.appRefName === "SidePanelUploadButton") {
      return false;
    }
    if (p.appRefName === "MenuBarMapSettingsButton") {
      return false;
    }
    if (
      p.appRefName === "MapNavigationSplitterIcon" &&
      terria.configParameters.disableSplitter
    ) {
      return false;
    }
    if (
      p.appRefName === "MenuBarStoryButton" &&
      !terria.configParameters.storyEnabled
    ) {
      return false;
    }
    return true;
  });
}
