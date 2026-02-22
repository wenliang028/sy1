"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || function (mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (k !== "default" && Object.prototype.hasOwnProperty.call(mod, k)) __createBinding(result, mod, k);
    __setModuleDefault(result, mod);
    return result;
};
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (g && (g = 0, op[0] && (_ = 0)), _) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
var electron_1 = require("electron");
var fs_1 = __importDefault(require("fs"));
var tmp_1 = __importDefault(require("tmp"));
var electron_screenshots_1 = __importDefault(require("electron-screenshots"));
var path_1 = require("path");
var logo_1 = __importStar(require("./logo"));
var confing_1 = __importDefault(require("./confing"));
var forceQuit = false;
var mainWindow;
var isMainWindowFocusedWhenStartScreenshot = false;
var screenshots;
var tray;
var trayIcon;
var settings = {};
var screenShotWindowId = 0;
var isFullScreen = false;
var isOsx = process.platform === "darwin";
var isWin = !isOsx;
var isDevelopment = process.env.NODE_ENV === "development";
var mainMenu = [
    {
        label: "航小信IM",
        submenu: [
            {
                label: "\u5173\u4E8E\u822A\u5C0F\u4FE1IM",
            },
            { label: "服务", role: "services" },
            { type: "separator" },
            {
                label: "退出",
                accelerator: "Command+Q",
                click: function () {
                    forceQuit = true;
                    mainWindow = null;
                    setTimeout(function () {
                        electron_1.app.exit(0);
                    }, 1000);
                },
            },
        ],
    },
    {
        label: "编辑",
        submenu: [
            {
                role: "undo",
                label: "撤销",
            },
            {
                role: "redo",
                label: "重做",
            },
            {
                type: "separator",
            },
            {
                role: "cut",
                label: "剪切",
            },
            {
                role: "copy",
                label: "复制",
            },
            {
                role: "paste",
                label: "粘贴",
            },
            {
                role: "pasteAndMatchStyle",
                label: "粘贴并匹配样式",
            },
            {
                role: "delete",
                label: "删除",
            },
            {
                role: "selectAll",
                label: "全选",
            },
        ],
    },
    {
        label: "显示",
        submenu: [
            {
                label: isFullScreen ? "全屏" : "退出全屏",
                accelerator: "Shift+Cmd+F",
                click: function () {
                    isFullScreen = !isFullScreen;
                    mainWindow.show();
                    mainWindow.setFullScreen(isFullScreen);
                },
            },
            {
                label: "切换会话",
                accelerator: "Shift+Cmd+M",
                click: function () {
                    mainWindow.show();
                    mainWindow.webContents.send("show-conversations");
                },
            },
            {
                type: "separator",
            },
            {
                type: "separator",
            },
            {
                role: "toggleDevTools",
                label: "切换开发者工具",
            },
            {
                role: "togglefullscreen",
                label: "切换全屏",
            },
        ],
    },
    {
        label: "窗口",
        role: "window",
        submenu: [
            {
                label: "最小化",
                role: "minimize",
            },
            {
                label: "关闭窗口",
                role: "close",
            },
        ],
    },
    {
        label: "帮助",
        role: "help",
        submenu: [
            {
                type: "separator",
            },
            {
                role: "reload",
                label: "刷新",
            },
            {
                role: "forceReload",
                label: "强制刷新",
            },
        ],
    },
];
var trayMenu = [
    {
        label: "显示窗口",
        click: function () {
            var isVisible = mainWindow.isVisible();
            isVisible ? mainWindow.hide() : mainWindow.show();
        },
    },
    {
        type: "separator",
    },
    {
        label: "退出",
        accelerator: "Command+Q",
        click: function () {
            forceQuit = true;
            mainWindow = null;
            setTimeout(function () {
                electron_1.app.exit(0);
            }, 1000);
        },
    },
];
function updateTray(unread) {
    if (unread === void 0) { unread = 0; }
    settings.showOnTray = true;
    // linux 系统不支持 tray
    if (process.platform === "linux") {
        return;
    }
    if (settings.showOnTray) {
        var contextmenu_1 = electron_1.Menu.buildFromTemplate(trayMenu);
        if (!trayIcon) {
            trayIcon = (0, logo_1.getNoMessageTrayIcon)();
        }
        setTimeout(function () {
            if (!tray) {
                // Init tray icon
                tray = new electron_1.Tray(trayIcon);
                if (process.platform === "linux") {
                    tray.setContextMenu(contextmenu_1);
                }
                tray.on("right-click", function () {
                    tray.popUpContextMenu(contextmenu_1);
                });
                tray.on("click", function () {
                    mainWindow.show();
                });
            }
            if (isOsx) {
                tray.setTitle(unread > 0 ? " " + unread : "");
            }
            tray.setImage(trayIcon);
        });
    }
    else {
        if (!tray)
            return;
        tray.destroy();
        tray = null;
    }
}
function createMenu() {
    var menu = electron_1.Menu.buildFromTemplate(mainMenu);
    if (isOsx) {
        electron_1.Menu.setApplicationMenu(menu);
    }
    else {
        mainWindow.setMenu(null);
    }
}
function regShortcut() {
    electron_1.globalShortcut.register("CommandOrControl+shift+a", function () {
        isMainWindowFocusedWhenStartScreenshot = mainWindow.isFocused();
        console.log("isMainWindowFocusedWhenStartScreenshot", mainWindow.isFocused());
        screenshots.startCapture();
    });
    // 打开所有窗口控制台
    electron_1.globalShortcut.register("ctrl+shift+i", function () {
        var windows = electron_1.BrowserWindow.getAllWindows();
        windows.forEach(function (win) { return win.openDevTools(); });
    });
}
var createMainWindow = function () { return __awaiter(void 0, void 0, void 0, function () {
    var NODE_ENV, _a, width, height, WEB_URL;
    return __generator(this, function (_b) {
        NODE_ENV = process.env.NODE_ENV;
        _a = electron_1.screen.getPrimaryDisplay().workAreaSize, width = _a.width, height = _a.height;
        mainWindow = new electron_1.BrowserWindow({
            width: 960,
            height: 600,
            minWidth: 960,
            minHeight: 600,
            // frame: true, // * app边框(包括关闭,全屏,最小化按钮的导航栏) @false: 隐藏
            // titleBarStyle: "hidden",
            // transparent: true, // * app 背景透明
            hasShadow: false, // * app 边框阴影
            show: false, // 启动窗口时隐藏,直到渲染进程加载完成「ready-to-show 监听事件」 再显示窗口,防止加载时闪烁
            resizable: true, // 禁止手动修改窗口尺寸
            webPreferences: {
                // 加载脚本
                preload: (0, path_1.join)(__dirname, "..", "preload/index"),
                nodeIntegration: true,
            },
            // frame: !isWin,
        });
        mainWindow.center();
        mainWindow.once("ready-to-show", function () {
            mainWindow.show(); // 显示窗口
            mainWindow.focus();
        });
        mainWindow.on("close", function (e) {
            if (forceQuit || !tray) {
                mainWindow = null;
            }
            else {
                e.preventDefault();
                if (mainWindow.isFullScreen()) {
                    mainWindow.setFullScreen(false);
                    mainWindow.once("leave-full-screen", function () { return mainWindow.hide(); });
                }
                else {
                    mainWindow.hide();
                }
            }
        });
        if (NODE_ENV === "development")
            mainWindow.loadURL("http://localhost:3000");
        if (NODE_ENV !== "development") {
            process.env.DIST_ELECTRON = (0, path_1.join)(__dirname, "../");
            WEB_URL = (0, path_1.join)(process.env.DIST_ELECTRON, "../build/index.html");
            mainWindow.loadFile(WEB_URL);
        }
        electron_1.ipcMain.on("screenshots-start", function (event, args) {
            console.log("main voip-message event", args);
            screenShotWindowId = event.sender.id;
            screenshots.startCapture();
        });
        createMenu();
        return [2 /*return*/];
    });
}); };
function onDeepLink(url) {
    console.log("onOpenDeepLink", url);
    mainWindow.webContents.send("deep-link", url);
}
electron_1.app.setName(confing_1.default.name);
isDevelopment && electron_1.app.dock && electron_1.app.dock.setIcon(logo_1.default);
electron_1.app.on("open-url", function (event, url) {
    onDeepLink(url);
});
// 单例模式启动
var gotTheLock = electron_1.app.requestSingleInstanceLock();
if (!gotTheLock) {
    electron_1.app.quit();
}
else {
    electron_1.app.on("second-instance", function (event, argv) {
        if (mainWindow) {
            mainWindow.show();
            if (mainWindow.isMinimized()) {
                mainWindow.restore();
            }
            mainWindow.focus();
        }
    });
}
electron_1.app.on("ready", function () {
    regShortcut();
    createMainWindow(); // 创建窗口
    screenshots = new electron_screenshots_1.default({
        singleWindow: true,
    });
    var onScreenShotEnd = function (result) {
        console.log("onScreenShotEnd", isMainWindowFocusedWhenStartScreenshot, screenShotWindowId);
        if (isMainWindowFocusedWhenStartScreenshot) {
            if (result) {
                mainWindow.webContents.send("screenshots-ok", result);
            }
            mainWindow.show();
            isMainWindowFocusedWhenStartScreenshot = false;
        }
        else if (screenShotWindowId) {
            var windows = electron_1.BrowserWindow.getAllWindows();
            var tms = windows.filter(function (win) { return win.webContents.id === screenShotWindowId; });
            if (tms.length > 0) {
                if (result) {
                    tms[0].webContents.send("screenshots-ok", result);
                }
                tms[0].show();
            }
            screenShotWindowId = 0;
        }
    };
    // 截图添加快捷键esc
    screenshots.on('windowCreated', function ($win) {
        $win.on('focus', function () {
            electron_1.globalShortcut.register('esc', function () {
                if ($win === null || $win === void 0 ? void 0 : $win.isFocused()) {
                    screenshots.endCapture();
                }
            });
        });
        $win.on('blur', function () {
            electron_1.globalShortcut.unregister('esc');
        });
    });
    // 点击确定按钮回调事件
    screenshots.on("ok", function (e, buffer, bounds) {
        var filename = tmp_1.default.tmpNameSync() + '.png';
        var image = electron_1.nativeImage.createFromBuffer(buffer);
        fs_1.default.writeFileSync(filename, image.toPNG());
        console.log("screenshots ok", e);
        onScreenShotEnd({ filePath: filename });
    });
    // 点击取消按钮回调事件
    screenshots.on("cancel", function (e) {
        // 执行了preventDefault
        // 点击取消不会关闭截图窗口
        // e.preventDefault()
        // console.log('capture', 'cancel2')
        console.log("screenshots cancel", e);
        onScreenShotEnd();
    });
    // 点击保存按钮回调事件
    screenshots.on("save", function (e, _a) {
        var viewer = _a.viewer;
        console.log("screenshots save", e);
        onScreenShotEnd();
    });
    try {
        updateTray();
    }
    catch (e) {
        // do nothing
        console.log("==updateTray==", e);
    }
});
electron_1.app.on("activate", function () {
    if (!mainWindow) {
        return createMainWindow();
    }
    if (!mainWindow.isVisible()) {
        mainWindow.show();
    }
});
electron_1.app.on("before-quit", function () {
    forceQuit = true;
    if (!tray)
        return;
    tray.destroy();
    tray = null;
});
// 除了 macOS 外，当所有窗口都被关闭的时候退出程序。 macOS窗口全部关闭时,dock中程序不会退出
electron_1.app.on("window-all-closed", function () {
    process.platform !== "darwin" && electron_1.app.quit();
});
