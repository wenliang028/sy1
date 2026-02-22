"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.getNoMessageTrayIcon = void 0;
var path_1 = __importDefault(require("path"));
var electron_1 = require("electron");
exports.default = path_1.default.join(electron_1.app.getAppPath(), "./resources/logo.png");
function getNoMessageTrayIcon() {
    if (process.platform === 'darwin') {
        return path_1.default.join(electron_1.app.getAppPath(), './resources/tray/30x30.png');
    }
    else if (process.platform === 'win32') {
        return path_1.default.join(electron_1.app.getAppPath(), './resources/tray/128x128.png');
    }
    else if (electron_1.screen.getPrimaryDisplay().scaleFactor > 1) {
        return path_1.default.join(electron_1.app.getAppPath(), './resources/tray/128x128.png');
    }
    else {
        return path_1.default.join(electron_1.app.getAppPath(), './resources/tray/128x128.png');
    }
}
exports.getNoMessageTrayIcon = getNoMessageTrayIcon;
