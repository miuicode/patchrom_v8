.class public Lcom/android/server/wm/WindowManagerService;
.super Landroid/view/IWindowManager$Stub;
.source "WindowManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;
.implements Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;,
        Lcom/android/server/wm/WindowManagerService$H;,
        Lcom/android/server/wm/WindowManagerService$DummyAnimation;,
        Lcom/android/server/wm/WindowManagerService$PolicyThread;,
        Lcom/android/server/wm/WindowManagerService$WMThread;,
        Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    }
.end annotation


# static fields
.field static final ADJUST_WALLPAPER_LAYERS_CHANGED:I = 0x2

.field static final ADJUST_WALLPAPER_VISIBILITY_CHANGED:I = 0x4

.field private static final ALLOW_DISABLE_NO:I = 0x0

.field private static final ALLOW_DISABLE_UNKNOWN:I = -0x1

.field private static final ALLOW_DISABLE_YES:I = 0x1

.field static final BLUR:Z = true

.field static final CUSTOM_SCREEN_ROTATION:Z = true

.field static final DEBUG:Z = false

.field static final DEBUG_ADD_REMOVE:Z = false

.field static final DEBUG_ANIM:Z = false

.field static final DEBUG_APP_ORIENTATION:Z = false

.field static final DEBUG_APP_TRANSITIONS:Z = false

.field static final DEBUG_BOOT:Z = false

.field static final DEBUG_CONFIGURATION:Z = false

.field static final DEBUG_DRAG:Z = false

.field static final DEBUG_FOCUS:Z = false

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_INPUT_METHOD:Z = false

.field static final DEBUG_LAYERS:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_ORIENTATION:Z = false

.field static final DEBUG_REORDER:Z = false

.field static final DEBUG_RESIZE:Z = false

.field static final DEBUG_SCREENSHOT:Z = false

.field static final DEBUG_SCREEN_ON:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field static final DEBUG_TOKEN_MOVEMENT:Z = false

.field static final DEBUG_VISIBILITY:Z = false

.field static final DEBUG_WALLPAPER:Z = false

.field static final DEBUG_WINDOW_MOVEMENT:Z = false

.field static final DEFAULT_DIM_DURATION:I = 0xc8

.field static final DEFAULT_FADE_IN_OUT_DURATION:I = 0x190

.field static final DEFAULT_INPUT_DISPATCHING_TIMEOUT_NANOS:J = 0x12a05f200L

.field static final FREEZE_LAYER:I = 0x1e8481

.field static final HIDE_STACK_CRAWLS:Z = true

.field private static final INJECTION_TIMEOUT_MILLIS:I = 0x7530

.field private static final INPUT_DEVICES_READY_FOR_SAFE_MODE_DETECTION_TIMEOUT_MILLIS:I = 0x3e8

.field static final LAYER_OFFSET_BLUR:I = 0x2

.field static final LAYER_OFFSET_DIM:I = 0x1

.field static final MASK_LAYER:I = 0x1e8480

.field static final MAX_ANIMATION_DURATION:I = 0x2710

.field static final PROFILE_ORIENTATION:Z = false

.field static final SHOW_LIGHT_TRANSACTIONS:Z = false

.field static final SHOW_SURFACE_ALLOC:Z = false

.field static final SHOW_TRANSACTIONS:Z = false

.field private static final SYSTEM_DEBUGGABLE:Ljava/lang/String; = "ro.debuggable"

.field private static final SYSTEM_SECURE:Ljava/lang/String; = "ro.secure"

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field static final TYPE_LAYER_OFFSET:I = 0x3e8

.field static final UPDATE_FOCUS_NORMAL:I = 0x0

.field static final UPDATE_FOCUS_PLACING_SURFACES:I = 0x2

.field static final UPDATE_FOCUS_WILL_ASSIGN_LAYERS:I = 0x1

.field static final UPDATE_FOCUS_WILL_PLACE_SURFACES:I = 0x3

.field static final WALLPAPER_TIMEOUT:J = 0x96L

.field static final WALLPAPER_TIMEOUT_RECOVERY:J = 0x2710L

.field static final WINDOW_LAYER_MULTIPLIER:I = 0x5

.field static final localLOGV:Z

.field static final sDummyAnimation:Landroid/view/animation/Animation;


# instance fields
.field final mActivityManager:Landroid/app/IActivityManager;

.field final mAllowBootMessages:Z

.field private mAllowDisableKeyguard:I

.field mAltOrientation:Z

.field mAnimationPending:Z

.field mAppDisplayHeight:I

.field mAppDisplayWidth:I

.field final mAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mAppTransitionReady:Z

.field mAppTransitionRunning:Z

.field mAppTransitionTimeout:Z

.field mAppsFreezingScreen:I

.field mBaseDisplayHeight:I

.field mBaseDisplayWidth:I

.field final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBlackFrame:Lcom/android/server/wm/BlackFrame;

.field mBlurShown:Z

.field mBlurSurface:Landroid/view/Surface;

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mClosingApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

.field mCompatibleScreenScale:F

.field final mContext:Landroid/content/Context;

.field mCurConfiguration:Landroid/content/res/Configuration;

.field mCurDisplayHeight:I

.field mCurDisplayWidth:I

.field mCurrentFocus:Lcom/android/server/wm/WindowState;

.field mDeferredRotationPauseCount:I

.field final mDestroySurface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mDimAnimator:Lcom/android/server/wm/DimAnimator;

.field mDisplay:Landroid/view/Display;

.field mDisplayEnabled:Z

.field mDisplayFrozen:Z

.field final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field final mDisplaySizeLock:Ljava/lang/Object;

.field final mDragInputHandler:Landroid/view/InputHandler;

.field mDragState:Lcom/android/server/wm/DragState;

.field final mExitingAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mFakeWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/FakeWindowImpl;",
            ">;"
        }
    .end annotation
.end field

.field final mFinishedStarting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mFocusMayChange:Z

.field mFocusedApp:Lcom/android/server/wm/AppWindowToken;

.field mForceDisplayEnabled:Z

.field mForceRemoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mForcedAppOrientation:I

.field mFxSession:Landroid/view/SurfaceSession;

.field mH:Lcom/android/server/wm/WindowManagerService$H;

.field mHardKeyboardAvailable:Z

.field mHardKeyboardEnabled:Z

.field mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;

.field final mHaveInputMethods:Z

.field mHdmiAllowAni:Z

.field mHoldingScreenOn:Lcom/android/server/wm/Session;

.field mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mInLayout:Z

.field mInTouchMode:Z

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field final mInputManager:Lcom/android/server/wm/InputManager;

.field mInputMethodAnimLayerAdjustment:I

.field final mInputMethodDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

.field mInputMethodTarget:Lcom/android/server/wm/WindowState;

.field mInputMethodTargetWaitingAnim:Z

.field mInputMethodWindow:Lcom/android/server/wm/WindowState;

.field final mInputMonitor:Lcom/android/server/wm/InputMonitor;

.field private mKeyguardDisabled:Z

.field final mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

.field mLastFocus:Lcom/android/server/wm/WindowState;

.field mLastStatusBarVisibility:I

.field mLastWallpaperTimeoutTime:J

.field mLastWallpaperX:F

.field mLastWallpaperXStep:F

.field mLastWallpaperY:F

.field mLastWallpaperYStep:F

.field mLastWindowForcedOrientation:I

.field mLayoutNeeded:Z

.field mLayoutSeq:I

.field final mLimitedAlphaCompositing:Z

.field mLosingFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

.field mNextAppTransition:I

.field mNextAppTransitionEnter:I

.field mNextAppTransitionExit:I

.field mNextAppTransitionPackage:Ljava/lang/String;

.field final mOpeningApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPowerManager:Lcom/android/server/PowerManagerService;

.field final mRealDisplayMetrics:Landroid/util/DisplayMetrics;

.field mRebuildTmp:[Lcom/android/server/wm/WindowState;

.field final mResizingWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mRotation:I

.field mRotationWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/IRotationWatcher;",
            ">;"
        }
    .end annotation
.end field

.field mRoundedCorners:Lcom/android/server/wm/RoundedCornersSurface;

.field mSafeMode:Z

.field mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

.field mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

.field final mSessions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/wm/Session;",
            ">;"
        }
    .end annotation
.end field

.field mShowingBootMessages:Z

.field mSkipAppTransitionAnimation:Z

.field mStartingIconInTransition:Z

.field mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

.field mSystemBooted:Z

.field final mTempConfiguration:Landroid/content/res/Configuration;

.field final mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

.field final mTmpFloats:[F

.field final mToBottomApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mToTopApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mTokenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mTransactionSequence:I

.field mTransitionAnimationScale:F

.field mTurnOnScreen:Z

.field mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private mViewServer:Lcom/android/server/wm/ViewServer;

.field mWaitingForConfig:Z

.field mWaitingForDrawn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/os/IRemoteCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

.field mWallpaperAnimLayerAdjustment:I

.field mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field final mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mWatermark:Lcom/android/server/wm/Watermark;

.field mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

.field mWindowAnimationScale:F

.field private mWindowChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowManagerService$WindowChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

.field final mWindowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowsChanged:Z

.field mWindowsFreezingScreen:Z

.field mRoundedCorners:Lcom/android/server/wm/RoundedCornersSurface;

# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6513
    new-instance v0, Lcom/android/server/wm/WindowManagerService$DummyAnimation;

    invoke-direct {v0}, Lcom/android/server/wm/WindowManagerService$DummyAnimation;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowManagerService;->sDummyAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)V
    .locals 11
    .parameter "context"
    .parameter "pm"
    .parameter "haveInputMethods"
    .parameter "showBootMsgs"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/high16 v8, -0x4080

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 771
    invoke-direct {p0}, Landroid/view/IWindowManager$Stub;-><init>()V

    .line 260
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisabled:Z

    .line 265
    iput v9, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    .line 267
    new-instance v3, Lcom/android/server/wm/WindowManagerService$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const-string v5, "WindowManagerService.mKeyguardTokenWatcher"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/wm/WindowManagerService$1;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    .line 286
    new-instance v3, Lcom/android/server/wm/WindowManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/wm/WindowManagerService$2;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 326
    invoke-static {}, Lcom/android/internal/policy/PolicyManager;->makeNewWindowManager()Landroid/view/WindowManagerPolicy;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 335
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    .line 341
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    .line 346
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    .line 353
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    .line 360
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    .line 366
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    .line 372
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    .line 377
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 383
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    .line 390
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 395
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    .line 400
    const/16 v3, 0x14

    new-array v3, v3, [Lcom/android/server/wm/WindowState;

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    .line 405
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    .line 411
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    .line 422
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    .line 429
    const/16 v3, 0x14

    new-array v3, v3, [Lcom/android/server/wm/WindowState;

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    .line 434
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 443
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    .line 445
    const/16 v3, 0x9

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 448
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    .line 449
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    .line 450
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    .line 451
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    .line 463
    new-instance v3, Ljava/lang/Object;

    invoke-direct/range {v3 .. v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    .line 464
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    .line 465
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    .line 466
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    .line 467
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    .line 468
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .line 469
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    .line 470
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    .line 471
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    .line 473
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    .line 474
    iput v9, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    .line 475
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    .line 476
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    .line 480
    iput-boolean v10, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 481
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationPending:Z

    .line 482
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 483
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 484
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 485
    iput-boolean v10, p0, Lcom/android/server/wm/WindowManagerService;->mHdmiAllowAni:Z

    .line 486
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    .line 487
    iput v9, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    .line 489
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    .line 491
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    .line 496
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 508
    iput v9, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    .line 512
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    .line 513
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    .line 514
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    .line 515
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    .line 516
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 517
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    .line 518
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    .line 519
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    .line 520
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    .line 524
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 525
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 526
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 527
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 529
    new-instance v3, Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v3, p0}, Lcom/android/server/wm/WindowManagerService$H;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 531
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 532
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 536
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 540
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 541
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    .line 547
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 551
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 554
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 557
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 562
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 563
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    .line 565
    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    .line 566
    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    .line 567
    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    .line 568
    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    .line 579
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 583
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    .line 584
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    .line 594
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    .line 595
    new-instance v3, Lcom/android/server/wm/WindowManagerService$3;

    invoke-direct {v3, p0}, Lcom/android/server/wm/WindowManagerService$3;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDragInputHandler:Landroid/view/InputHandler;

    .line 656
    iput-boolean v10, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    .line 659
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    .line 661
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 668
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 6242
    new-instance v3, Lcom/android/server/wm/InputMonitor;

    invoke-direct {v3, p0}, Lcom/android/server/wm/InputMonitor;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 7327
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    .line 772
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 773
    iput-boolean p3, p0, Lcom/android/server/wm/WindowManagerService;->mHaveInputMethods:Z

    .line 774
    iput-boolean p4, p0, Lcom/android/server/wm/WindowManagerService;->mAllowBootMessages:Z

    .line 775
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    .line 778
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    .line 779
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v3, v4}, Lcom/android/server/PowerManagerService;->setPolicy(Landroid/view/WindowManagerPolicy;)V

    .line 780
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 781
    .local v1, pmc:Landroid/os/PowerManager;
    const-string v3, "SCREEN_FROZEN"

    invoke-virtual {v1, v10, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    .line 783
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 785
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 786
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 789
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "window_animation_scale"

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    .line 791
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "transition_animation_scale"

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    .line 795
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 796
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 797
    const-string v3, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 799
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 801
    const/16 v3, 0xa

    const-string v4, "KEEP_SCREEN_ON_FLAG"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 803
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 805
    new-instance v3, Lcom/android/server/wm/InputManager;

    invoke-direct {v3, p1, p0}, Lcom/android/server/wm/InputManager;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    .line 807
    new-instance v2, Lcom/android/server/wm/WindowManagerService$PolicyThread;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-direct {v2, v3, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService$PolicyThread;-><init>(Landroid/view/WindowManagerPolicy;Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;Lcom/android/server/PowerManagerService;)V

    .line 808
    .local v2, thr:Lcom/android/server/wm/WindowManagerService$PolicyThread;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService$PolicyThread;->start()V

    .line 810
    monitor-enter v2

    .line 811
    :goto_0
    :try_start_0
    iget-boolean v3, v2, Lcom/android/server/wm/WindowManagerService$PolicyThread;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 813
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 814
    :catch_0
    move-exception v3

    goto :goto_0

    .line 817
    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 819
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v3}, Lcom/android/server/wm/InputManager;->start()V

    .line 822
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 823
    return-void

    .line 817
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZLcom/android/server/wm/WindowManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->shouldAllowDisableKeyguard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/wm/WindowManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisabled:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/wm/WindowManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->notifyFocusChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/WindowManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/wm/WindowManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->notifyWindowsChanged()V

    return-void
.end method

.method private addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V
    .locals 28
    .parameter "win"
    .parameter "addToToken"

    .prologue
    .line 877
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 878
    .local v10, client:Landroid/view/IWindow;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v20, v0

    .line 879
    .local v20, token:Lcom/android/server/wm/WindowToken;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 881
    .local v14, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 882
    .local v3, N:I
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 884
    .local v8, attached:Lcom/android/server/wm/WindowState;
    if-nez v8, :cond_15

    .line 885
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 886
    .local v21, tokenWindowsPos:I
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_11

    .line 887
    add-int/lit8 v12, v21, -0x1

    .line 888
    .local v12, index:I
    if-ltz v12, :cond_5

    .line 892
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 894
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 895
    const/16 v21, 0x0

    .line 1016
    .end local v12           #index:I
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 1018
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1076
    .end local v21           #tokenWindowsPos:I
    :cond_1
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    if-eqz p2, :cond_2

    .line 1077
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1079
    :cond_2
    return-void

    .line 897
    .restart local v12       #index:I
    .restart local v21       #tokenWindowsPos:I
    :cond_3
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 898
    .local v7, atoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v7, :cond_4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    iget-object v0, v7, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 900
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 901
    add-int/lit8 v21, v21, -0x1

    goto :goto_0

    .line 903
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowManagerService;->findIdxBasedOnAppTokens(Lcom/android/server/wm/WindowState;)I

    move-result v16

    .line 904
    .local v16, newIdx:I
    const/16 v26, -0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 913
    add-int/lit8 v26, v16, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v14, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 914
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    goto/16 :goto_0

    .line 924
    .end local v7           #atoken:Lcom/android/server/wm/AppWindowToken;
    .end local v16           #newIdx:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 925
    .local v4, NA:I
    const/16 v17, 0x0

    .line 926
    .local v17, pos:Lcom/android/server/wm/WindowState;
    add-int/lit8 v11, v4, -0x1

    .local v11, i:I
    :goto_2
    if-ltz v11, :cond_6

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/AppWindowToken;

    .line 928
    .local v19, t:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 929
    add-int/lit8 v11, v11, -0x1

    .line 943
    .end local v19           #t:Lcom/android/server/wm/AppWindowToken;
    :cond_6
    if-eqz v17, :cond_b

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowToken;

    .line 946
    .local v7, atoken:Lcom/android/server/wm/WindowToken;
    if-eqz v7, :cond_7

    .line 947
    iget-object v0, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 948
    .local v5, NC:I
    if-lez v5, :cond_7

    .line 949
    iget-object v0, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 950
    .local v9, bottom:Lcom/android/server/wm/WindowState;
    iget v0, v9, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v26, v0

    if-gez v26, :cond_7

    .line 951
    move-object/from16 v17, v9

    .line 955
    .end local v5           #NC:I
    .end local v9           #bottom:Lcom/android/server/wm/WindowState;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_0

    .line 936
    .end local v7           #atoken:Lcom/android/server/wm/WindowToken;
    .restart local v19       #t:Lcom/android/server/wm/AppWindowToken;
    :cond_8
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->sendingToBottom:Z

    move/from16 v26, v0

    if-nez v26, :cond_9

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_9

    .line 937
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #pos:Lcom/android/server/wm/WindowState;
    check-cast v17, Lcom/android/server/wm/WindowState;

    .line 926
    .restart local v17       #pos:Lcom/android/server/wm/WindowState;
    :cond_9
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 966
    .local v6, NW:I
    :cond_a
    add-int/lit8 v11, v11, -0x1

    .line 959
    .end local v6           #NW:I
    .end local v19           #t:Lcom/android/server/wm/AppWindowToken;
    :cond_b
    if-ltz v11, :cond_c

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/AppWindowToken;

    .line 961
    .restart local v19       #t:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 962
    .restart local v6       #NW:I
    if-lez v6, :cond_a

    .line 963
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    add-int/lit8 v27, v6, -0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #pos:Lcom/android/server/wm/WindowState;
    check-cast v17, Lcom/android/server/wm/WindowState;

    .line 968
    .end local v6           #NW:I
    .end local v19           #t:Lcom/android/server/wm/AppWindowToken;
    .restart local v17       #pos:Lcom/android/server/wm/WindowState;
    :cond_c
    if-eqz v17, :cond_e

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowToken;

    .line 972
    .restart local v7       #atoken:Lcom/android/server/wm/WindowToken;
    if-eqz v7, :cond_d

    .line 973
    iget-object v0, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 974
    .restart local v5       #NC:I
    if-lez v5, :cond_d

    .line 975
    iget-object v0, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    add-int/lit8 v27, v5, -0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/wm/WindowState;

    .line 976
    .local v22, top:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v26, v0

    if-ltz v26, :cond_d

    .line 977
    move-object/from16 v17, v22

    .line 981
    .end local v5           #NC:I
    .end local v22           #top:Lcom/android/server/wm/WindowState;
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_0

    .line 984
    .end local v7           #atoken:Lcom/android/server/wm/WindowToken;
    :cond_e
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 985
    .local v15, myLayer:I
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v3, :cond_f

    .line 986
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/wm/WindowState;

    .line 987
    .local v23, w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-le v0, v15, :cond_10

    .line 995
    .end local v23           #w:Lcom/android/server/wm/WindowState;
    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v14, v11, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 996
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    goto/16 :goto_0

    .line 985
    .restart local v23       #w:Lcom/android/server/wm/WindowState;
    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1002
    .end local v4           #NA:I
    .end local v11           #i:I
    .end local v12           #index:I
    .end local v15           #myLayer:I
    .end local v17           #pos:Lcom/android/server/wm/WindowState;
    .end local v23           #w:Lcom/android/server/wm/WindowState;
    :cond_11
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 1003
    .restart local v15       #myLayer:I
    add-int/lit8 v11, v3, -0x1

    .restart local v11       #i:I
    :goto_4
    if-ltz v11, :cond_12

    .line 1004
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-gt v0, v15, :cond_14

    .line 1005
    add-int/lit8 v11, v11, 0x1

    .line 1009
    :cond_12
    if-gez v11, :cond_13

    const/4 v11, 0x0

    .line 1013
    :cond_13
    move-object/from16 v0, p1

    invoke-virtual {v14, v11, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1014
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    goto/16 :goto_0

    .line 1003
    :cond_14
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    .line 1024
    .end local v11           #i:I
    .end local v15           #myLayer:I
    .end local v21           #tokenWindowsPos:I
    :cond_15
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1025
    .restart local v4       #NA:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v18, v0

    .line 1026
    .local v18, sublayer:I
    const/high16 v13, -0x8000

    .line 1027
    .local v13, largestSublayer:I
    const/16 v25, 0x0

    .line 1028
    .local v25, windowWithLargestSublayer:Lcom/android/server/wm/WindowState;
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_5
    if-ge v11, v4, :cond_19

    .line 1029
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/wm/WindowState;

    .line 1030
    .restart local v23       #w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v24, v0

    .line 1031
    .local v24, wSublayer:I
    move/from16 v0, v24

    if-lt v0, v13, :cond_16

    .line 1032
    move/from16 v13, v24

    .line 1033
    move-object/from16 v25, v23

    .line 1035
    :cond_16
    if-gez v18, :cond_1b

    .line 1038
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_1d

    .line 1039
    if-eqz p2, :cond_17

    .line 1041
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1043
    :cond_17
    if-ltz v24, :cond_18

    move-object/from16 v23, v8

    .end local v23           #w:Lcom/android/server/wm/WindowState;
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 1060
    .end local v24           #wSublayer:I
    :cond_19
    :goto_6
    if-lt v11, v4, :cond_1

    .line 1061
    if-eqz p2, :cond_1a

    .line 1063
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1065
    :cond_1a
    if-gez v18, :cond_1e

    .line 1066
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v1}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_1

    .line 1050
    .restart local v23       #w:Lcom/android/server/wm/WindowState;
    .restart local v24       #wSublayer:I
    :cond_1b
    move/from16 v0, v24

    move/from16 v1, v18

    if-le v0, v1, :cond_1d

    .line 1051
    if-eqz p2, :cond_1c

    .line 1053
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1055
    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto :goto_6

    .line 1028
    :cond_1d
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1068
    .end local v23           #w:Lcom/android/server/wm/WindowState;
    .end local v24           #wSublayer:I
    :cond_1e
    if-ltz v13, :cond_1f

    .end local v25           #windowWithLargestSublayer:Lcom/android/server/wm/WindowState;
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_1

    .restart local v25       #windowWithLargestSublayer:Lcom/android/server/wm/WindowState;
    :cond_1f
    move-object/from16 v25, v8

    goto :goto_7
.end method

.method private applyAnimationLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZ)Z
    .locals 4
    .parameter "wtoken"
    .parameter "lp"
    .parameter "transit"
    .parameter "enter"

    .prologue
    .line 3060
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3062
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 3063
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p4, :cond_1

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionEnter:I

    :goto_0
    invoke-direct {p0, v3, v2}, Lcom/android/server/wm/WindowManagerService;->loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3125
    .local v0, a:Landroid/view/animation/Animation;
    :goto_1
    if-eqz v0, :cond_0

    .line 3134
    invoke-virtual {p1, v0}, Lcom/android/server/wm/AppWindowToken;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3140
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_0
    :goto_2
    iget-object v2, p1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    :goto_3
    return v2

    .line 3063
    :cond_1
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionExit:I

    goto :goto_0

    .line 3066
    :cond_2
    const/4 v1, 0x0

    .line 3067
    .local v1, animAttr:I
    sparse-switch p3, :sswitch_data_0

    .line 3119
    :goto_4
    if-eqz v1, :cond_d

    invoke-direct {p0, p2, v1}, Lcom/android/server/wm/WindowManagerService;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0       #a:Landroid/view/animation/Animation;
    :goto_5
    goto :goto_1

    .line 3069
    .end local v0           #a:Landroid/view/animation/Animation;
    :sswitch_0
    if-eqz p4, :cond_3

    const/4 v1, 0x4

    .line 3072
    :goto_6
    goto :goto_4

    .line 3069
    :cond_3
    const/4 v1, 0x5

    goto :goto_6

    .line 3074
    :sswitch_1
    if-eqz p4, :cond_4

    const/4 v1, 0x6

    .line 3077
    :goto_7
    goto :goto_4

    .line 3074
    :cond_4
    const/4 v1, 0x7

    goto :goto_7

    .line 3079
    :sswitch_2
    if-eqz p4, :cond_5

    const/16 v1, 0x8

    .line 3082
    :goto_8
    goto :goto_4

    .line 3079
    :cond_5
    const/16 v1, 0x9

    goto :goto_8

    .line 3084
    :sswitch_3
    if-eqz p4, :cond_6

    const/16 v1, 0xa

    .line 3087
    :goto_9
    goto :goto_4

    .line 3084
    :cond_6
    const/16 v1, 0xb

    goto :goto_9

    .line 3089
    :sswitch_4
    if-eqz p4, :cond_7

    const/16 v1, 0xc

    .line 3092
    :goto_a
    goto :goto_4

    .line 3089
    :cond_7
    const/16 v1, 0xd

    goto :goto_a

    .line 3094
    :sswitch_5
    if-eqz p4, :cond_8

    const/16 v1, 0xe

    .line 3097
    :goto_b
    goto :goto_4

    .line 3094
    :cond_8
    const/16 v1, 0xf

    goto :goto_b

    .line 3099
    :sswitch_6
    if-eqz p4, :cond_9

    const/16 v1, 0x10

    .line 3102
    :goto_c
    goto :goto_4

    .line 3099
    :cond_9
    const/16 v1, 0x11

    goto :goto_c

    .line 3104
    :sswitch_7
    if-eqz p4, :cond_a

    const/16 v1, 0x12

    .line 3107
    :goto_d
    goto :goto_4

    .line 3104
    :cond_a
    const/16 v1, 0x13

    goto :goto_d

    .line 3109
    :sswitch_8
    if-eqz p4, :cond_b

    const/16 v1, 0x14

    .line 3112
    :goto_e
    goto :goto_4

    .line 3109
    :cond_b
    const/16 v1, 0x15

    goto :goto_e

    .line 3114
    :sswitch_9
    if-eqz p4, :cond_c

    const/16 v1, 0x16

    :goto_f
    goto :goto_4

    :cond_c
    const/16 v1, 0x17

    goto :goto_f

    .line 3119
    :cond_d
    const/4 v0, 0x0

    goto :goto_5

    .line 3137
    .end local v1           #animAttr:I
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->clearAnimation()V

    goto :goto_2

    .line 3140
    :cond_f
    const/4 v2, 0x0

    goto :goto_3

    .line 3067
    nop

    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x1008 -> :sswitch_2
        0x100a -> :sswitch_4
        0x100d -> :sswitch_6
        0x100e -> :sswitch_8
        0x2007 -> :sswitch_1
        0x2009 -> :sswitch_3
        0x200b -> :sswitch_5
        0x200c -> :sswitch_7
        0x200f -> :sswitch_9
    .end sparse-switch
.end method

.method private final assignLayersLocked()V
    .locals 7

    .prologue
    .line 7287
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7288
    .local v0, N:I
    const/4 v1, 0x0

    .line 7289
    .local v1, curBaseLayer:I
    const/4 v2, 0x0

    .line 7298
    .local v2, curLayer:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_6

    .line 7299
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 7300
    .local v4, w:Lcom/android/server/wm/WindowState;
    iget v5, v4, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-eq v5, v1, :cond_0

    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v5, :cond_0

    if-lez v3, :cond_2

    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v5, :cond_2

    .line 7302
    :cond_0
    add-int/lit8 v2, v2, 0x5

    .line 7303
    iput v2, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 7308
    :goto_1
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_3

    .line 7309
    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v6, v6, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    .line 7315
    :goto_2
    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v5, :cond_5

    .line 7316
    iget v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    .line 7298
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7305
    :cond_2
    iget v2, v4, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move v1, v2

    .line 7306
    iput v2, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    goto :goto_1

    .line 7310
    :cond_3
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_4

    .line 7311
    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v6, v6, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_2

    .line 7313
    :cond_4
    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_2

    .line 7317
    :cond_5
    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v5, :cond_1

    .line 7318
    iget v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_3

    .line 7325
    .end local v4           #w:Lcom/android/server/wm/WindowState;
    :cond_6
    return-void
.end method

.method static canBeImeTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .parameter "w"

    .prologue
    const v2, 0x20008

    .line 1082
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v1, v2

    .line 1084
    .local v0, fl:I
    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1098
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v1

    .line 1100
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private computeCompatSmallestWidth(ZLandroid/util/DisplayMetrics;II)I
    .locals 12
    .parameter "rotated"
    .parameter "dm"
    .parameter "dw"
    .parameter "dh"

    .prologue
    .line 6027
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, p2}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 6028
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 6030
    if-eqz p1, :cond_0

    .line 6031
    move/from16 v4, p4

    .line 6032
    .local v4, unrotDw:I
    move v5, p3

    .line 6037
    .local v5, unrotDh:I
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    .line 6038
    .local v7, sw:I
    const/4 v8, 0x1

    move-object v6, p0

    move-object v9, p2

    move v10, v5

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    .line 6039
    const/4 v2, 0x2

    move-object v0, p0

    move v1, v7

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    .line 6040
    const/4 v8, 0x3

    move-object v6, p0

    move-object v9, p2

    move v10, v5

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    .line 6041
    return v7

    .line 6034
    .end local v4           #unrotDw:I
    .end local v5           #unrotDh:I
    .end local v7           #sw:I
    :cond_0
    move v4, p3

    .line 6035
    .restart local v4       #unrotDw:I
    move/from16 v5, p4

    .restart local v5       #unrotDh:I
    goto :goto_0
.end method

.method private computeFocusedWindowLocked()Lcom/android/server/wm/WindowState;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 9144
    const/4 v4, 0x0

    .line 9147
    .local v4, result:Lcom/android/server/wm/WindowState;
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .line 9148
    .local v0, i:I
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .line 9149
    .local v2, nextAppIndex:I
    if-ltz v2, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    move-object v1, v7

    .line 9152
    .local v1, nextApp:Lcom/android/server/wm/WindowToken;
    :goto_0
    if-ltz v0, :cond_6

    .line 9153
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 9161
    .local v6, win:Lcom/android/server/wm/WindowState;
    iget-object v5, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 9164
    .local v5, thisApp:Lcom/android/server/wm/AppWindowToken;
    if-eqz v5, :cond_1

    iget-boolean v7, v5, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v7, :cond_1

    .line 9165
    add-int/lit8 v0, v0, -0x1

    .line 9166
    goto :goto_0

    .end local v1           #nextApp:Lcom/android/server/wm/WindowToken;
    .end local v5           #thisApp:Lcom/android/server/wm/AppWindowToken;
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    :cond_0
    move-object v1, v8

    .line 9149
    goto :goto_0

    .line 9172
    .restart local v1       #nextApp:Lcom/android/server/wm/WindowToken;
    .restart local v5       #thisApp:Lcom/android/server/wm/AppWindowToken;
    .restart local v6       #win:Lcom/android/server/wm/WindowState;
    :cond_1
    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    if-eq v5, v1, :cond_5

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v9, 0x3

    if-eq v7, v9, :cond_5

    .line 9174
    move v3, v2

    .line 9175
    .local v3, origAppIndex:I
    :cond_2
    if-lez v2, :cond_4

    .line 9176
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v1, v7, :cond_3

    .line 9209
    .end local v3           #origAppIndex:I
    .end local v5           #thisApp:Lcom/android/server/wm/AppWindowToken;
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    :goto_1
    return-object v8

    .line 9183
    .restart local v3       #origAppIndex:I
    .restart local v5       #thisApp:Lcom/android/server/wm/AppWindowToken;
    .restart local v6       #win:Lcom/android/server/wm/WindowState;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 9184
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #nextApp:Lcom/android/server/wm/WindowToken;
    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 9185
    .restart local v1       #nextApp:Lcom/android/server/wm/WindowToken;
    if-ne v1, v5, :cond_2

    .line 9189
    :cond_4
    if-eq v5, v1, :cond_5

    .line 9193
    move v2, v3

    .line 9194
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #nextApp:Lcom/android/server/wm/WindowToken;
    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 9199
    .end local v3           #origAppIndex:I
    .restart local v1       #nextApp:Lcom/android/server/wm/WindowToken;
    :cond_5
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 9202
    move-object v4, v6

    .end local v5           #thisApp:Lcom/android/server/wm/AppWindowToken;
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    :cond_6
    move-object v8, v4

    .line 9209
    goto :goto_1

    .line 9206
    .restart local v5       #thisApp:Lcom/android/server/wm/AppWindowToken;
    .restart local v6       #win:Lcom/android/server/wm/WindowState;
    :cond_7
    add-int/lit8 v0, v0, -0x1

    .line 9207
    goto :goto_0
.end method

.method private computeSmallestWidthAndScreenLayout(ZIIFLandroid/content/res/Configuration;)V
    .locals 15
    .parameter "rotated"
    .parameter "dw"
    .parameter "dh"
    .parameter "density"
    .parameter "outConfig"

    .prologue
    .line 5993
    if-eqz p1, :cond_0

    .line 5994
    move/from16 v2, p3

    .line 5995
    .local v2, unrotDw:I
    move/from16 v6, p2

    .line 6000
    .local v6, unrotDh:I
    :goto_0
    const/4 v3, 0x0

    move-object v1, p0

    move/from16 v4, p4

    move v5, v2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->reduceConfigWidthSize(IIFII)I

    move-result v8

    .line 6001
    .local v8, sw:I
    const/4 v9, 0x1

    move-object v7, p0

    move/from16 v10, p4

    move v11, v6

    move v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wm/WindowManagerService;->reduceConfigWidthSize(IIFII)I

    move-result v8

    .line 6002
    const/4 v9, 0x2

    move-object v7, p0

    move/from16 v10, p4

    move v11, v2

    move v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wm/WindowManagerService;->reduceConfigWidthSize(IIFII)I

    move-result v8

    .line 6003
    const/4 v9, 0x3

    move-object v7, p0

    move/from16 v10, p4

    move v11, v6

    move v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wm/WindowManagerService;->reduceConfigWidthSize(IIFII)I

    move-result v8

    .line 6004
    const/16 v10, 0x24

    .line 6006
    .local v10, sl:I
    const/4 v11, 0x0

    move-object v9, p0

    move/from16 v12, p4

    move v13, v2

    move v14, v6

    invoke-direct/range {v9 .. v14}, Lcom/android/server/wm/WindowManagerService;->reduceConfigLayout(IIFII)I

    move-result v10

    .line 6007
    const/4 v11, 0x1

    move-object v9, p0

    move/from16 v12, p4

    move v13, v6

    move v14, v2

    invoke-direct/range {v9 .. v14}, Lcom/android/server/wm/WindowManagerService;->reduceConfigLayout(IIFII)I

    move-result v10

    .line 6008
    const/4 v11, 0x2

    move-object v9, p0

    move/from16 v12, p4

    move v13, v2

    move v14, v6

    invoke-direct/range {v9 .. v14}, Lcom/android/server/wm/WindowManagerService;->reduceConfigLayout(IIFII)I

    move-result v10

    .line 6009
    const/4 v11, 0x3

    move-object v9, p0

    move/from16 v12, p4

    move v13, v6

    move v14, v2

    invoke-direct/range {v9 .. v14}, Lcom/android/server/wm/WindowManagerService;->reduceConfigLayout(IIFII)I

    move-result v10

    .line 6010
    move-object/from16 v0, p5

    iput v8, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 6011
    move-object/from16 v0, p5

    iput v10, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 6012
    return-void

    .line 5997
    .end local v2           #unrotDw:I
    .end local v6           #unrotDh:I
    .end local v8           #sw:I
    .end local v10           #sl:I
    :cond_0
    move/from16 v2, p2

    .line 5998
    .restart local v2       #unrotDw:I
    move/from16 v6, p3

    .restart local v6       #unrotDh:I
    goto :goto_0
.end method

.method private findIdxBasedOnAppTokens(Lcom/android/server/wm/WindowState;)I
    .locals 7
    .parameter "win"

    .prologue
    const/4 v4, -0x1

    .line 862
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 863
    .local v2, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 864
    .local v1, jmax:I
    if-nez v1, :cond_1

    move v0, v4

    .line 873
    :cond_0
    :goto_0
    return v0

    .line 867
    :cond_1
    add-int/lit8 v0, v1, -0x1

    .local v0, j:I
    :goto_1
    if-ltz v0, :cond_2

    .line 868
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 869
    .local v3, wentry:Lcom/android/server/wm/WindowState;
    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v5, v6, :cond_0

    .line 867
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v3           #wentry:Lcom/android/server/wm/WindowState;
    :cond_2
    move v0, v4

    .line 873
    goto :goto_0
.end method

.method private findWindow(I)Lcom/android/server/wm/WindowState;
    .locals 6
    .parameter "hashCode"

    .prologue
    .line 5848
    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    .line 5849
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 5864
    :goto_0
    return-object v2

    .line 5852
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 5853
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 5854
    .local v3, windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5856
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 5857
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 5858
    .local v2, w:Lcom/android/server/wm/WindowState;
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 5859
    monitor-exit v5

    goto :goto_0

    .line 5862
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    .end local v3           #windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 5856
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #w:Lcom/android/server/wm/WindowState;
    .restart local v3       #windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5862
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5864
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private findWindowOffsetLocked(I)I
    .locals 9
    .parameter "tokenPos"

    .prologue
    .line 4270
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4272
    .local v0, NW:I
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt p1, v7, :cond_1

    .line 4273
    move v2, v0

    .line 4274
    .local v2, i:I
    :cond_0
    if-lez v2, :cond_1

    .line 4275
    add-int/lit8 v2, v2, -0x1

    .line 4276
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 4277
    .local v5, win:Lcom/android/server/wm/WindowState;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 4278
    add-int/lit8 v7, v2, 0x1

    .line 4323
    .end local v2           #i:I
    .end local v5           #win:Lcom/android/server/wm/WindowState;
    :goto_0
    return v7

    .line 4283
    :cond_1
    :goto_1
    if-lez p1, :cond_9

    .line 4286
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    add-int/lit8 v8, p1, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 4289
    .local v6, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v7, v6, Lcom/android/server/wm/WindowToken;->sendingToBottom:Z

    if-eqz v7, :cond_2

    .line 4292
    add-int/lit8 p1, p1, -0x1

    .line 4293
    goto :goto_1

    .line 4295
    :cond_2
    iget-object v7, v6, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4296
    .restart local v2       #i:I
    :cond_3
    if-lez v2, :cond_8

    .line 4297
    add-int/lit8 v2, v2, -0x1

    .line 4298
    iget-object v7, v6, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 4299
    .restart local v5       #win:Lcom/android/server/wm/WindowState;
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4300
    .local v3, j:I
    :cond_4
    if-lez v3, :cond_6

    .line 4301
    add-int/lit8 v3, v3, -0x1

    .line 4302
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 4303
    .local v1, cwin:Lcom/android/server/wm/WindowState;
    iget v7, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v7, :cond_4

    .line 4304
    add-int/lit8 v4, v0, -0x1

    .local v4, pos:I
    :goto_2
    if-ltz v4, :cond_4

    .line 4305
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_5

    .line 4308
    add-int/lit8 v7, v4, 0x1

    goto :goto_0

    .line 4304
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 4313
    .end local v1           #cwin:Lcom/android/server/wm/WindowState;
    .end local v4           #pos:I
    :cond_6
    add-int/lit8 v4, v0, -0x1

    .restart local v4       #pos:I
    :goto_3
    if-ltz v4, :cond_3

    .line 4314
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_7

    .line 4316
    add-int/lit8 v7, v4, 0x1

    goto :goto_0

    .line 4313
    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 4320
    .end local v3           #j:I
    .end local v4           #pos:I
    .end local v5           #win:Lcom/android/server/wm/WindowState;
    :cond_8
    add-int/lit8 p1, p1, -0x1

    .line 4321
    goto :goto_1

    .line 4323
    .end local v2           #i:I
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_9
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private finishUpdateFocusedWindowAfterAssignLayersLocked(Z)V
    .locals 2
    .parameter "updateInputWindows"

    .prologue
    .line 9140
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/InputMonitor;->setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V

    .line 9141
    return-void
.end method

.method static fixScale(F)F
    .locals 1
    .parameter "scale"

    .prologue
    .line 4666
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    const/4 p0, 0x0

    .line 4668
    :cond_0
    :goto_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    .line 4667
    :cond_1
    const/high16 v0, 0x41a0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    const/high16 p0, 0x41a0

    goto :goto_0
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .locals 4
    .parameter "lp"

    .prologue
    .line 2920
    if-eqz p1, :cond_2

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_2

    .line 2924
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2925
    .local v0, packageName:Ljava/lang/String;
    :goto_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2926
    .local v1, resId:I
    const/high16 v2, -0x100

    and-int/2addr v2, v1

    const/high16 v3, 0x100

    if-ne v2, v3, :cond_0

    .line 2927
    const-string v0, "android"

    .line 2931
    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 2934
    .end local v0           #packageName:Ljava/lang/String;
    .end local v1           #resId:I
    :goto_1
    return-object v2

    .line 2924
    :cond_1
    const-string v0, "android"

    goto :goto_0

    .line 2934
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .locals 2
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 2940
    if-eqz p1, :cond_1

    .line 2941
    const/high16 v0, -0x100

    and-int/2addr v0, p2

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 2942
    const-string p1, "android"

    .line 2946
    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    .line 2949
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFocusedWindow()Lcom/android/server/wm/WindowState;
    .locals 2

    .prologue
    .line 6443
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 6444
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 6445
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getFocusedWindowLocked()Lcom/android/server/wm/WindowState;
    .locals 1

    .prologue
    .line 6449
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I
    .locals 3
    .parameter "tokens"
    .parameter "index"
    .parameter "defUnits"
    .parameter "defDps"
    .parameter "dm"

    .prologue
    .line 9327
    array-length v2, p0

    if-ge p1, v2, :cond_0

    .line 9328
    aget-object v0, p0, p1

    .line 9329
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 9331
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 9341
    .end local v0           #str:Ljava/lang/String;
    :goto_0
    return v1

    .line 9333
    .restart local v0       #str:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 9337
    .end local v0           #str:Ljava/lang/String;
    :cond_0
    if-nez p2, :cond_1

    move v1, p3

    .line 9338
    goto :goto_0

    .line 9340
    :cond_1
    int-to-float v2, p3

    invoke-static {p2, v2, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v1, v2

    .line 9341
    .local v1, val:I
    goto :goto_0
.end method

.method private isSystemSecure()Z
    .locals 3

    .prologue
    .line 5563
    const-string v0, "1"

    const-string v1, "ro.secure"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    const-string v1, "ro.debuggable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .locals 5
    .parameter "lp"
    .parameter "animAttr"

    .prologue
    .line 3023
    const/4 v0, 0x0

    .line 3024
    .local v0, anim:I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 3025
    .local v1, context:Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 3026
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 3027
    .local v2, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 3028
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 3029
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 3032
    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    .line 3033
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 3035
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 4
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 3039
    const/4 v0, 0x0

    .line 3040
    .local v0, anim:I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 3041
    .local v1, context:Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 3042
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 3043
    .local v2, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 3044
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 3045
    move v0, p2

    .line 3048
    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    .line 3049
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 3051
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .locals 3
    .parameter "w"
    .parameter "msg"
    .parameter "where"

    .prologue
    .line 2416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  SURFACE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2418
    .local v0, str:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 2419
    const-string v1, "WindowManager"

    invoke-static {v1, v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2423
    :goto_0
    return-void

    .line 2421
    :cond_0
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)Lcom/android/server/wm/WindowManagerService;
    .locals 2
    .parameter "context"
    .parameter "pm"
    .parameter "haveInputMethods"
    .parameter "allowBootMsgs"

    .prologue
    .line 675
    new-instance v0, Lcom/android/server/wm/WindowManagerService$WMThread;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService$WMThread;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)V

    .line 676
    .local v0, thr:Lcom/android/server/wm/WindowManagerService$WMThread;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService$WMThread;->start()V

    .line 678
    monitor-enter v0

    .line 679
    :goto_0
    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService$WMThread;->mService:Lcom/android/server/wm/WindowManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 681
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 682
    :catch_0
    move-exception v1

    goto :goto_0

    .line 685
    :cond_0
    :try_start_2
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService$WMThread;->mService:Lcom/android/server/wm/WindowManagerService;

    monitor-exit v0

    return-object v1

    .line 686
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private moveAppWindowsLocked(Lcom/android/server/wm/AppWindowToken;IZ)V
    .locals 3
    .parameter "wtoken"
    .parameter "tokenPos"
    .parameter "updateFocusAndLayout"

    .prologue
    const/4 v2, 0x0

    .line 4429
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/wm/WindowToken;)Z

    .line 4432
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v0

    .line 4435
    .local v0, pos:I
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    move-result v0

    .line 4437
    if-eqz p3, :cond_1

    .line 4438
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 4439
    const/4 v1, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4441
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 4443
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 4444
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 4445
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 4447
    :cond_1
    return-void
.end method

.method private moveAppWindowsLocked(Ljava/util/List;I)V
    .locals 7
    .parameter
    .parameter "tokenPos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v6, 0x0

    .line 4451
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4453
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4454
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 4455
    .local v3, token:Lcom/android/server/wm/WindowToken;
    if-eqz v3, :cond_0

    .line 4456
    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/wm/WindowToken;)Z

    .line 4453
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4461
    .end local v3           #token:Lcom/android/server/wm/WindowToken;
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v2

    .line 4464
    .local v2, pos:I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 4465
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 4466
    .restart local v3       #token:Lcom/android/server/wm/WindowToken;
    if-eqz v3, :cond_2

    .line 4467
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    move-result v2

    .line 4464
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4471
    .end local v3           #token:Lcom/android/server/wm/WindowToken;
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 4472
    const/4 v4, 0x3

    invoke-direct {p0, v4, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v4

    if-nez v4, :cond_4

    .line 4474
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 4476
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 4477
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 4478
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 4481
    return-void
.end method

.method private notifyFocusChanged()V
    .locals 5

    .prologue
    .line 5834
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 5835
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5836
    monitor-exit v4

    .line 5845
    :cond_0
    return-void

    .line 5838
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 5839
    .local v2, windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    check-cast v2, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 5840
    .restart local v2       #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5841
    array-length v0, v2

    .line 5842
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5843
    aget-object v3, v2, v1

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerService$WindowChangeListener;->focusChanged()V

    .line 5842
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5840
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private notifyWindowsChanged()V
    .locals 5

    .prologue
    .line 5819
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 5820
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5821
    monitor-exit v4

    .line 5830
    :cond_0
    return-void

    .line 5823
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 5824
    .local v2, windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    check-cast v2, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 5825
    .restart local v2       #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5826
    array-length v0, v2

    .line 5827
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5828
    aget-object v3, v2, v1

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerService$WindowChangeListener;->windowsChanged()V

    .line 5827
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5825
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private final performLayoutAndPlaceSurfacesLocked()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 7329
    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    if-eqz v7, :cond_1

    .line 7333
    const-string v7, "WindowManager"

    const-string v8, "performLayoutAndPlaceSurfacesLocked called while in layout"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7409
    :cond_0
    :goto_0
    return-void

    .line 7337
    :cond_1
    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-nez v7, :cond_0

    .line 7344
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-eqz v7, :cond_0

    .line 7349
    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    .line 7350
    const/4 v3, 0x0

    .line 7353
    .local v3, recoveringMemory:Z
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    .line 7354
    const/4 v3, 0x1

    .line 7356
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 7357
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 7358
    .local v6, ws:Lcom/android/server/wm/WindowState;
    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Force removing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7359
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-direct {p0, v7, v6}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 7356
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7361
    .end local v6           #ws:Lcom/android/server/wm/WindowState;
    :cond_2
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    .line 7362
    const-string v7, "WindowManager"

    const-string v8, "Due to memory failure, waiting a bit for next layout"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7363
    new-instance v4, Ljava/lang/Object;

    invoke-direct/range {v4 .. v4}, Ljava/lang/Object;-><init>()V

    .line 7364
    .local v4, tmp:Ljava/lang/Object;
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7366
    const-wide/16 v7, 0xfa

    :try_start_1
    invoke-virtual {v4, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 7369
    :goto_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7376
    .end local v2           #i:I
    .end local v4           #tmp:Ljava/lang/Object;
    :cond_3
    :goto_3
    :try_start_3
    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLockedInner(Z)V

    .line 7378
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7379
    .local v0, N:I
    if-lez v0, :cond_7

    .line 7380
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    array-length v7, v7

    if-ge v7, v0, :cond_4

    .line 7381
    add-int/lit8 v7, v0, 0xa

    new-array v7, v7, [Lcom/android/server/wm/WindowState;

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    .line 7383
    :cond_4
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 7384
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 7385
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v0, :cond_5

    .line 7386
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    aget-object v5, v7, v2

    .line 7387
    .local v5, w:Lcom/android/server/wm/WindowState;
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-direct {p0, v7, v5}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 7385
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 7369
    .end local v0           #N:I
    .end local v5           #w:Lcom/android/server/wm/WindowState;
    .restart local v4       #tmp:Ljava/lang/Object;
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v7
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 7371
    .end local v2           #i:I
    .end local v4           #tmp:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 7372
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v7, "WindowManager"

    const-string v8, "Unhandled exception while force removing for memory"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 7390
    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_5
    const/4 v7, 0x0

    :try_start_6
    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    .line 7391
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 7392
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 7393
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 7401
    .end local v2           #i:I
    :cond_6
    :goto_5
    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 7402
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x13

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 7403
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v9, 0x13

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 7405
    .end local v0           #N:I
    :catch_1
    move-exception v1

    .line 7406
    .restart local v1       #e:Ljava/lang/RuntimeException;
    iput-boolean v10, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    .line 7407
    const-string v7, "WindowManager"

    const-string v8, "Unhandled exception while laying out windows"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 7396
    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local v0       #N:I
    :cond_7
    const/4 v7, 0x0

    :try_start_7
    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    .line 7397
    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    if-eqz v7, :cond_6

    .line 7398
    const-wide/16 v7, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/android/server/wm/WindowManagerService;->requestAnimationLocked(J)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    .line 7367
    .end local v0           #N:I
    .restart local v2       #i:I
    .restart local v4       #tmp:Ljava/lang/Object;
    :catch_2
    move-exception v7

    goto/16 :goto_2
.end method

.method private final performLayoutAndPlaceSurfacesLockedInner(Z)V
    .locals 94
    .parameter "recoveringMemory"

    .prologue
    .line 7562
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-nez v5, :cond_0

    .line 7563
    const-string v5, "WindowManager"

    const-string v8, "skipping performLayoutAndPlaceSurfacesLockedInner with no mDisplay"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8894
    :goto_0
    return-void

    .line 7567
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v42

    .line 7568
    .local v42, currentTime:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    move/from16 v48, v0

    .line 7569
    .local v48, dw:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    move/from16 v44, v0

    .line 7570
    .local v44, dh:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move/from16 v59, v0

    .line 7571
    .local v59, innerDw:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    move/from16 v58, v0

    .line 7575
    .local v58, innerDh:I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    if-eqz v5, :cond_1

    .line 7576
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 7577
    const/4 v5, 0x3

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 7582
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v57, v5, -0x1

    .local v57, i:I
    :goto_1
    if-ltz v57, :cond_2

    .line 7583
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowToken;

    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 7582
    add-int/lit8 v57, v57, -0x1

    goto :goto_1

    .line 7587
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v57, v5, -0x1

    :goto_2
    if-ltz v57, :cond_3

    .line 7588
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 7587
    add-int/lit8 v57, v57, -0x1

    goto :goto_2

    .line 7591
    :cond_3
    const/16 v69, 0x1

    .line 7592
    .local v69, orientationChangeComplete:Z
    const/16 v56, 0x0

    .line 7593
    .local v56, holdScreen:Lcom/android/server/wm/Session;
    const/high16 v72, -0x4080

    .line 7594
    .local v72, screenBrightness:F
    const/high16 v35, -0x4080

    .line 7595
    .local v35, buttonBrightness:F
    const/16 v50, 0x0

    .line 7596
    .local v50, focusDisplayed:Z
    const/16 v29, 0x0

    .line 7597
    .local v29, animating:Z
    const/16 v41, 0x0

    .line 7598
    .local v41, createWatermark:Z
    const/16 v82, 0x0

    .line 7599
    .local v82, updateRotation:Z
    const/16 v73, 0x0

    .line 7601
    .local v73, screenRotationFinished:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    if-nez v5, :cond_4

    .line 7602
    new-instance v5, Landroid/view/SurfaceSession;

    invoke-direct {v5}, Landroid/view/SurfaceSession;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    .line 7603
    const/16 v41, 0x1

    .line 7609
    :cond_4
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 7611
    if-eqz v41, :cond_5

    .line 7612
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->createWatermark()V

    .line 7614
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v5, :cond_6

    .line 7615
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move/from16 v0, v48

    move/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/Watermark;->positionSurface(II)V

    .line 7617
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-eqz v5, :cond_7

    .line 7618
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    move/from16 v0, v48

    move/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/StrictModeFlash;->positionSurface(II)V

    .line 7622
    :cond_7
    const/16 v85, 0x0

    .line 7623
    .local v85, wallpaperForceHidingChanged:Z
    const/16 v71, 0x0

    .line 7624
    .local v71, repeats:I
    const/16 v38, 0x0

    .line 7627
    .local v38, changes:I
    :cond_8
    add-int/lit8 v71, v71, 0x1

    .line 7628
    const/4 v5, 0x6

    move/from16 v0, v71

    if-le v0, v5, :cond_24

    .line 7629
    :try_start_0
    const-string v5, "WindowManager"

    const-string v8, "Animation repeat aborted after too many iterations"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7630
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 8293
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_7f

    const/16 v74, 0x1

    .line 8295
    .local v74, someoneLosingFocus:Z
    :goto_4
    const/16 v65, 0x0

    .line 8296
    .local v65, obscured:Z
    const/16 v34, 0x0

    .line 8297
    .local v34, blurring:Z
    const/16 v46, 0x0

    .line 8298
    .local v46, dimming:Z
    const/16 v40, 0x0

    .line 8299
    .local v40, covered:Z
    const/16 v76, 0x0

    .line 8301
    .local v76, syswin:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 8303
    .local v19, N:I
    add-int/lit8 v57, v19, -0x1

    :goto_5
    if-ltz v57, :cond_95

    .line 8304
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Lcom/android/server/wm/WindowState;

    .line 8306
    .local v83, w:Lcom/android/server/wm/WindowState;
    const/16 v47, 0x0

    .line 8307
    .local v47, displayed:Z
    move-object/from16 v0, v83

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    .line 8308
    .local v32, attrs:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v31, v0

    .line 8310
    .local v31, attrFlags:I
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_8d

    .line 8325
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->computeShownFrameLocked()V

    .line 8330
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_f

    .line 8332
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    and-int/lit16 v5, v5, 0x4000

    if-eqz v5, :cond_80

    .line 8335
    move-object/from16 v0, v83

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move/from16 v88, v0

    .line 8336
    .local v88, width:I
    move-object/from16 v0, v83

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move/from16 v55, v0

    .line 8342
    .local v55, height:I
    :goto_6
    const/4 v5, 0x1

    move/from16 v0, v88

    if-ge v0, v5, :cond_9

    .line 8343
    const/16 v88, 0x1

    .line 8345
    :cond_9
    const/4 v5, 0x1

    move/from16 v0, v55

    if-ge v0, v5, :cond_a

    .line 8346
    const/16 v55, 0x1

    .line 8348
    :cond_a
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceW:F

    move/from16 v0, v88

    int-to-float v8, v0

    cmpl-float v5, v5, v8

    if-nez v5, :cond_b

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceH:F

    move/from16 v0, v55

    int-to-float v8, v0

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_81

    :cond_b
    const/16 v75, 0x1

    .line 8349
    .local v75, surfaceResized:Z
    :goto_7
    if-eqz v75, :cond_c

    .line 8350
    move/from16 v0, v88

    int-to-float v5, v0

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceW:F

    .line 8351
    move/from16 v0, v55

    int-to-float v5, v0

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceH:F

    .line 8354
    :cond_c
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceX:F

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_d

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceY:F

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_e

    .line 8360
    :cond_d
    :try_start_1
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceX:F

    .line 8361
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceY:F

    .line 8362
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v83

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v8, v10}, Landroid/view/Surface;->setPosition(FF)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 8373
    :cond_e
    :goto_8
    if-eqz v75, :cond_f

    .line 8377
    const/4 v5, 0x1

    :try_start_2
    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceResized:Z

    .line 8378
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move/from16 v0, v88

    move/from16 v1, v55

    invoke-virtual {v5, v0, v1}, Landroid/view/Surface;->setSize(II)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 8392
    .end local v55           #height:I
    .end local v75           #surfaceResized:Z
    .end local v88           #width:I
    :cond_f
    :goto_9
    :try_start_3
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v5, :cond_13

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    if-ne v5, v8, :cond_13

    .line 8393
    move-object/from16 v0, v83

    iget-boolean v8, v0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v83

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_82

    const/4 v5, 0x1

    :goto_a
    or-int/2addr v5, v8

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    .line 8395
    move-object/from16 v0, v83

    iget-boolean v8, v0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v83

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_83

    const/4 v5, 0x1

    :goto_b
    or-int/2addr v5, v8

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    .line 8397
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    if-eq v5, v8, :cond_84

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5, v8}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v5

    if-eqz v5, :cond_84

    :cond_10
    const/16 v39, 0x1

    .line 8408
    .local v39, configChanged:Z
    :goto_c
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8409
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    if-nez v5, :cond_11

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    if-nez v5, :cond_11

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceResized:Z

    if-nez v5, :cond_11

    if-eqz v39, :cond_85

    .line 8421
    :cond_11
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8422
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8423
    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 8429
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v5, :cond_12

    .line 8433
    const/4 v5, 0x1

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    .line 8434
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    .line 8435
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mReadyToShow:Z

    .line 8436
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_12

    .line 8437
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 8440
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object/from16 v0, v83

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 8444
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object/from16 v0, v83

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8456
    .end local v39           #configChanged:Z
    :cond_13
    :goto_d
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v5, :cond_14

    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v5

    if-nez v5, :cond_86

    .line 8457
    :cond_14
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    if-nez v5, :cond_15

    .line 8459
    const/4 v5, 0x1

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    .line 8462
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_15

    .line 8463
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 8465
    :try_start_4
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    .line 8477
    :cond_15
    :goto_e
    :try_start_5
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v5, :cond_16

    .line 8478
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 8544
    :cond_16
    :goto_f
    if-eqz v47, :cond_1a

    .line 8545
    if-nez v40, :cond_17

    .line 8546
    move-object/from16 v0, v32

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v8, -0x1

    if-ne v5, v8, :cond_17

    move-object/from16 v0, v32

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v5, v8, :cond_17

    .line 8548
    const/16 v40, 0x1

    .line 8551
    :cond_17
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v5, :cond_19

    .line 8552
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    if-nez v5, :cond_18

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    if-eqz v5, :cond_8c

    .line 8553
    :cond_18
    const/16 v69, 0x0

    .line 8562
    :cond_19
    :goto_10
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 8570
    :cond_1a
    :goto_11
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    if-eqz v5, :cond_1b

    .line 8572
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 8575
    :cond_1b
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v36

    .line 8577
    .local v36, canBeSeen:Z
    if-eqz v74, :cond_1c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v83

    if-ne v0, v5, :cond_1c

    if-eqz v36, :cond_1c

    .line 8578
    const/16 v50, 0x1

    .line 8581
    :cond_1c
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mObscured:Z

    move/from16 v0, v65

    if-eq v5, v0, :cond_8e

    const/16 v66, 0x1

    .line 8584
    .local v66, obscuredChanged:Z
    :goto_12
    move/from16 v0, v65

    move-object/from16 v1, v83

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-nez v65, :cond_22

    .line 8585
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_21

    .line 8586
    move/from16 v0, v31

    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_1d

    .line 8587
    move-object/from16 v0, v83

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v56, v0

    .line 8589
    :cond_1d
    if-nez v76, :cond_1e

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-ltz v5, :cond_1e

    const/4 v5, 0x0

    cmpg-float v5, v72, v5

    if-gez v5, :cond_1e

    .line 8591
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    move/from16 v72, v0

    .line 8593
    :cond_1e
    if-nez v76, :cond_1f

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-ltz v5, :cond_1f

    const/4 v5, 0x0

    cmpg-float v5, v35, v5

    if-gez v5, :cond_1f

    .line 8595
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    move/from16 v35, v0

    .line 8597
    :cond_1f
    if-eqz v36, :cond_21

    move-object/from16 v0, v32

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7d8

    if-eq v5, v8, :cond_20

    move-object/from16 v0, v32

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7d4

    if-eq v5, v8, :cond_20

    move-object/from16 v0, v32

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7da

    if-ne v5, v8, :cond_21

    .line 8601
    :cond_20
    const/16 v76, 0x1

    .line 8605
    :cond_21
    if-eqz v36, :cond_8f

    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isOpaqueDrawn()Z

    move-result v5

    if-eqz v5, :cond_8f

    const/16 v68, 0x1

    .line 8606
    .local v68, opaqueDrawn:Z
    :goto_13
    if-eqz v68, :cond_90

    move-object/from16 v0, v83

    move/from16 v1, v59

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->isFullscreen(II)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 8610
    const/16 v65, 0x1

    .line 8673
    .end local v68           #opaqueDrawn:Z
    :cond_22
    :goto_14
    if-eqz v66, :cond_23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v83

    if-ne v5, v0, :cond_23

    .line 8677
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperVisibilityLocked()V

    .line 8303
    :cond_23
    add-int/lit8 v57, v57, -0x1

    goto/16 :goto_5

    .line 7634
    .end local v19           #N:I
    .end local v31           #attrFlags:I
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v34           #blurring:Z
    .end local v36           #canBeSeen:Z
    .end local v40           #covered:Z
    .end local v46           #dimming:Z
    .end local v47           #displayed:Z
    .end local v65           #obscured:Z
    .end local v66           #obscuredChanged:Z
    .end local v74           #someoneLosingFocus:Z
    .end local v76           #syswin:Z
    .end local v83           #w:Lcom/android/server/wm/WindowState;
    :cond_24
    and-int/lit8 v5, v38, 0x7

    if-eqz v5, :cond_27

    .line 7637
    and-int/lit8 v5, v38, 0x4

    if-eqz v5, :cond_25

    .line 7638
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_25

    .line 7639
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 7640
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 7643
    :cond_25
    and-int/lit8 v5, v38, 0x2

    if-eqz v5, :cond_26

    .line 7645
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 7646
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 7647
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x12

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 7650
    :cond_26
    and-int/lit8 v5, v38, 0x1

    if-eqz v5, :cond_27

    .line 7651
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 7656
    :cond_27
    const/4 v5, 0x4

    move/from16 v0, v71

    if-ge v0, v5, :cond_2a

    .line 7657
    if-nez v71, :cond_29

    const/4 v5, 0x1

    :goto_15
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8}, Lcom/android/server/wm/WindowManagerService;->performLayoutLockedInner(ZZ)I

    move-result v38

    .line 7658
    if-eqz v38, :cond_2b

    .line 8289
    :cond_28
    :goto_16
    if-nez v38, :cond_8

    goto/16 :goto_3

    .line 7657
    :cond_29
    const/4 v5, 0x0

    goto :goto_15

    .line 7662
    :cond_2a
    const-string v5, "WindowManager"

    const-string v8, "Layout repeat skipped after too many iterations"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7663
    const/16 v38, 0x0

    .line 7666
    :cond_2b
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    add-int/lit8 v81, v5, 0x1

    move/from16 v0, v81

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    .line 7670
    .local v81, transactionSequence:I
    const/16 v80, 0x0

    .line 7671
    .local v80, tokensAnimating:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 7672
    .local v20, NAT:I
    const/16 v57, 0x0

    :goto_17
    move/from16 v0, v57

    move/from16 v1, v20

    if-ge v0, v1, :cond_2d

    .line 7673
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    move-wide/from16 v0, v42

    move/from16 v2, v59

    move/from16 v3, v58

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/server/wm/AppWindowToken;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 7675
    const/16 v80, 0x1

    .line 7672
    :cond_2c
    add-int/lit8 v57, v57, 0x1

    goto :goto_17

    .line 7678
    :cond_2d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 7679
    .local v22, NEAT:I
    const/16 v57, 0x0

    :goto_18
    move/from16 v0, v57

    move/from16 v1, v22

    if-ge v0, v1, :cond_2f

    .line 7680
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    move-wide/from16 v0, v42

    move/from16 v2, v59

    move/from16 v3, v58

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/server/wm/AppWindowToken;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 7682
    const/16 v80, 0x1

    .line 7679
    :cond_2e
    add-int/lit8 v57, v57, 0x1

    goto :goto_18

    .line 7692
    :cond_2f
    move/from16 v29, v80

    .line 7694
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v5, :cond_30

    .line 7695
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v5}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 7696
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-wide/from16 v0, v42

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimation(J)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 7697
    const/16 v29, 0x1

    .line 7705
    :cond_30
    :goto_19
    const/16 v79, 0x0

    .line 7706
    .local v79, tokenMayBeDrawn:Z
    const/16 v86, 0x0

    .line 7707
    .local v86, wallpaperMayChange:Z
    const/16 v51, 0x0

    .line 7708
    .local v51, forceHiding:Z
    const/16 v92, 0x0

    .line 7709
    .local v92, windowDetachedWallpaper:Lcom/android/server/wm/WindowState;
    const/16 v90, 0x0

    .line 7710
    .local v90, windowAnimationBackground:Lcom/android/server/wm/WindowState;
    const/16 v91, 0x0

    .line 7712
    .local v91, windowAnimationBackgroundColor:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, v48

    move/from16 v1, v44

    invoke-interface {v5, v0, v1}, Landroid/view/WindowManagerPolicy;->beginAnimationLw(II)V

    .line 7714
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 7716
    .restart local v19       #N:I
    add-int/lit8 v57, v19, -0x1

    :goto_1a
    if-ltz v57, :cond_57

    .line 7717
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Lcom/android/server/wm/WindowState;

    .line 7719
    .restart local v83       #w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v83

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    .line 7721
    .restart local v32       #attrs:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_3c

    .line 7723
    move-object/from16 v0, v83

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->commitFinishDrawingLocked(J)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 7724
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x10

    and-int/2addr v5, v8

    if-eqz v5, :cond_31

    .line 7728
    const/16 v86, 0x1

    .line 7732
    :cond_31
    move-object/from16 v0, v83

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    move/from16 v87, v0

    .line 7734
    .local v87, wasAnimating:Z
    move/from16 v28, v59

    .line 7735
    .local v28, animDw:I
    move/from16 v27, v58

    .line 7741
    .local v27, animDh:I
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->shouldAnimateMove()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 7745
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v8, 0x10a0052

    invoke-static {v5, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v25

    .line 7747
    .local v25, a:Landroid/view/animation/Animation;
    move-object/from16 v0, v83

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 7748
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int v28, v5, v8

    .line 7749
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int v27, v5, v8

    .line 7753
    .end local v25           #a:Landroid/view/animation/Animation;
    :cond_32
    move-object/from16 v0, v83

    move-wide/from16 v1, v42

    move/from16 v3, v28

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowState;->stepAnimationLocked(JII)Z

    move-result v63

    .line 7759
    .local v63, nowAnimating:Z
    if-eqz v63, :cond_36

    .line 7760
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_35

    .line 7761
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x10

    and-int/2addr v5, v8

    if-eqz v5, :cond_33

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 7763
    move-object/from16 v92, v83

    .line 7765
    :cond_33
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v5

    if-eqz v5, :cond_35

    .line 7766
    if-eqz v90, :cond_34

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move-object/from16 v0, v90

    iget v8, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    if-ge v5, v8, :cond_35

    .line 7768
    :cond_34
    move-object/from16 v90, v83

    .line 7769
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v91

    .line 7774
    :cond_35
    const/16 v29, 0x1

    .line 7780
    :cond_36
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_39

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_39

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v5, v5, Lcom/android/server/wm/AppWindowToken;->animating:Z

    if-eqz v5, :cond_39

    .line 7782
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x10

    and-int/2addr v5, v8

    if-eqz v5, :cond_37

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 7784
    move-object/from16 v92, v83

    .line 7786
    :cond_37
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v5

    if-eqz v5, :cond_39

    .line 7787
    if-eqz v90, :cond_38

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move-object/from16 v0, v90

    iget v8, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    if-ge v5, v8, :cond_39

    .line 7789
    :cond_38
    move-object/from16 v90, v83

    .line 7790
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v91

    .line 7796
    :cond_39
    if-eqz v87, :cond_3a

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    if-nez v5, :cond_3a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v83

    if-ne v5, v0, :cond_3a

    .line 7797
    const/16 v86, 0x1

    .line 7800
    :cond_3a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v83

    move-object/from16 v1, v32

    invoke-interface {v5, v0, v1}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 7801
    if-nez v87, :cond_43

    if-eqz v63, :cond_43

    .line 7805
    const/16 v85, 0x1

    .line 7806
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 7847
    :cond_3b
    :goto_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v83

    move-object/from16 v1, v32

    invoke-interface {v5, v0, v1}, Landroid/view/WindowManagerPolicy;->animatingWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 7850
    .end local v27           #animDh:I
    .end local v28           #animDw:I
    .end local v63           #nowAnimating:Z
    .end local v87           #wasAnimating:Z
    :cond_3c
    move-object/from16 v0, v83

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v30, v0

    .line 7851
    .local v30, atoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v30, :cond_56

    move-object/from16 v0, v30

    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v5, :cond_3d

    move-object/from16 v0, v30

    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    if-eqz v5, :cond_56

    .line 7852
    :cond_3d
    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:I

    move/from16 v0, v81

    if-eq v5, v0, :cond_3e

    .line 7853
    move/from16 v0, v81

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:I

    .line 7854
    const/4 v5, 0x0

    move-object/from16 v0, v30

    iput v5, v0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    move-object/from16 v0, v30

    iput v5, v0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    .line 7855
    const/4 v5, 0x0

    move-object/from16 v0, v30

    iput-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 7857
    :cond_3e
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v5

    if-nez v5, :cond_3f

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_41

    :cond_3f
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v5, :cond_41

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v5, :cond_41

    .line 7874
    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v83

    if-eq v0, v5, :cond_55

    .line 7875
    move-object/from16 v0, v30

    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    if-eqz v5, :cond_40

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v5, :cond_41

    .line 7876
    :cond_40
    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v30

    iput v5, v0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    .line 7877
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_41

    .line 7878
    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v30

    iput v5, v0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    .line 7883
    const/16 v79, 0x1

    .line 7716
    :cond_41
    :goto_1c
    add-int/lit8 v57, v57, -0x1

    goto/16 :goto_1a

    .line 7699
    .end local v19           #N:I
    .end local v30           #atoken:Lcom/android/server/wm/AppWindowToken;
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v51           #forceHiding:Z
    .end local v79           #tokenMayBeDrawn:Z
    .end local v83           #w:Lcom/android/server/wm/WindowState;
    .end local v86           #wallpaperMayChange:Z
    .end local v90           #windowAnimationBackground:Lcom/android/server/wm/WindowState;
    .end local v91           #windowAnimationBackgroundColor:I
    .end local v92           #windowDetachedWallpaper:Lcom/android/server/wm/WindowState;
    :cond_42
    const/16 v73, 0x1

    .line 7700
    const/16 v82, 0x1

    goto/16 :goto_19

    .line 7807
    .restart local v19       #N:I
    .restart local v27       #animDh:I
    .restart local v28       #animDw:I
    .restart local v32       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v51       #forceHiding:Z
    .restart local v63       #nowAnimating:Z
    .restart local v79       #tokenMayBeDrawn:Z
    .restart local v83       #w:Lcom/android/server/wm/WindowState;
    .restart local v86       #wallpaperMayChange:Z
    .restart local v87       #wasAnimating:Z
    .restart local v90       #windowAnimationBackground:Lcom/android/server/wm/WindowState;
    .restart local v91       #windowAnimationBackgroundColor:I
    .restart local v92       #windowDetachedWallpaper:Lcom/android/server/wm/WindowState;
    :cond_43
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v5

    if-eqz v5, :cond_3b

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v5, :cond_3b

    .line 7808
    const/16 v51, 0x1

    goto/16 :goto_1b

    .line 7810
    :cond_44
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v83

    move-object/from16 v1, v32

    invoke-interface {v5, v0, v1}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 7812
    if-eqz v51, :cond_46

    .line 7813
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v83

    invoke-virtual {v0, v5, v8}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v37

    .line 7841
    .local v37, changed:Z
    :cond_45
    :goto_1d
    if-eqz v37, :cond_3b

    move-object/from16 v0, v32

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x10

    and-int/2addr v5, v8

    if-eqz v5, :cond_3b

    .line 7843
    const/16 v86, 0x1

    goto/16 :goto_1b

    .line 7817
    .end local v37           #changed:Z
    :cond_46
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v83

    invoke-virtual {v0, v5, v8}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v37

    .line 7820
    .restart local v37       #changed:Z
    if-eqz v37, :cond_45

    .line 7821
    if-eqz v85, :cond_47

    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 7827
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation()Landroid/view/animation/Animation;

    move-result-object v25

    .line 7828
    .restart local v25       #a:Landroid/view/animation/Animation;
    if-eqz v25, :cond_47

    .line 7829
    move-object/from16 v0, v83

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 7832
    .end local v25           #a:Landroid/view/animation/Animation;
    :cond_47
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_48

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget v5, v5, Lcom/android/server/wm/WindowState;->mLayer:I

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v5, v8, :cond_45

    .line 7837
    :cond_48
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1d

    .line 8705
    .end local v19           #N:I
    .end local v20           #NAT:I
    .end local v22           #NEAT:I
    .end local v27           #animDh:I
    .end local v28           #animDw:I
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v37           #changed:Z
    .end local v51           #forceHiding:Z
    .end local v63           #nowAnimating:Z
    .end local v79           #tokenMayBeDrawn:Z
    .end local v80           #tokensAnimating:Z
    .end local v81           #transactionSequence:I
    .end local v83           #w:Lcom/android/server/wm/WindowState;
    .end local v86           #wallpaperMayChange:Z
    .end local v87           #wasAnimating:Z
    .end local v90           #windowAnimationBackground:Lcom/android/server/wm/WindowState;
    .end local v91           #windowAnimationBackgroundColor:I
    .end local v92           #windowDetachedWallpaper:Lcom/android/server/wm/WindowState;
    :catch_0
    move-exception v49

    .line 8706
    .local v49, e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v8, "Unhandled exception in Window Manager"

    move-object/from16 v0, v49

    invoke-static {v5, v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8709
    .end local v49           #e:Ljava/lang/RuntimeException;
    :cond_49
    :goto_1e
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 8714
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v5, :cond_4a

    .line 8715
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    invoke-virtual {v5}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V

    .line 8721
    :cond_4a
    if-eqz v69, :cond_4c

    .line 8722
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    if-eqz v5, :cond_4b

    .line 8723
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 8724
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0xb

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 8726
    :cond_4b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 8729
    :cond_4c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v57

    .line 8730
    if-lez v57, :cond_4f

    .line 8732
    :cond_4d
    add-int/lit8 v57, v57, -0x1

    .line 8733
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v89

    check-cast v89, Lcom/android/server/wm/WindowState;

    .line 8737
    .local v89, win:Lcom/android/server/wm/WindowState;
    const/16 v45, 0x0

    .line 8738
    .local v45, diff:I
    :try_start_6
    move-object/from16 v0, v89

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    if-eq v5, v8, :cond_9b

    move-object/from16 v0, v89

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v5, :cond_4e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v89

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5, v8}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v45

    if-eqz v45, :cond_9b

    :cond_4e
    const/16 v39, 0x1

    .line 8749
    .restart local v39       #configChanged:Z
    :goto_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v89

    iput-object v5, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    .line 8752
    move-object/from16 v0, v89

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v0, v89

    iget v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceW:F

    float-to-int v11, v5

    move-object/from16 v0, v89

    iget v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceH:F

    float-to-int v12, v5

    move-object/from16 v0, v89

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v89

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v89

    iget-boolean v15, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    if-eqz v39, :cond_9c

    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    :goto_20
    invoke-interface/range {v10 .. v16}, Landroid/view/IWindow;->resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V

    .line 8755
    const/4 v5, 0x0

    move-object/from16 v0, v89

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    .line 8756
    const/4 v5, 0x0

    move-object/from16 v0, v89

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    .line 8757
    const/4 v5, 0x0

    move-object/from16 v0, v89

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceResized:Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_8

    .line 8761
    .end local v39           #configChanged:Z
    :goto_21
    if-gtz v57, :cond_4d

    .line 8762
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8766
    .end local v45           #diff:I
    .end local v89           #win:Lcom/android/server/wm/WindowState;
    :cond_4f
    const/16 v84, 0x0

    .line 8767
    .local v84, wallpaperDestroyed:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v57

    .line 8768
    if-lez v57, :cond_53

    .line 8770
    :cond_50
    add-int/lit8 v57, v57, -0x1

    .line 8771
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v89

    check-cast v89, Lcom/android/server/wm/WindowState;

    .line 8772
    .restart local v89       #win:Lcom/android/server/wm/WindowState;
    const/4 v5, 0x0

    move-object/from16 v0, v89

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 8773
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v89

    if-ne v5, v0, :cond_51

    .line 8774
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 8776
    :cond_51
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v89

    if-ne v0, v5, :cond_52

    .line 8777
    const/16 v84, 0x1

    .line 8779
    :cond_52
    invoke-virtual/range {v89 .. v89}, Lcom/android/server/wm/WindowState;->destroySurfaceLocked()V

    .line 8780
    if-gtz v57, :cond_50

    .line 8781
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8785
    .end local v89           #win:Lcom/android/server/wm/WindowState;
    :cond_53
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v57, v5, -0x1

    :goto_22
    if-ltz v57, :cond_9d

    .line 8786
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Lcom/android/server/wm/WindowToken;

    .line 8787
    .local v78, token:Lcom/android/server/wm/WindowToken;
    move-object/from16 v0, v78

    iget-boolean v5, v0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    if-nez v5, :cond_54

    .line 8788
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8789
    move-object/from16 v0, v78

    iget v5, v0, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v8, 0x7dd

    if-ne v5, v8, :cond_54

    .line 8790
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v0, v78

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8785
    :cond_54
    add-int/lit8 v57, v57, -0x1

    goto :goto_22

    .line 7886
    .end local v78           #token:Lcom/android/server/wm/WindowToken;
    .end local v84           #wallpaperDestroyed:Z
    .restart local v19       #N:I
    .restart local v20       #NAT:I
    .restart local v22       #NEAT:I
    .restart local v30       #atoken:Lcom/android/server/wm/AppWindowToken;
    .restart local v32       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v51       #forceHiding:Z
    .restart local v79       #tokenMayBeDrawn:Z
    .restart local v80       #tokensAnimating:Z
    .restart local v81       #transactionSequence:I
    .restart local v83       #w:Lcom/android/server/wm/WindowState;
    .restart local v86       #wallpaperMayChange:Z
    .restart local v90       #windowAnimationBackground:Lcom/android/server/wm/WindowState;
    .restart local v91       #windowAnimationBackgroundColor:I
    .restart local v92       #windowDetachedWallpaper:Lcom/android/server/wm/WindowState;
    :cond_55
    :try_start_7
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_41

    .line 7887
    const/4 v5, 0x1

    move-object/from16 v0, v30

    iput-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    goto/16 :goto_1c

    .line 7890
    :cond_56
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mReadyToShow:Z

    if-eqz v5, :cond_41

    .line 7891
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    goto/16 :goto_1c

    .line 7895
    .end local v30           #atoken:Lcom/android/server/wm/AppWindowToken;
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v83           #w:Lcom/android/server/wm/WindowState;
    :cond_57
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->finishAnimationLw()I

    move-result v5

    or-int v38, v38, v5

    .line 7897
    if-eqz v79, :cond_5a

    .line 7900
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 7901
    .local v24, NT:I
    const/16 v57, 0x0

    :goto_23
    move/from16 v0, v57

    move/from16 v1, v24

    if-ge v0, v1, :cond_5a

    .line 7902
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 7903
    .local v6, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    if-eqz v5, :cond_59

    .line 7904
    iget v0, v6, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    move/from16 v64, v0

    .line 7905
    .local v64, numInteresting:I
    if-lez v64, :cond_58

    iget v5, v6, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    move/from16 v0, v64

    if-lt v5, v0, :cond_58

    .line 7910
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    .line 7911
    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5, v8}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 7916
    const/16 v69, 0x1

    .line 7901
    .end local v64           #numInteresting:I
    :cond_58
    :goto_24
    add-int/lit8 v57, v57, 0x1

    goto :goto_23

    .line 7918
    :cond_59
    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v5, :cond_58

    .line 7919
    iget v0, v6, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    move/from16 v64, v0

    .line 7920
    .restart local v64       #numInteresting:I
    if-lez v64, :cond_58

    iget v5, v6, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    move/from16 v0, v64

    if-lt v5, v0, :cond_58

    .line 7925
    const/4 v5, 0x1

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 7926
    or-int/lit8 v38, v38, 0x8

    .line 7929
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_58

    .line 7930
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    goto :goto_24

    .line 7940
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    .end local v24           #NT:I
    .end local v64           #numInteresting:I
    :cond_5a
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    if-eqz v5, :cond_6e

    .line 7941
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 7942
    .local v23, NN:I
    const/16 v54, 0x1

    .line 7947
    .local v54, goodToGo:Z
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v5, :cond_5c

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    if-nez v5, :cond_5c

    .line 7951
    const/16 v57, 0x0

    :goto_25
    move/from16 v0, v57

    move/from16 v1, v23

    if-ge v0, v1, :cond_5c

    if-eqz v54, :cond_5c

    .line 7952
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 7957
    .restart local v6       #wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v5, :cond_5b

    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-nez v5, :cond_5b

    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v5, :cond_5b

    .line 7959
    const/16 v54, 0x0

    .line 7951
    :cond_5b
    add-int/lit8 v57, v57, 0x1

    goto :goto_25

    .line 7963
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_5c
    if-eqz v54, :cond_6e

    .line 7965
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    .line 7966
    .local v9, transit:I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    if-eqz v5, :cond_5d

    .line 7967
    const/4 v9, -0x1

    .line 7969
    :cond_5d
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    .line 7970
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    .line 7971
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    .line 7972
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    .line 7973
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    .line 7974
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 7976
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0xd

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 7983
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_60

    .line 7984
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 7985
    const/16 v57, 0x0

    :goto_26
    move/from16 v0, v57

    move/from16 v1, v23

    if-ge v0, v1, :cond_5f

    .line 7986
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 7987
    .restart local v6       #wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v5, v6, Lcom/android/server/wm/WindowToken;->sendingToTop:Z

    if-eqz v5, :cond_5e

    .line 7988
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/WindowToken;->sendingToTop:Z

    .line 7989
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v6, v1, v5}, Lcom/android/server/wm/WindowManagerService;->moveAppWindowsLocked(Lcom/android/server/wm/AppWindowToken;IZ)V

    .line 7985
    :cond_5e
    add-int/lit8 v57, v57, 0x1

    goto :goto_26

    .line 7992
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_5f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 7995
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v67, v0

    .line 7997
    .local v67, oldWallpaper:Lcom/android/server/wm/WindowState;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    .line 7998
    const/16 v86, 0x0

    .line 8002
    const/4 v7, 0x0

    .line 8003
    .local v7, animLp:Landroid/view/WindowManager$LayoutParams;
    const/16 v33, -0x1

    .line 8004
    .local v33, bestAnimLayer:I
    const/16 v53, 0x0

    .line 8010
    .local v53, fullscreenAnim:Z
    const/16 v52, 0x0

    .line 8021
    .local v52, foundWallpapers:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 8022
    .local v21, NC:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int v23, v21, v5

    .line 8023
    const/16 v57, 0x0

    :goto_27
    move/from16 v0, v57

    move/from16 v1, v23

    if-ge v0, v1, :cond_66

    .line 8026
    move/from16 v0, v57

    move/from16 v1, v21

    if-ge v0, v1, :cond_64

    .line 8027
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 8028
    .restart local v6       #wtoken:Lcom/android/server/wm/AppWindowToken;
    const/16 v61, 0x1

    .line 8033
    .local v61, mode:I
    :goto_28
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_62

    .line 8034
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v5, v6, :cond_61

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v5, v6, :cond_62

    .line 8036
    :cond_61
    or-int v52, v52, v61

    .line 8039
    :cond_62
    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-eqz v5, :cond_65

    .line 8040
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v93

    .line 8041
    .local v93, ws:Lcom/android/server/wm/WindowState;
    if-eqz v93, :cond_63

    .line 8042
    move-object/from16 v0, v93

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 8043
    move-object/from16 v0, v93

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v33, v0

    .line 8044
    const/16 v53, 0x1

    .line 8023
    .end local v93           #ws:Lcom/android/server/wm/WindowState;
    :cond_63
    :goto_29
    add-int/lit8 v57, v57, 0x1

    goto :goto_27

    .line 8030
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    .end local v61           #mode:I
    :cond_64
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    sub-int v8, v57, v21

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 8031
    .restart local v6       #wtoken:Lcom/android/server/wm/AppWindowToken;
    const/16 v61, 0x2

    .restart local v61       #mode:I
    goto :goto_28

    .line 8046
    :cond_65
    if-nez v53, :cond_63

    .line 8047
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v93

    .line 8048
    .restart local v93       #ws:Lcom/android/server/wm/WindowState;
    if-eqz v93, :cond_63

    .line 8049
    move-object/from16 v0, v93

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v0, v33

    if-le v5, v0, :cond_63

    .line 8050
    move-object/from16 v0, v93

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 8051
    move-object/from16 v0, v93

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v33, v0

    goto :goto_29

    .line 8057
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    .end local v61           #mode:I
    .end local v93           #ws:Lcom/android/server/wm/WindowState;
    :cond_66
    const/4 v5, 0x3

    move/from16 v0, v52

    if-ne v0, v5, :cond_69

    .line 8060
    sparse-switch v9, :sswitch_data_0

    .line 8092
    :cond_67
    :goto_2a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->allowAppAnimationsLw()Z

    move-result v5

    if-nez v5, :cond_68

    .line 8093
    const/4 v7, 0x0

    .line 8096
    :cond_68
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 8097
    const/16 v57, 0x0

    :goto_2b
    move/from16 v0, v57

    move/from16 v1, v23

    if-ge v0, v1, :cond_6b

    .line 8098
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 8101
    .restart local v6       #wtoken:Lcom/android/server/wm/AppWindowToken;
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    .line 8102
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 8103
    const/4 v5, 0x0

    iput-object v5, v6, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 8104
    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    .line 8106
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 8107
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    .line 8108
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    .line 8097
    add-int/lit8 v57, v57, 0x1

    goto :goto_2b

    .line 8064
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :sswitch_0
    const/16 v9, 0x100e

    .line 8065
    goto :goto_2a

    .line 8069
    :sswitch_1
    const/16 v9, 0x200f

    goto :goto_2a

    .line 8074
    :cond_69
    if-eqz v67, :cond_6a

    .line 8077
    const/16 v9, 0x200c

    goto :goto_2a

    .line 8080
    :cond_6a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_67

    .line 8083
    const/16 v9, 0x100d

    goto :goto_2a

    .line 8110
    :cond_6b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 8111
    const/16 v57, 0x0

    :goto_2c
    move/from16 v0, v57

    move/from16 v1, v23

    if-ge v0, v1, :cond_6c

    .line 8112
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 8115
    .restart local v6       #wtoken:Lcom/android/server/wm/AppWindowToken;
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 8116
    const/4 v5, 0x0

    iput-object v5, v6, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 8117
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    .line 8119
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 8120
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/WindowToken;->waitingToHide:Z

    .line 8124
    const/4 v5, 0x1

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 8111
    add-int/lit8 v57, v57, 0x1

    goto :goto_2c

    .line 8127
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_6c
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 8129
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8130
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8134
    or-int/lit8 v38, v38, 0x3

    .line 8136
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 8137
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v5

    if-nez v5, :cond_6d

    .line 8138
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 8140
    :cond_6d
    const/4 v5, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 8142
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 8146
    .end local v7           #animLp:Landroid/view/WindowManager$LayoutParams;
    .end local v9           #transit:I
    .end local v21           #NC:I
    .end local v23           #NN:I
    .end local v33           #bestAnimLayer:I
    .end local v52           #foundWallpapers:I
    .end local v53           #fullscreenAnim:Z
    .end local v54           #goodToGo:Z
    .end local v67           #oldWallpaper:Lcom/android/server/wm/WindowState;
    :cond_6e
    const/16 v26, 0x0

    .line 8148
    .local v26, adjResult:I
    if-nez v29, :cond_6f

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    if-eqz v5, :cond_6f

    .line 8155
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    .line 8157
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8159
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->rebuildAppWindowListLocked()V

    .line 8160
    or-int/lit8 v38, v38, 0x1

    .line 8161
    or-int/lit8 v26, v26, 0x2

    .line 8162
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 8163
    const/16 v86, 0x1

    .line 8167
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 8170
    :cond_6f
    if-eqz v85, :cond_73

    if-nez v38, :cond_73

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    if-nez v5, :cond_73

    .line 8177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v67, v0

    .line 8178
    .restart local v67       #oldWallpaper:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_70

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_70

    .line 8186
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v5, :cond_70

    .line 8190
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 8191
    or-int/lit8 v38, v38, 0x8

    .line 8194
    :cond_70
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    or-int v26, v26, v5

    .line 8195
    const/16 v86, 0x0

    .line 8196
    const/16 v85, 0x0

    .line 8200
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v5, :cond_73

    .line 8203
    const/16 v51, 0x0

    .line 8204
    add-int/lit8 v57, v19, -0x1

    :goto_2d
    if-ltz v57, :cond_73

    .line 8205
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Lcom/android/server/wm/WindowState;

    .line 8206
    .restart local v83       #w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_71

    .line 8207
    move-object/from16 v0, v83

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    .line 8208
    .restart local v32       #attrs:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v83

    move-object/from16 v1, v32

    invoke-interface {v5, v0, v1}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_72

    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_72

    .line 8210
    const/16 v51, 0x1

    .line 8204
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_71
    :goto_2e
    add-int/lit8 v57, v57, -0x1

    goto :goto_2d

    .line 8211
    .restart local v32       #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_72
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v83

    move-object/from16 v1, v32

    invoke-interface {v5, v0, v1}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 8212
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    if-nez v5, :cond_71

    .line 8215
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->clearAnimation()V

    goto :goto_2e

    .line 8223
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v67           #oldWallpaper:Lcom/android/server/wm/WindowState;
    .end local v83           #w:Lcom/android/server/wm/WindowState;
    :cond_73
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v92

    if-eq v5, v0, :cond_74

    .line 8227
    move-object/from16 v0, v92

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 8228
    const/16 v86, 0x1

    .line 8231
    :cond_74
    if-eqz v91, :cond_7d

    .line 8235
    move-object/from16 v77, v90

    .line 8236
    .local v77, target:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v90

    if-eq v5, v0, :cond_75

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v90

    if-eq v5, v0, :cond_75

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v90

    if-ne v5, v0, :cond_76

    .line 8239
    :cond_75
    const/16 v57, 0x0

    :goto_2f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v57

    if-ge v0, v5, :cond_76

    .line 8240
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Lcom/android/server/wm/WindowState;

    .line 8241
    .restart local v83       #w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v5, :cond_7c

    .line 8242
    move-object/from16 v77, v83

    .line 8247
    .end local v83           #w:Lcom/android/server/wm/WindowState;
    :cond_76
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-nez v5, :cond_77

    .line 8248
    new-instance v5, Lcom/android/server/wm/DimSurface;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v5, v8}, Lcom/android/server/wm/DimSurface;-><init>(Landroid/view/SurfaceSession;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    .line 8250
    :cond_77
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    move-object/from16 v0, v77

    iget v8, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    add-int/lit8 v8, v8, -0x1

    move/from16 v0, v48

    move/from16 v1, v44

    move/from16 v2, v91

    invoke-virtual {v5, v0, v1, v8, v2}, Lcom/android/server/wm/DimSurface;->show(IIII)V

    .line 8257
    .end local v77           #target:Lcom/android/server/wm/WindowState;
    :cond_78
    :goto_30
    if-eqz v86, :cond_79

    .line 8260
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    or-int v26, v26, v5

    .line 8263
    :cond_79
    and-int/lit8 v5, v26, 0x2

    if-eqz v5, :cond_7e

    .line 8266
    or-int/lit8 v38, v38, 0x1

    .line 8267
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 8274
    :cond_7a
    :goto_31
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    if-eqz v5, :cond_7b

    .line 8275
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 8276
    const/4 v5, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 8278
    or-int/lit8 v38, v38, 0x8

    .line 8279
    const/16 v26, 0x0

    .line 8283
    :cond_7b
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    if-eqz v5, :cond_28

    .line 8284
    or-int/lit8 v38, v38, 0x1

    goto/16 :goto_16

    .line 8239
    .restart local v77       #target:Lcom/android/server/wm/WindowState;
    .restart local v83       #w:Lcom/android/server/wm/WindowState;
    :cond_7c
    add-int/lit8 v57, v57, 0x1

    goto :goto_2f

    .line 8253
    .end local v77           #target:Lcom/android/server/wm/WindowState;
    .end local v83           #w:Lcom/android/server/wm/WindowState;
    :cond_7d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-eqz v5, :cond_78

    .line 8254
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    invoke-virtual {v5}, Lcom/android/server/wm/DimSurface;->hide()V

    goto :goto_30

    .line 8268
    :cond_7e
    and-int/lit8 v5, v26, 0x4

    if-eqz v5, :cond_7a

    .line 8271
    or-int/lit8 v38, v38, 0x1

    goto :goto_31

    .line 8293
    .end local v19           #N:I
    .end local v20           #NAT:I
    .end local v22           #NEAT:I
    .end local v26           #adjResult:I
    .end local v51           #forceHiding:Z
    .end local v79           #tokenMayBeDrawn:Z
    .end local v80           #tokensAnimating:Z
    .end local v81           #transactionSequence:I
    .end local v86           #wallpaperMayChange:Z
    .end local v90           #windowAnimationBackground:Lcom/android/server/wm/WindowState;
    .end local v91           #windowAnimationBackgroundColor:I
    .end local v92           #windowDetachedWallpaper:Lcom/android/server/wm/WindowState;
    :cond_7f
    const/16 v74, 0x0

    goto/16 :goto_4

    .line 8338
    .restart local v19       #N:I
    .restart local v31       #attrFlags:I
    .restart local v32       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v34       #blurring:Z
    .restart local v40       #covered:Z
    .restart local v46       #dimming:Z
    .restart local v47       #displayed:Z
    .restart local v65       #obscured:Z
    .restart local v74       #someoneLosingFocus:Z
    .restart local v76       #syswin:Z
    .restart local v83       #w:Lcom/android/server/wm/WindowState;
    :cond_80
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v88

    .line 8339
    .restart local v88       #width:I
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v55

    .restart local v55       #height:I
    goto/16 :goto_6

    .line 8348
    :cond_81
    const/16 v75, 0x0

    goto/16 :goto_7

    .line 8363
    .restart local v75       #surfaceResized:Z
    :catch_1
    move-exception v49

    .line 8364
    .restart local v49       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error positioning surface of "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v83

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " pos=("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v83

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v83

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v49

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8367
    if-nez p1, :cond_e

    .line 8368
    const-string v5, "position"

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v1, v5, v8}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z

    goto/16 :goto_8

    .line 8379
    .end local v49           #e:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v49

    .line 8383
    .restart local v49       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error resizing surface of "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v83

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " size=("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v88

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "x"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v55

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v49

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8385
    if-nez p1, :cond_f

    .line 8386
    const-string v5, "size"

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v1, v5, v8}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z

    goto/16 :goto_9

    .line 8393
    .end local v49           #e:Ljava/lang/RuntimeException;
    .end local v55           #height:I
    .end local v75           #surfaceResized:Z
    .end local v88           #width:I
    :cond_82
    const/4 v5, 0x0

    goto/16 :goto_a

    .line 8395
    :cond_83
    const/4 v5, 0x0

    goto/16 :goto_b

    .line 8397
    :cond_84
    const/16 v39, 0x0

    goto/16 :goto_c

    .line 8446
    .restart local v39       #configChanged:Z
    :cond_85
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v5, :cond_13

    .line 8447
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    if-nez v5, :cond_13

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    if-nez v5, :cond_13

    .line 8451
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto/16 :goto_d

    .line 8466
    .end local v39           #configChanged:Z
    :catch_3
    move-exception v49

    .line 8467
    .restart local v49       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception hiding surface in "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v83

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 8482
    .end local v49           #e:Ljava/lang/RuntimeException;
    :cond_86
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastLayer:I

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    if-ne v5, v8, :cond_87

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastAlpha:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_87

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastDsDx:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mDsDx:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_87

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastDtDx:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mDtDx:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_87

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastDsDy:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mDsDy:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_87

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastDtDy:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mDtDy:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_87

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_87

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_87

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    if-eqz v5, :cond_8b

    .line 8491
    :cond_87
    const/16 v47, 0x1

    .line 8492
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastAlpha:F

    .line 8493
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastLayer:I

    .line 8494
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mDsDx:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastDsDx:F

    .line 8495
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mDtDx:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastDtDx:F

    .line 8496
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mDsDy:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastDsDy:F

    .line 8497
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mDtDy:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastDtDy:F

    .line 8498
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    .line 8499
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 8506
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v5, :cond_88

    .line 8508
    :try_start_8
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceAlpha:F

    .line 8509
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    invoke-virtual {v5, v8}, Landroid/view/Surface;->setAlpha(F)V

    .line 8510
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceLayer:I

    .line 8511
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    invoke-virtual {v5, v8}, Landroid/view/Surface;->setLayer(I)V

    .line 8512
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mDsDx:F

    move-object/from16 v0, v83

    iget v10, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v8, v10

    move-object/from16 v0, v83

    iget v10, v0, Lcom/android/server/wm/WindowState;->mDtDx:F

    move-object/from16 v0, v83

    iget v11, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v10, v11

    move-object/from16 v0, v83

    iget v11, v0, Lcom/android/server/wm/WindowState;->mDsDy:F

    move-object/from16 v0, v83

    iget v12, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v11, v12

    move-object/from16 v0, v83

    iget v12, v0, Lcom/android/server/wm/WindowState;->mDtDy:F

    move-object/from16 v0, v83

    iget v13, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v12, v13

    invoke-virtual {v5, v8, v10, v11, v12}, Landroid/view/Surface;->setMatrix(FFFF)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4

    .line 8523
    :cond_88
    :goto_32
    :try_start_9
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    if-eqz v5, :cond_89

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    if-nez v5, :cond_89

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    if-nez v5, :cond_89

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mReadyToShow:Z

    if-nez v5, :cond_89

    .line 8530
    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->showSurfaceRobustlyLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 8531
    const/4 v5, 0x1

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mHasDrawn:Z

    .line 8532
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    .line 8537
    :cond_89
    :goto_33
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_16

    .line 8538
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    goto/16 :goto_f

    .line 8515
    :catch_4
    move-exception v49

    .line 8516
    .restart local v49       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error updating surface in "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v83

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v49

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8517
    if-nez p1, :cond_88

    .line 8518
    const-string v5, "update"

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v1, v5, v8}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z

    goto :goto_32

    .line 8534
    .end local v49           #e:Ljava/lang/RuntimeException;
    :cond_8a
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto :goto_33

    .line 8541
    :cond_8b
    const/16 v47, 0x1

    goto/16 :goto_f

    .line 8557
    :cond_8c
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto/16 :goto_10

    .line 8564
    :cond_8d
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v5, :cond_1a

    .line 8567
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto/16 :goto_11

    .line 8581
    .restart local v36       #canBeSeen:Z
    :cond_8e
    const/16 v66, 0x0

    goto/16 :goto_12

    .line 8605
    .restart local v66       #obscuredChanged:Z
    :cond_8f
    const/16 v68, 0x0

    goto/16 :goto_13

    .line 8611
    .restart local v68       #opaqueDrawn:Z
    :cond_90
    if-eqz v36, :cond_22

    if-nez v65, :cond_22

    and-int/lit8 v5, v31, 0x4

    or-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_22

    .line 8617
    and-int/lit8 v5, v31, 0x2

    if-eqz v5, :cond_92

    .line 8618
    if-nez v46, :cond_92

    .line 8620
    const/16 v46, 0x1

    .line 8621
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-nez v5, :cond_91

    .line 8622
    new-instance v5, Lcom/android/server/wm/DimAnimator;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v5, v8}, Lcom/android/server/wm/DimAnimator;-><init>(Landroid/view/SurfaceSession;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 8624
    :cond_91
    move-object/from16 v0, v32

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7e5

    if-ne v5, v8, :cond_94

    .line 8625
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    move/from16 v0, v48

    move/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/DimAnimator;->show(II)V

    .line 8629
    :goto_34
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object/from16 v0, v83

    move-wide/from16 v1, v42

    invoke-virtual {v5, v8, v0, v1, v2}, Lcom/android/server/wm/DimAnimator;->updateParameters(Landroid/content/res/Resources;Lcom/android/server/wm/WindowState;J)V

    .line 8633
    :cond_92
    and-int/lit8 v5, v31, 0x4

    if-eqz v5, :cond_22

    .line 8634
    if-nez v34, :cond_22

    .line 8636
    const/16 v34, 0x1

    .line 8637
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    if-nez v5, :cond_93

    .line 8639
    :try_start_a
    new-instance v10, Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const/4 v12, 0x0

    const-string v13, "BlurSurface"

    const/4 v14, -0x1

    const/16 v15, 0x10

    const/16 v16, 0x10

    const/16 v17, -0x1

    const/high16 v18, 0x1

    invoke-direct/range {v10 .. v18}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    .line 8650
    :cond_93
    :goto_35
    :try_start_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    if-eqz v5, :cond_22

    .line 8654
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10}, Landroid/view/Surface;->setPosition(II)V

    .line 8655
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move/from16 v0, v48

    move/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Landroid/view/Surface;->setSize(II)V

    .line 8656
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v5, v8}, Landroid/view/Surface;->setLayer(I)V

    .line 8657
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurShown:Z
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    if-nez v5, :cond_22

    .line 8661
    :try_start_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->show()V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_6

    .line 8665
    :goto_36
    const/4 v5, 0x1

    :try_start_d
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurShown:Z

    goto/16 :goto_14

    .line 8627
    :cond_94
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    move/from16 v0, v59

    move/from16 v1, v58

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/DimAnimator;->show(II)V

    goto :goto_34

    .line 8644
    :catch_5
    move-exception v49

    .line 8645
    .local v49, e:Ljava/lang/Exception;
    const-string v5, "WindowManager"

    const-string v8, "Exception creating Blur surface"

    move-object/from16 v0, v49

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    .line 8662
    .end local v49           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v49

    .line 8663
    .local v49, e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v8, "Failure showing blur surface"

    move-object/from16 v0, v49

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    .line 8681
    .end local v31           #attrFlags:I
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v36           #canBeSeen:Z
    .end local v47           #displayed:Z
    .end local v49           #e:Ljava/lang/RuntimeException;
    .end local v66           #obscuredChanged:Z
    .end local v68           #opaqueDrawn:Z
    .end local v83           #w:Lcom/android/server/wm/WindowState;
    :cond_95
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-eqz v5, :cond_97

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    iget-boolean v5, v5, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    if-eqz v5, :cond_97

    .line 8682
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v5, :cond_96

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v5, :cond_96

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v5

    if-nez v5, :cond_99

    :cond_96
    const/4 v5, 0x1

    :goto_37
    move/from16 v0, v46

    move-wide/from16 v1, v42

    invoke-virtual {v8, v0, v1, v2, v5}, Lcom/android/server/wm/DimAnimator;->updateSurface(ZJZ)Z

    move-result v5

    or-int v29, v29, v5

    .line 8686
    :cond_97
    if-nez v34, :cond_98

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurShown:Z
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0

    if-eqz v5, :cond_98

    .line 8690
    :try_start_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    .line 8694
    :goto_38
    const/4 v5, 0x0

    :try_start_f
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurShown:Z

    .line 8697
    :cond_98
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v5, :cond_49

    .line 8698
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v5, :cond_9a

    .line 8699
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v8}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_1e

    .line 8682
    :cond_99
    const/4 v5, 0x0

    goto :goto_37

    .line 8691
    :catch_7
    move-exception v49

    .line 8692
    .local v49, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "WindowManager"

    const-string v8, "Illegal argument exception hiding blur surface"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 8702
    .end local v49           #e:Ljava/lang/IllegalArgumentException;
    :cond_9a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v5}, Lcom/android/server/wm/BlackFrame;->clearMatrix()V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_1e

    .line 8738
    .end local v19           #N:I
    .end local v34           #blurring:Z
    .end local v40           #covered:Z
    .end local v46           #dimming:Z
    .end local v65           #obscured:Z
    .end local v74           #someoneLosingFocus:Z
    .end local v76           #syswin:Z
    .restart local v45       #diff:I
    .restart local v89       #win:Lcom/android/server/wm/WindowState;
    :cond_9b
    const/16 v39, 0x0

    goto/16 :goto_1f

    .line 8752
    .restart local v39       #configChanged:Z
    :cond_9c
    const/16 v16, 0x0

    goto/16 :goto_20

    .line 8758
    .end local v39           #configChanged:Z
    :catch_8
    move-exception v49

    .line 8759
    .local v49, e:Landroid/os/RemoteException;
    const/4 v5, 0x0

    move-object/from16 v0, v89

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto/16 :goto_21

    .line 8796
    .end local v45           #diff:I
    .end local v49           #e:Landroid/os/RemoteException;
    .end local v89           #win:Lcom/android/server/wm/WindowState;
    .restart local v84       #wallpaperDestroyed:Z
    :cond_9d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v57, v5, -0x1

    :goto_39
    if-ltz v57, :cond_9f

    .line 8797
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Lcom/android/server/wm/AppWindowToken;

    .line 8798
    .local v78, token:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v78

    iget-boolean v5, v0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    if-nez v5, :cond_9e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object/from16 v0, v78

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9e

    .line 8802
    const/4 v5, 0x0

    move-object/from16 v0, v78

    iput-object v5, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 8803
    const/4 v5, 0x0

    move-object/from16 v0, v78

    iput-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->animating:Z

    .line 8806
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v0, v78

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8807
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8796
    :cond_9e
    add-int/lit8 v57, v57, -0x1

    goto :goto_39

    .line 8811
    .end local v78           #token:Lcom/android/server/wm/AppWindowToken;
    :cond_9f
    const/16 v62, 0x0

    .line 8813
    .local v62, needRelayout:Z
    if-nez v29, :cond_a0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    if-eqz v5, :cond_a0

    .line 8820
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    .line 8821
    const/16 v62, 0x1

    .line 8822
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->rebuildAppWindowListLocked()V

    .line 8823
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 8825
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8828
    :cond_a0
    if-eqz v50, :cond_a1

    .line 8829
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v8, 0x3

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 8831
    :cond_a1
    if-eqz v84, :cond_a2

    .line 8832
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    if-eqz v5, :cond_ac

    const/16 v62, 0x1

    .line 8834
    :cond_a2
    :goto_3a
    if-eqz v62, :cond_ad

    .line 8835
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/server/wm/WindowManagerService;->requestAnimationLocked(J)V

    .line 8842
    :cond_a3
    :goto_3b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 8844
    if-eqz v56, :cond_ae

    const/4 v5, 0x1

    :goto_3c
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowManagerService;->setHoldScreenLocked(Z)V

    .line 8845
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v5, :cond_a6

    .line 8846
    const/4 v5, 0x0

    cmpg-float v5, v72, v5

    if-ltz v5, :cond_a4

    const/high16 v5, 0x3f80

    cmpl-float v5, v72, v5

    if-lez v5, :cond_af

    .line 8847
    :cond_a4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    const/4 v8, -0x1

    invoke-virtual {v5, v8}, Lcom/android/server/PowerManagerService;->setScreenBrightnessOverride(I)V

    .line 8852
    :goto_3d
    const/4 v5, 0x0

    cmpg-float v5, v35, v5

    if-ltz v5, :cond_a5

    const/high16 v5, 0x3f80

    cmpl-float v5, v35, v5

    if-lez v5, :cond_b0

    .line 8853
    :cond_a5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    const/4 v8, -0x1

    invoke-virtual {v5, v8}, Lcom/android/server/PowerManagerService;->setButtonBrightnessOverride(I)V

    .line 8859
    :cond_a6
    :goto_3e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/wm/Session;

    move-object/from16 v0, v56

    if-eq v0, v5, :cond_a7

    .line 8860
    move-object/from16 v0, v56

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/wm/Session;

    .line 8861
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0xc

    move-object/from16 v0, v56

    invoke-virtual {v5, v8, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v60

    .line 8862
    .local v60, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v0, v60

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 8865
    .end local v60           #m:Landroid/os/Message;
    :cond_a7
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    if-eqz v5, :cond_a8

    .line 8867
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 8869
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    .line 8872
    :cond_a8
    if-eqz v73, :cond_a9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v5, :cond_a9

    .line 8873
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v5}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 8874
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 8877
    :cond_a9
    if-eqz v82, :cond_aa

    .line 8879
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    move-result v37

    .line 8880
    .restart local v37       #changed:Z
    if-eqz v37, :cond_b1

    .line 8881
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x12

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 8887
    .end local v37           #changed:Z
    :cond_aa
    :goto_3f
    if-eqz v69, :cond_ab

    if-nez v62, :cond_ab

    if-nez v82, :cond_ab

    .line 8888
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    .line 8893
    :cond_ab
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    goto/16 :goto_0

    .line 8832
    :cond_ac
    const/16 v62, 0x0

    goto/16 :goto_3a

    .line 8836
    :cond_ad
    if-eqz v29, :cond_a3

    .line 8837
    const/high16 v5, 0x447a

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getRefreshRate()F

    move-result v8

    div-float/2addr v5, v8

    float-to-int v0, v5

    move/from16 v70, v0

    .line 8838
    .local v70, refreshTimeUs:I
    move/from16 v0, v70

    int-to-long v10, v0

    add-long v10, v10, v42

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v10, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/server/wm/WindowManagerService;->requestAnimationLocked(J)V

    goto/16 :goto_3b

    .line 8844
    .end local v70           #refreshTimeUs:I
    :cond_ae
    const/4 v5, 0x0

    goto/16 :goto_3c

    .line 8849
    :cond_af
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    const/high16 v8, 0x437f

    mul-float v8, v8, v72

    float-to-int v8, v8

    invoke-virtual {v5, v8}, Lcom/android/server/PowerManagerService;->setScreenBrightnessOverride(I)V

    goto/16 :goto_3d

    .line 8855
    :cond_b0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    const/high16 v8, 0x437f

    mul-float v8, v8, v35

    float-to-int v8, v8

    invoke-virtual {v5, v8}, Lcom/android/server/PowerManagerService;->setButtonBrightnessOverride(I)V

    goto/16 :goto_3e

    .line 8883
    .restart local v37       #changed:Z
    :cond_b1
    const/16 v82, 0x0

    goto :goto_3f

    .line 8060
    nop

    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x1008 -> :sswitch_0
        0x100a -> :sswitch_0
        0x2007 -> :sswitch_1
        0x2009 -> :sswitch_1
        0x200b -> :sswitch_1
    .end sparse-switch
.end method

.method private final performLayoutLockedInner(ZZ)I
    .locals 13
    .parameter "initial"
    .parameter "updateInputWindows"

    .prologue
    const/4 v10, 0x0

    .line 7412
    iget-boolean v9, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    if-nez v9, :cond_0

    move v9, v10

    .line 7537
    :goto_0
    return v9

    .line 7416
    :cond_0
    iput-boolean v10, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 7418
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .line 7419
    .local v3, dw:I
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    .line 7421
    .local v2, dh:I
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7422
    .local v1, NFW:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v1, :cond_1

    .line 7423
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/FakeWindowImpl;

    invoke-virtual {v9, v3, v2}, Lcom/android/server/wm/FakeWindowImpl;->layout(II)V

    .line 7422
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 7426
    :cond_1
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7435
    .local v0, N:I
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v11, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v9, v3, v2, v11}, Landroid/view/WindowManagerPolicy;->beginLayoutLw(III)V

    .line 7437
    iget v9, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    add-int/lit8 v6, v9, 0x1

    .line 7438
    .local v6, seq:I
    if-gez v6, :cond_2

    const/4 v6, 0x0

    .line 7439
    :cond_2
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    .line 7443
    const/4 v7, -0x1

    .line 7444
    .local v7, topAttached:I
    add-int/lit8 v5, v0, -0x1

    :goto_2
    if-ltz v5, :cond_7

    .line 7445
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 7450
    .local v8, win:Lcom/android/server/wm/WindowState;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v4

    .line 7476
    .local v4, gone:Z
    if-eqz v4, :cond_3

    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v9, :cond_3

    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v9, :cond_5

    .line 7477
    :cond_3
    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v9, :cond_6

    .line 7478
    if-eqz p1, :cond_4

    .line 7480
    iput-boolean v10, v8, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 7482
    :cond_4
    iput-boolean v10, v8, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 7483
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->prelayout()V

    .line 7484
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v12, 0x0

    invoke-interface {v9, v8, v11, v12}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 7485
    iput v6, v8, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 7444
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 7491
    :cond_6
    if-gez v7, :cond_5

    move v7, v5

    goto :goto_3

    .line 7500
    .end local v4           #gone:Z
    .end local v8           #win:Lcom/android/server/wm/WindowState;
    :cond_7
    move v5, v7

    :goto_4
    if-ltz v5, :cond_c

    .line 7501
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 7503
    .restart local v8       #win:Lcom/android/server/wm/WindowState;
    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v9, :cond_b

    .line 7513
    iget v9, v8, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v11, 0x8

    if-eq v9, v11, :cond_8

    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v9, :cond_9

    :cond_8
    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v9, :cond_9

    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v9, :cond_b

    .line 7515
    :cond_9
    if-eqz p1, :cond_a

    .line 7517
    iput-boolean v10, v8, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 7519
    :cond_a
    iput-boolean v10, v8, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 7520
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->prelayout()V

    .line 7521
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-interface {v9, v8, v11, v12}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 7522
    iput v6, v8, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 7500
    :cond_b
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 7532
    .end local v8           #win:Lcom/android/server/wm/WindowState;
    :cond_c
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v9}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 7533
    if-eqz p2, :cond_d

    .line 7534
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v9, v10}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 7537
    :cond_d
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy;->finishLayoutLw()I

    move-result v9

    goto/16 :goto_0
.end method

.method private placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 3
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 841
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 845
    .local v0, i:I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 846
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 847
    return-void
.end method

.method private placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 2
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 850
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 854
    .local v0, i:I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 855
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 856
    return-void
.end method

.method private final reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I
    .locals 3
    .parameter "index"
    .parameter "token"

    .prologue
    .line 4357
    iget-object v2, p2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4358
    .local v0, NW:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4359
    iget-object v2, p2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result p1

    .line 4358
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4361
    :cond_0
    return p1
.end method

.method private final reAddWindowLocked(ILcom/android/server/wm/WindowState;)I
    .locals 6
    .parameter "index"
    .parameter "win"

    .prologue
    const/4 v5, 0x0

    .line 4327
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4328
    .local v0, NCW:I
    const/4 v1, 0x0

    .line 4329
    .local v1, added:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 4330
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 4331
    .local v2, cwin:Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_0

    iget v4, v2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v4, :cond_0

    .line 4334
    iput-boolean v5, p2, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    .line 4335
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4336
    add-int/lit8 p1, p1, 0x1

    .line 4337
    const/4 v1, 0x1

    .line 4341
    :cond_0
    iput-boolean v5, v2, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    .line 4342
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4343
    add-int/lit8 p1, p1, 0x1

    .line 4329
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4345
    .end local v2           #cwin:Lcom/android/server/wm/WindowState;
    :cond_1
    if-nez v1, :cond_2

    .line 4348
    iput-boolean v5, p2, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    .line 4349
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4350
    add-int/lit8 p1, p1, 0x1

    .line 4352
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 4353
    return p1
.end method

.method private reAddWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .parameter "win"

    .prologue
    .line 1323
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 1327
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1328
    .local v0, wpos:I
    if-ltz v0, :cond_0

    .line 1331
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1332
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1333
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    .line 1335
    :cond_0
    return-void
.end method

.method private readForcedDisplaySizeLocked()V
    .locals 8

    .prologue
    const/16 v7, 0x2c

    .line 7114
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "display_size_forced"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7116
    .local v3, str:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 7131
    :cond_0
    :goto_0
    return-void

    .line 7119
    :cond_1
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 7120
    .local v2, pos:I
    if-lez v2, :cond_0

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-ne v5, v2, :cond_0

    .line 7125
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 7126
    .local v4, width:I
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 7130
    .local v1, height:I
    invoke-direct {p0, v4, v1}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(II)V

    goto :goto_0

    .line 7127
    .end local v1           #height:I
    .end local v4           #width:I
    :catch_0
    move-exception v0

    .line 7128
    .local v0, ex:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private rebuildBlackFrame(Z)V
    .locals 10
    .parameter "inTransaction"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7071
    if-nez p1, :cond_0

    .line 7074
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 7077
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v8, :cond_1

    .line 7078
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v8}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 7079
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 7081
    :cond_1
    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    iget v9, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    if-lt v8, v9, :cond_2

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    iget v9, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge v8, v9, :cond_5

    .line 7084
    :cond_2
    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    if-eq v8, v7, :cond_3

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    :cond_3
    move v6, v7

    .line 7086
    .local v6, rotated:Z
    :cond_4
    if-eqz v6, :cond_7

    .line 7087
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    .line 7088
    .local v3, initW:I
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    .line 7089
    .local v2, initH:I
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    .line 7090
    .local v1, baseW:I
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    .line 7097
    .local v0, baseH:I
    :goto_0
    new-instance v5, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7098
    .local v5, outer:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7100
    .local v4, inner:Landroid/graphics/Rect;
    :try_start_1
    new-instance v7, Lcom/android/server/wm/BlackFrame;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const v9, 0x1e8480

    invoke-direct {v7, v8, v5, v4, v9}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    .line 7105
    .end local v0           #baseH:I
    .end local v1           #baseW:I
    .end local v2           #initH:I
    .end local v3           #initW:I
    .end local v4           #inner:Landroid/graphics/Rect;
    .end local v5           #outer:Landroid/graphics/Rect;
    .end local v6           #rotated:Z
    :cond_5
    :goto_1
    if-nez p1, :cond_6

    .line 7106
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 7111
    :cond_6
    return-void

    .line 7092
    .restart local v6       #rotated:Z
    :cond_7
    :try_start_2
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    .line 7093
    .restart local v3       #initW:I
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    .line 7094
    .restart local v2       #initH:I
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    .line 7095
    .restart local v1       #baseW:I
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v0       #baseH:I
    goto :goto_0

    .line 7105
    .end local v0           #baseH:I
    .end local v1           #baseW:I
    .end local v2           #initH:I
    .end local v3           #initW:I
    .end local v6           #rotated:Z
    :catchall_0
    move-exception v7

    if-nez p1, :cond_8

    .line 7106
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_8
    throw v7

    .line 7101
    .restart local v0       #baseH:I
    .restart local v1       #baseW:I
    .restart local v2       #initH:I
    .restart local v3       #initW:I
    .restart local v4       #inner:Landroid/graphics/Rect;
    .restart local v5       #outer:Landroid/graphics/Rect;
    .restart local v6       #rotated:Z
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I
    .locals 4
    .parameter "curSize"
    .parameter "rotation"
    .parameter "dm"
    .parameter "dw"
    .parameter "dh"

    .prologue
    .line 6016
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, p4, p5, p2}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(III)I

    move-result v2

    iput v2, p3, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 6017
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, p4, p5, p2}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(III)I

    move-result v2

    iput v2, p3, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 6018
    const/4 v2, 0x0

    invoke-static {p3, v2}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v0

    .line 6019
    .local v0, scale:F
    iget v2, p3, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    iget v3, p3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 6020
    .local v1, size:I
    if-eqz p1, :cond_0

    if-ge v1, p1, :cond_1

    .line 6021
    :cond_0
    move p1, v1

    .line 6023
    :cond_1
    return p1
.end method

.method private reduceConfigLayout(IIFII)I
    .locals 13
    .parameter "curLayout"
    .parameter "rotation"
    .parameter "density"
    .parameter "dw"
    .parameter "dh"

    .prologue
    .line 5910
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v11, v0, v1, p2}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(III)I

    move-result v10

    .line 5911
    .local v10, w:I
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v11, v0, v1, p2}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(III)I

    move-result v3

    .line 5917
    .local v3, h:I
    move v4, v10

    .line 5918
    .local v4, longSize:I
    move v8, v3

    .line 5919
    .local v8, shortSize:I
    if-ge v4, v8, :cond_0

    .line 5920
    move v9, v4

    .line 5921
    .local v9, tmp:I
    move v4, v8

    .line 5922
    move v8, v9

    .line 5924
    .end local v9           #tmp:I
    :cond_0
    int-to-float v11, v4

    div-float v11, v11, p3

    float-to-int v4, v11

    .line 5925
    int-to-float v11, v8

    div-float v11, v11, p3

    float-to-int v8, v11

    .line 5931
    const/16 v11, 0x1d6

    if-ge v4, v11, :cond_4

    .line 5934
    const/4 v7, 0x1

    .line 5935
    .local v7, screenLayoutSize:I
    const/4 v6, 0x0

    .line 5936
    .local v6, screenLayoutLong:Z
    const/4 v5, 0x0

    .line 5971
    .local v5, screenLayoutCompatNeeded:Z
    :goto_0
    if-nez v6, :cond_1

    .line 5972
    and-int/lit8 v11, p1, -0x31

    or-int/lit8 p1, v11, 0x10

    .line 5975
    :cond_1
    if-eqz v5, :cond_2

    .line 5976
    const/high16 v11, 0x1000

    or-int/2addr p1, v11

    .line 5978
    :cond_2
    and-int/lit8 v2, p1, 0xf

    .line 5979
    .local v2, curSize:I
    if-ge v7, v2, :cond_3

    .line 5980
    and-int/lit8 v11, p1, -0x10

    or-int p1, v11, v7

    .line 5983
    :cond_3
    return p1

    .line 5939
    .end local v2           #curSize:I
    .end local v5           #screenLayoutCompatNeeded:Z
    .end local v6           #screenLayoutLong:Z
    .end local v7           #screenLayoutSize:I
    :cond_4
    const/16 v11, 0x3c0

    if-lt v4, v11, :cond_6

    const/16 v11, 0x2d0

    if-lt v8, v11, :cond_6

    .line 5942
    const/4 v7, 0x4

    .line 5954
    .restart local v7       #screenLayoutSize:I
    :goto_1
    const/16 v11, 0x141

    if-gt v8, v11, :cond_5

    const/16 v11, 0x23a

    if-le v4, v11, :cond_8

    .line 5955
    :cond_5
    const/4 v5, 0x1

    .line 5961
    .restart local v5       #screenLayoutCompatNeeded:Z
    :goto_2
    mul-int/lit8 v11, v4, 0x3

    div-int/lit8 v11, v11, 0x5

    add-int/lit8 v12, v8, -0x1

    if-lt v11, v12, :cond_9

    .line 5963
    const/4 v6, 0x1

    .restart local v6       #screenLayoutLong:Z
    goto :goto_0

    .line 5943
    .end local v5           #screenLayoutCompatNeeded:Z
    .end local v6           #screenLayoutLong:Z
    .end local v7           #screenLayoutSize:I
    :cond_6
    const/16 v11, 0x280

    if-lt v4, v11, :cond_7

    const/16 v11, 0x1e0

    if-lt v8, v11, :cond_7

    .line 5946
    const/4 v7, 0x3

    .restart local v7       #screenLayoutSize:I
    goto :goto_1

    .line 5948
    .end local v7           #screenLayoutSize:I
    :cond_7
    const/4 v7, 0x2

    .restart local v7       #screenLayoutSize:I
    goto :goto_1

    .line 5957
    :cond_8
    const/4 v5, 0x0

    .restart local v5       #screenLayoutCompatNeeded:Z
    goto :goto_2

    .line 5965
    :cond_9
    const/4 v6, 0x0

    .restart local v6       #screenLayoutLong:Z
    goto :goto_0
.end method

.method private reduceConfigWidthSize(IIFII)I
    .locals 2
    .parameter "curSize"
    .parameter "rotation"
    .parameter "density"
    .parameter "dw"
    .parameter "dh"

    .prologue
    .line 5900
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, p4, p5, p2}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(III)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p3

    float-to-int v0, v1

    .line 5901
    .local v0, size:I
    if-ge v0, p1, :cond_0

    .line 5902
    move p1, v0

    .line 5904
    :cond_0
    return p1
.end method

.method private removeAppTokensLocked(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4411
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4412
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4413
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 4414
    .local v2, token:Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    .line 4417
    .local v3, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4418
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to reorder token that doesn\'t exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4420
    add-int/lit8 v1, v1, -0x1

    .line 4421
    add-int/lit8 v0, v0, -0x1

    .line 4412
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4424
    .end local v2           #token:Landroid/os/IBinder;
    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_1
    return-void
.end method

.method private removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V
    .locals 11
    .parameter "session"
    .parameter "win"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2319
    iget-boolean v5, p2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v5, :cond_0

    .line 2413
    :goto_0
    return-void

    .line 2324
    :cond_0
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_1

    .line 2325
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 2326
    .local v1, cwin:Lcom/android/server/wm/WindowState;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Force-removing child win "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-direct {p0, v5, v1}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 2324
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2331
    .end local v1           #cwin:Lcom/android/server/wm/WindowState;
    :cond_1
    iput-boolean v8, p2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    .line 2333
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne v5, p2, :cond_2

    .line 2334
    invoke-virtual {p0, v10}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 2343
    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5, p2}, Landroid/view/WindowManagerPolicy;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2344
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->removeLocked()V

    .line 2347
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v6}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2348
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2349
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2350
    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 2353
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v5, p2, :cond_9

    .line 2354
    iput-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 2359
    :cond_3
    :goto_2
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 2360
    .local v4, token:Lcom/android/server/wm/WindowToken;
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 2362
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v5, v4, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2363
    if-eqz v0, :cond_4

    .line 2364
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2369
    :cond_4
    iget-object v5, v4, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 2370
    iget-boolean v5, v4, Lcom/android/server/wm/WindowToken;->explicit:Z

    if-nez v5, :cond_a

    .line 2371
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2377
    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    .line 2378
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v5, p2, :cond_b

    .line 2379
    iput-object v9, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 2396
    :cond_6
    :goto_4
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dd

    if-ne v5, v6, :cond_d

    .line 2397
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J

    .line 2398
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    .line 2403
    :cond_7
    :goto_5
    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    if-nez v5, :cond_8

    .line 2404
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 2405
    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 2406
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2407
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_8

    .line 2408
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2412
    :cond_8
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    goto/16 :goto_0

    .line 2355
    .end local v0           #atoken:Lcom/android/server/wm/AppWindowToken;
    .end local v4           #token:Lcom/android/server/wm/WindowToken;
    :cond_9
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dc

    if-ne v5, v6, :cond_3

    .line 2356
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2372
    .restart local v0       #atoken:Lcom/android/server/wm/AppWindowToken;
    .restart local v4       #token:Lcom/android/server/wm/WindowToken;
    :cond_a
    if-eqz v0, :cond_5

    .line 2373
    iput-boolean v10, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    goto :goto_3

    .line 2380
    :cond_b
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v5, :cond_c

    .line 2383
    iput-object v9, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    goto :goto_4

    .line 2384
    :cond_c
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v8, :cond_6

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    if-eqz v5, :cond_6

    .line 2391
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2392
    .local v3, m:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 2399
    .end local v3           #m:Landroid/os/Message;
    :cond_d
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x10

    and-int/2addr v5, v6

    if-eqz v5, :cond_7

    .line 2400
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    goto :goto_5
.end method

.method private reportInjectionResult(I)Z
    .locals 3
    .parameter "result"

    .prologue
    const/4 v0, 0x0

    .line 6411
    packed-switch p1, :pswitch_data_0

    .line 6424
    :pswitch_0
    const-string v1, "WindowManager"

    const-string v2, "Input event injection failed."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6425
    :goto_0
    return v0

    .line 6413
    :pswitch_1
    const-string v0, "WindowManager"

    const-string v1, "Input event injection permission denied."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6414
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Injecting to another application requires INJECT_EVENTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6418
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 6420
    :pswitch_3
    const-string v1, "WindowManager"

    const-string v2, "Input event injection timed out."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6411
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private setForcedDisplaySizeLocked(II)V
    .locals 6
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7134
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using new display size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7136
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 7137
    :try_start_0
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    .line 7138
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    .line 7139
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7140
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManagerPolicy;->setInitialDisplaySize(II)V

    .line 7142
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 7144
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v0

    .line 7145
    .local v0, configChanged:Z
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 7146
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 7147
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7148
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 7149
    const/4 v0, 0x1

    .line 7153
    :cond_0
    if-eqz v0, :cond_1

    .line 7154
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 7155
    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(Z)V

    .line 7156
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 7159
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowManagerService;->rebuildBlackFrame(Z)V

    .line 7161
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 7162
    return-void

    .line 7139
    .end local v0           #configChanged:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private shouldAllowDisableKeyguard()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4559
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 4560
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 4562
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    .line 4563
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    .line 4568
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_0
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    if-ne v1, v2, :cond_2

    :goto_1
    return v2

    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_1
    move v1, v3

    .line 4563
    goto :goto_0

    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_2
    move v2, v3

    .line 4568
    goto :goto_1
.end method

.method private startFreezingDisplayLocked(Z)V
    .locals 8
    .parameter "inTransaction"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v1, -0x1

    .line 9213
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v0, :cond_1

    .line 9256
    :cond_0
    :goto_0
    return-void

    .line 9217
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9223
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9225
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 9227
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor;->freezeInputDispatchingLw()V

    .line 9229
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v0, v1, :cond_2

    .line 9230
    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    .line 9231
    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 9232
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    .line 9240
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->useRotationAnimation()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9241
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9242
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 9243
    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 9245
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-nez v0, :cond_4

    .line 9246
    new-instance v0, Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v6

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ScreenRotationAnimation;-><init>(Landroid/content/Context;Landroid/view/SurfaceSession;ZIII)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 9250
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9251
    invoke-static {v7}, Landroid/view/Surface;->freezeDisplay(I)V

    goto :goto_0

    .line 9254
    :cond_5
    invoke-static {v7}, Landroid/view/Surface;->freezeDisplay(I)V

    goto :goto_0
.end method

.method private stopFreezingDisplayLocked()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0xf

    const/4 v9, 0x0

    .line 9259
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_1

    .line 9323
    :cond_0
    :goto_0
    return-void

    .line 9263
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    if-nez v0, :cond_0

    .line 9267
    iput-boolean v9, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 9268
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 9273
    const/4 v8, 0x0

    .line 9275
    .local v8, updateRotation:Z
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->useRotationAnimation()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9278
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-wide/16 v2, 0x2710

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ScreenRotationAnimation;->dismiss(Landroid/view/SurfaceSession;JFII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9280
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->requestAnimationLocked(J)V

    .line 9292
    :goto_1
    invoke-static {v9}, Landroid/view/Surface;->unfreezeDisplay(I)V

    .line 9294
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor;->thawInputDispatchingLw()V

    .line 9302
    invoke-virtual {p0, v9}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v7

    .line 9309
    .local v7, configChanged:Z
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 9310
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v10}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 9313
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 9315
    if-eqz v8, :cond_2

    .line 9317
    invoke-virtual {p0, v9}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    move-result v0

    or-int/2addr v7, v0

    .line 9320
    :cond_2
    if-eqz v7, :cond_0

    .line 9321
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 9282
    .end local v7           #configChanged:Z
    :cond_3
    iput-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 9283
    const/4 v8, 0x1

    goto :goto_1

    .line 9286
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v0, :cond_5

    .line 9287
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 9288
    iput-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 9290
    :cond_5
    const/4 v8, 0x1

    goto :goto_1
.end method

.method private tmpRemoveAppWindowsLocked(Lcom/android/server/wm/WindowToken;)Z
    .locals 7
    .parameter "token"

    .prologue
    const/4 v5, 0x1

    .line 4239
    iget-object v6, p1, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4240
    .local v0, NW:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 4241
    iget-object v6, p1, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 4243
    .local v4, win:Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4244
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 4245
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4246
    .local v3, j:I
    :goto_1
    if-lez v3, :cond_0

    .line 4247
    add-int/lit8 v3, v3, -0x1

    .line 4248
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 4251
    .local v1, cwin:Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4240
    .end local v1           #cwin:Lcom/android/server/wm/WindowState;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4254
    .end local v3           #j:I
    .end local v4           #win:Lcom/android/server/wm/WindowState;
    :cond_1
    if-lez v0, :cond_2

    :goto_2
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I
    .locals 5
    .parameter "interestingPos"
    .parameter "win"

    .prologue
    .line 1300
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1301
    .local v3, wpos:I
    if-ltz v3, :cond_3

    .line 1302
    if-ge v3, p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 1304
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1305
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1306
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1307
    .local v0, NC:I
    :cond_1
    :goto_0
    if-lez v0, :cond_3

    .line 1308
    add-int/lit8 v0, v0, -0x1

    .line 1309
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1310
    .local v2, cw:Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1311
    .local v1, cpos:I
    if-ltz v1, :cond_1

    .line 1312
    if-ge v1, p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 1315
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1319
    .end local v0           #NC:I
    .end local v1           #cpos:I
    .end local v2           #cw:Lcom/android/server/wm/WindowState;
    :cond_3
    return p1
.end method

.method private updateFocusedWindowLocked(IZ)Z
    .locals 9
    .parameter "mode"
    .parameter "updateInputWindows"

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v5, 0x1

    .line 9091
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->computeFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 9092
    .local v2, newFocus:Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v6, v2, :cond_6

    .line 9095
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 9096
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 9099
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 9100
    .local v3, oldFocus:Lcom/android/server/wm/WindowState;
    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 9101
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9102
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v6, v3, v2}, Landroid/view/WindowManagerPolicy;->focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v0

    .line 9104
    .local v0, focusChanged:I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 9105
    .local v1, imWindow:Lcom/android/server/wm/WindowState;
    if-eq v2, v1, :cond_2

    if-eq v3, v1, :cond_2

    .line 9106
    if-eq p1, v5, :cond_0

    if-eq p1, v8, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9109
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 9111
    :cond_1
    if-ne p1, v7, :cond_5

    .line 9112
    invoke-direct {p0, v5, p2}, Lcom/android/server/wm/WindowManagerService;->performLayoutLockedInner(ZZ)I

    .line 9113
    and-int/lit8 v0, v0, -0x2

    .line 9121
    :cond_2
    :goto_0
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_3

    .line 9123
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 9124
    if-ne p1, v7, :cond_3

    .line 9125
    invoke-direct {p0, v5, p2}, Lcom/android/server/wm/WindowManagerService;->performLayoutLockedInner(ZZ)I

    .line 9129
    :cond_3
    if-eq p1, v5, :cond_4

    .line 9132
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->finishUpdateFocusedWindowAfterAssignLayersLocked(Z)V

    .line 9136
    .end local v0           #focusChanged:I
    .end local v1           #imWindow:Lcom/android/server/wm/WindowState;
    .end local v3           #oldFocus:Lcom/android/server/wm/WindowState;
    :cond_4
    :goto_1
    return v5

    .line 9114
    .restart local v0       #focusChanged:I
    .restart local v1       #imWindow:Lcom/android/server/wm/WindowState;
    .restart local v3       #oldFocus:Lcom/android/server/wm/WindowState;
    :cond_5
    if-ne p1, v8, :cond_2

    .line 9117
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    goto :goto_0

    .end local v0           #focusChanged:I
    .end local v1           #imWindow:Lcom/android/server/wm/WindowState;
    .end local v3           #oldFocus:Lcom/android/server/wm/WindowState;
    :cond_6
    move v5, v4

    .line 9136
    goto :goto_1
.end method

.method private updateOrientationFromAppTokensLocked(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .locals 6
    .parameter "currentConfig"
    .parameter "freezeThisOneIfNeeded"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3459
    const/4 v0, 0x0

    .line 3461
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3462
    if-eqz p2, :cond_0

    .line 3463
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 3465
    .local v1, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_0

    .line 3466
    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->startAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;I)V

    .line 3470
    .end local v1           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3489
    :cond_1
    :goto_0
    return-object v0

    .line 3472
    :cond_2
    if-eqz p1, :cond_1

    .line 3477
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 3478
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v3, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 3479
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3480
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 3481
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 3482
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 3483
    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(Z)V

    .line 3484
    new-instance v0, Landroid/content/res/Configuration;

    .end local v0           #config:Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v0, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .restart local v0       #config:Landroid/content/res/Configuration;
    goto :goto_0
.end method

.method private useRotationAnimation()Z
    .locals 1

    .prologue
    .line 1104
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHdmiAllowAni:Z

    return v0
.end method


# virtual methods
.method public addAppToken(ILandroid/view/IApplicationToken;IIZ)V
    .locals 8
    .parameter "addPos"
    .parameter "token"
    .parameter "groupId"
    .parameter "requestedOrientation"
    .parameter "fullscreen"

    .prologue
    .line 3277
    const-string v4, "android.permission.MANAGE_APP_TOKENS"

    const-string v5, "addAppToken()"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3279
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3290
    :cond_0
    :try_start_0
    invoke-interface {p2}, Landroid/view/IApplicationToken;->getKeyDispatchingTimeout()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    mul-long v1, v4, v6

    .line 3296
    .local v1, inputDispatchingTimeoutNanos:J
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 3297
    :try_start_1
    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    .line 3298
    .local v3, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v3, :cond_1

    .line 3299
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted to add existing app token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3300
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3317
    :goto_1
    return-void

    .line 3291
    .end local v1           #inputDispatchingTimeoutNanos:J
    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catch_0
    move-exception v0

    .line 3292
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v5, "Could not get dispatching timeout."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3293
    const-wide v1, 0x12a05f200L

    .restart local v1       #inputDispatchingTimeoutNanos:J
    goto :goto_0

    .line 3302
    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v3       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_1
    :try_start_2
    new-instance v3, Lcom/android/server/wm/AppWindowToken;

    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    invoke-direct {v3, p0, p2}, Lcom/android/server/wm/AppWindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;)V

    .line 3303
    .restart local v3       #wtoken:Lcom/android/server/wm/AppWindowToken;
    iput-wide v1, v3, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    .line 3304
    iput p3, v3, Lcom/android/server/wm/AppWindowToken;->groupId:I

    .line 3305
    iput-boolean p5, v3, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    .line 3306
    iput p4, v3, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .line 3308
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3309
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3312
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 3313
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 3316
    monitor-exit v5

    goto :goto_1

    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public addFakeWindow(Landroid/os/Looper;Landroid/view/InputHandler;Ljava/lang/String;IIZZZ)Landroid/view/WindowManagerPolicy$FakeWindow;
    .locals 12
    .parameter "looper"
    .parameter "inputHandler"
    .parameter "name"
    .parameter "windowType"
    .parameter "layoutParamsFlags"
    .parameter "canReceiveKeys"
    .parameter "hasFocus"
    .parameter "touchFullscreen"

    .prologue
    .line 9429
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 9430
    :try_start_0
    new-instance v0, Lcom/android/server/wm/FakeWindowImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/FakeWindowImpl;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;Landroid/view/InputHandler;Ljava/lang/String;IIZZZ)V

    .line 9432
    .local v0, fw:Lcom/android/server/wm/FakeWindowImpl;
    const/4 v10, 0x0

    .line 9433
    .local v10, i:I
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_1

    .line 9434
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/FakeWindowImpl;

    iget v1, v1, Lcom/android/server/wm/FakeWindowImpl;->mWindowLayer:I

    iget v2, v0, Lcom/android/server/wm/FakeWindowImpl;->mWindowLayer:I

    if-gt v1, v2, :cond_0

    .line 9438
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 9439
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 9440
    monitor-exit v11

    return-object v0

    .line 9441
    .end local v0           #fw:Lcom/android/server/wm/FakeWindowImpl;
    .end local v10           #i:I
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addInputMethodWindowToListLocked(Lcom/android/server/wm/WindowState;)V
    .locals 3
    .parameter "win"

    .prologue
    const/4 v2, 0x1

    .line 1257
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    .line 1258
    .local v0, pos:I
    if-ltz v0, :cond_0

    .line 1259
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v1, p1, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1262
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1263
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1264
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 1270
    :goto_0
    return-void

    .line 1267
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1268
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 1269
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_0
.end method

.method public addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I
    .locals 23
    .parameter "session"
    .parameter "client"
    .parameter "seq"
    .parameter "attrs"
    .parameter "viewVisibility"
    .parameter "outContentInsets"
    .parameter "outInputChannel"

    .prologue
    .line 2027
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p4

    invoke-interface {v3, v0}, Landroid/view/WindowManagerPolicy;->checkAddPermission(Landroid/view/WindowManager$LayoutParams;)I

    move-result v20

    .line 2028
    .local v20, res:I
    if-eqz v20, :cond_0

    move/from16 v3, v20

    .line 2232
    :goto_0
    return v3

    .line 2032
    :cond_0
    const/16 v19, 0x0

    .line 2033
    .local v19, reportNewConfig:Z
    const/4 v7, 0x0

    .line 2034
    .local v7, attachedWindow:Lcom/android/server/wm/WindowState;
    const/16 v21, 0x0

    .line 2037
    .local v21, win:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2038
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-nez v3, :cond_1

    .line 2039
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Display has not been initialialized"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2224
    :catchall_0
    move-exception v3

    move-object/from16 v2, v21

    .end local v21           #win:Lcom/android/server/wm/WindowState;
    .local v2, win:Lcom/android/server/wm/WindowState;
    :goto_1
    :try_start_1
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 2042
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    .restart local v21       #win:Lcom/android/server/wm/WindowState;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2043
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is already added"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    const/4 v3, -0x5

    monitor-exit v22

    goto :goto_0

    .line 2047
    :cond_2
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_4

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_4

    .line 2048
    const/4 v3, 0x0

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v7

    .line 2049
    if-nez v7, :cond_3

    .line 2050
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add window with token that is not a window: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    const/4 v3, -0x2

    monitor-exit v22

    goto/16 :goto_0

    .line 2054
    :cond_3
    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_4

    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_4

    .line 2056
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add window with token that is a sub-window: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    const/4 v3, -0x2

    monitor-exit v22

    goto/16 :goto_0

    .line 2062
    :cond_4
    const/4 v11, 0x0

    .line 2063
    .local v11, addToken:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    .line 2064
    .local v6, token:Lcom/android/server/wm/WindowToken;
    if-nez v6, :cond_9

    .line 2065
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_5

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x63

    if-gt v3, v4, :cond_5

    .line 2067
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add application window with unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    const/4 v3, -0x1

    monitor-exit v22

    goto/16 :goto_0

    .line 2071
    :cond_5
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v3, v4, :cond_6

    .line 2072
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add input method window with unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    const/4 v3, -0x1

    monitor-exit v22

    goto/16 :goto_0

    .line 2076
    :cond_6
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_7

    .line 2077
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add wallpaper window with unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    const/4 v3, -0x1

    monitor-exit v22

    goto/16 :goto_0

    .line 2081
    :cond_7
    new-instance v6, Lcom/android/server/wm/WindowToken;

    .end local v6           #token:Lcom/android/server/wm/WindowToken;
    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v3, v4, v5}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZ)V

    .line 2082
    .restart local v6       #token:Lcom/android/server/wm/WindowToken;
    const/4 v11, 0x1

    .line 2115
    :cond_8
    new-instance v2, Lcom/android/server/wm/WindowState;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v2 .. v10}, Lcom/android/server/wm/WindowState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;ILandroid/view/WindowManager$LayoutParams;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2117
    .end local v21           #win:Lcom/android/server/wm/WindowState;
    .restart local v2       #win:Lcom/android/server/wm/WindowState;
    :try_start_3
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    if-nez v3, :cond_e

    .line 2120
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding window client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " that is dead, aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    const/4 v3, -0x4

    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 2224
    .end local v6           #token:Lcom/android/server/wm/WindowToken;
    .end local v11           #addToken:Z
    :catchall_1
    move-exception v3

    goto/16 :goto_1

    .line 2083
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    .restart local v6       #token:Lcom/android/server/wm/WindowToken;
    .restart local v11       #addToken:Z
    .restart local v21       #win:Lcom/android/server/wm/WindowState;
    :cond_9
    :try_start_4
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_c

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x63

    if-gt v3, v4, :cond_c

    .line 2085
    iget-object v12, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 2086
    .local v12, atoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v12, :cond_a

    .line 2087
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add window with non-application token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    const/4 v3, -0x3

    monitor-exit v22

    goto/16 :goto_0

    .line 2090
    :cond_a
    iget-boolean v3, v12, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v3, :cond_b

    .line 2091
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add window with exiting application token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    const/4 v3, -0x4

    monitor-exit v22

    goto/16 :goto_0

    .line 2095
    :cond_b
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    iget-boolean v3, v12, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v3, :cond_8

    .line 2099
    const/4 v3, -0x6

    monitor-exit v22

    goto/16 :goto_0

    .line 2101
    .end local v12           #atoken:Lcom/android/server/wm/AppWindowToken;
    :cond_c
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v3, v4, :cond_d

    .line 2102
    iget v3, v6, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v4, 0x7db

    if-eq v3, v4, :cond_8

    .line 2103
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add input method window with bad token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    const/4 v3, -0x1

    monitor-exit v22

    goto/16 :goto_0

    .line 2107
    :cond_d
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_8

    .line 2108
    iget v3, v6, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v4, 0x7dd

    if-eq v3, v4, :cond_8

    .line 2109
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add wallpaper window with bad token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    const/4 v3, -0x1

    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 2125
    .end local v21           #win:Lcom/android/server/wm/WindowState;
    .restart local v2       #win:Lcom/android/server/wm/WindowState;
    :cond_e
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy;->adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V

    .line 2127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p4

    invoke-interface {v3, v2, v0}, Landroid/view/WindowManagerPolicy;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v20

    .line 2128
    if-eqz v20, :cond_f

    .line 2129
    monitor-exit v22

    move/from16 v3, v20

    goto/16 :goto_0

    .line 2132
    :cond_f
    if-eqz p7, :cond_10

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_10

    .line 2134
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->makeInputChannelName()Ljava/lang/String;

    move-result-object v16

    .line 2135
    .local v16, name:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v15

    .line 2136
    .local v15, inputChannels:[Landroid/view/InputChannel;
    const/4 v3, 0x0

    aget-object v3, v15, v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowState;->setInputChannel(Landroid/view/InputChannel;)V

    .line 2137
    const/4 v3, 0x1

    aget-object v3, v15, v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/view/InputChannel;->transferTo(Landroid/view/InputChannel;)V

    .line 2139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/InputManager;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/wm/InputWindowHandle;)V

    .line 2144
    .end local v15           #inputChannels:[Landroid/view/InputChannel;
    .end local v16           #name:Ljava/lang/String;
    :cond_10
    const/16 v20, 0x0

    .line 2146
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 2148
    .local v17, origId:J
    if-eqz v11, :cond_11

    .line 2149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2151
    :cond_11
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->attach()V

    .line 2152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2154
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_12

    iget-object v3, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_12

    .line 2156
    iget-object v3, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v2, v3, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 2159
    :cond_12
    const/4 v14, 0x1

    .line 2161
    .local v14, imMayMove:Z
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v3, v4, :cond_1c

    .line 2162
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 2163
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->addInputMethodWindowToListLocked(Lcom/android/server/wm/WindowState;)V

    .line 2164
    const/4 v14, 0x0

    .line 2180
    :cond_13
    :goto_2
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mEnterAnimationPending:Z

    .line 2182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-interface {v3, v0, v1}, Landroid/view/WindowManagerPolicy;->getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V

    .line 2184
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    if-eqz v3, :cond_14

    .line 2185
    or-int/lit8 v20, v20, 0x1

    .line 2187
    :cond_14
    if-eqz v2, :cond_15

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_15

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-nez v3, :cond_16

    .line 2188
    :cond_15
    or-int/lit8 v20, v20, 0x2

    .line 2191
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v3}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 2193
    const/4 v13, 0x0

    .line 2194
    .local v13, focusChanged:Z
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2195
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v13

    .line 2197
    if-eqz v13, :cond_17

    .line 2198
    const/4 v14, 0x0

    .line 2202
    :cond_17
    if-eqz v14, :cond_18

    .line 2203
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 2206
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 2212
    if-eqz v13, :cond_19

    .line 2213
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/wm/WindowManagerService;->finishUpdateFocusedWindowAfterAssignLayersLocked(Z)V

    .line 2215
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2221
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2222
    const/16 v19, 0x1

    .line 2224
    :cond_1a
    monitor-exit v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2226
    if-eqz v19, :cond_1b

    .line 2227
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    .line 2230
    :cond_1b
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v3, v20

    .line 2232
    goto/16 :goto_0

    .line 2165
    .end local v13           #focusChanged:Z
    :cond_1c
    :try_start_6
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dc

    if-ne v3, v4, :cond_1d

    .line 2166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2167
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 2168
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustInputMethodDialogsLocked()V

    .line 2169
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 2171
    :cond_1d
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 2172
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_1e

    .line 2173
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J

    .line 2174
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    goto/16 :goto_2

    .line 2175
    :cond_1e
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x10

    and-int/2addr v3, v4

    if-eqz v3, :cond_13

    .line 2176
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_2
.end method

.method public addWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 5806
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5807
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5808
    monitor-exit v1

    .line 5809
    return-void

    .line 5808
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addWindowToken(Landroid/os/IBinder;I)V
    .locals 5
    .parameter "token"
    .parameter "type"

    .prologue
    .line 3203
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "addWindowToken()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3205
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3208
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3209
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .line 3210
    .local v0, wtoken:Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_1

    .line 3211
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add existing input method token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3212
    monitor-exit v2

    .line 3220
    :goto_0
    return-void

    .line 3214
    :cond_1
    new-instance v0, Lcom/android/server/wm/WindowToken;

    .end local v0           #wtoken:Lcom/android/server/wm/WindowToken;
    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZ)V

    .line 3215
    .restart local v0       #wtoken:Lcom/android/server/wm/WindowToken;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3216
    const/16 v1, 0x7dd

    if-ne p2, v1, :cond_2

    .line 3217
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3219
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0           #wtoken:Lcom/android/server/wm/WindowToken;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method adjustInputMethodDialogsLocked()V
    .locals 1

    .prologue
    .line 1489
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 1490
    return-void
.end method

.method adjustWallpaperWindowsLocked()I
    .locals 31

    .prologue
    .line 1510
    const/4 v4, 0x0

    .line 1512
    .local v4, changed:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    .line 1513
    .local v8, dw:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    .line 1517
    .local v7, dh:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 1518
    .local v13, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1519
    .local v3, N:I
    const/16 v25, 0x0

    .line 1520
    .local v25, w:Lcom/android/server/wm/WindowState;
    const/4 v11, 0x0

    .line 1521
    .local v11, foundW:Lcom/android/server/wm/WindowState;
    const/4 v10, 0x0

    .line 1522
    .local v10, foundI:I
    const/16 v22, 0x0

    .line 1523
    .local v22, topCurW:Lcom/android/server/wm/WindowState;
    const/16 v21, 0x0

    .line 1524
    .local v21, topCurI:I
    const/16 v28, -0x1

    .line 1525
    .local v28, windowDetachedI:I
    move v12, v3

    .line 1526
    .local v12, i:I
    :cond_0
    :goto_0
    if-lez v12, :cond_5

    .line 1527
    add-int/lit8 v12, v12, -0x1

    .line 1528
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    .end local v25           #w:Lcom/android/server/wm/WindowState;
    check-cast v25, Lcom/android/server/wm/WindowState;

    .line 1529
    .restart local v25       #w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v29, v0

    const/16 v30, 0x7dd

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    .line 1530
    if-nez v22, :cond_0

    .line 1531
    move-object/from16 v22, v25

    .line 1532
    move/from16 v21, v12

    goto :goto_0

    .line 1536
    :cond_1
    const/16 v22, 0x0

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_2

    .line 1540
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-eqz v29, :cond_0

    .line 1549
    :cond_2
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v29, v0

    const/high16 v30, 0x10

    and-int v29, v29, v30

    if-eqz v29, :cond_7

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v29

    if-eqz v29, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_3

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    move/from16 v29, v0

    if-nez v29, :cond_7

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    move/from16 v29, v0

    if-nez v29, :cond_7

    .line 1554
    :cond_3
    move-object/from16 v11, v25

    .line 1555
    move v10, v12

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_5

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_4

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-nez v29, :cond_0

    :cond_4
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-nez v29, :cond_0

    .line 1572
    :cond_5
    if-nez v11, :cond_6

    if-ltz v28, :cond_6

    .line 1575
    move-object/from16 v11, v25

    .line 1576
    move/from16 v10, v28

    .line 1579
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_9

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    if-eqz v29, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_8

    .line 1591
    const/16 v29, 0x0

    .line 1822
    :goto_1
    return v29

    .line 1567
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 1568
    move/from16 v28, v12

    goto/16 :goto_0

    .line 1593
    :cond_8
    if-eqz v11, :cond_9

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_9

    .line 1596
    const/16 v29, 0x0

    goto :goto_1

    .line 1600
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    if-eq v0, v11, :cond_19

    .line 1606
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1607
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    .line 1610
    .local v19, oldW:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1614
    if-eqz v11, :cond_d

    if-eqz v19, :cond_d

    .line 1615
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-nez v29, :cond_a

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_16

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-eqz v29, :cond_16

    :cond_a
    const/16 v16, 0x1

    .line 1617
    .local v16, oldAnim:Z
    :goto_2
    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-nez v29, :cond_b

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_17

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-eqz v29, :cond_17

    :cond_b
    const/4 v9, 0x1

    .line 1623
    .local v9, foundAnim:Z
    :goto_3
    if-eqz v9, :cond_d

    if-eqz v16, :cond_d

    .line 1624
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v17

    .line 1628
    .local v17, oldI:I
    if-ltz v17, :cond_d

    .line 1636
    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_c

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    move/from16 v29, v0

    if-eqz v29, :cond_c

    .line 1640
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1646
    :cond_c
    move/from16 v0, v17

    if-le v10, v0, :cond_18

    .line 1651
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1652
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1653
    move-object/from16 v11, v19

    .line 1654
    move/from16 v10, v17

    .line 1684
    .end local v9           #foundAnim:Z
    .end local v16           #oldAnim:Z
    .end local v17           #oldI:I
    .end local v19           #oldW:Lcom/android/server/wm/WindowState;
    :cond_d
    :goto_4
    if-eqz v11, :cond_1f

    const/16 v24, 0x1

    .line 1685
    .local v24, visible:Z
    :goto_5
    if-eqz v24, :cond_f

    .line 1688
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowManagerService;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v24

    .line 1694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    if-nez v29, :cond_20

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_20

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    move/from16 v29, v0

    :goto_6
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    .line 1698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Landroid/view/WindowManagerPolicy;->getMaxWallpaperLayer()I

    move-result v29

    move/from16 v0, v29

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v29, v0

    move/from16 v0, v29

    add-int/lit16 v15, v0, 0x3e8

    .line 1706
    .local v15, maxLayer:I
    :goto_7
    if-lez v10, :cond_f

    .line 1707
    add-int/lit8 v29, v10, -0x1

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/WindowState;

    .line 1708
    .local v27, wb:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v0, v15, :cond_21

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    if-eq v0, v11, :cond_21

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    if-eqz v29, :cond_e

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_21

    :cond_e
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_f

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_f

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v29, v0

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_21

    .line 1725
    .end local v15           #maxLayer:I
    .end local v27           #wb:Lcom/android/server/wm/WindowState;
    :cond_f
    if-nez v11, :cond_22

    if-eqz v22, :cond_22

    .line 1728
    move-object/from16 v11, v22

    .line 1729
    add-int/lit8 v10, v21, 0x1

    .line 1736
    :goto_8
    if-eqz v24, :cond_11

    .line 1737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-ltz v29, :cond_10

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    .line 1741
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-ltz v29, :cond_11

    .line 1742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    .line 1749
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1750
    .local v5, curTokenIndex:I
    :cond_12
    if-lez v5, :cond_28

    .line 1751
    add-int/lit8 v5, v5, -0x1

    .line 1752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/WindowToken;

    .line 1753
    .local v20, token:Lcom/android/server/wm/WindowToken;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v24

    if-ne v0, v1, :cond_13

    .line 1754
    or-int/lit8 v4, v4, 0x4

    .line 1755
    if-nez v24, :cond_24

    const/16 v29, 0x1

    :goto_9
    move/from16 v0, v29

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 1758
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 1761
    :cond_13
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1762
    .local v6, curWallpaperIndex:I
    :goto_a
    if-lez v6, :cond_12

    .line 1763
    add-int/lit8 v6, v6, -0x1

    .line 1764
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/WindowState;

    .line 1766
    .local v26, wallpaper:Lcom/android/server/wm/WindowState;
    if-eqz v24, :cond_14

    .line 1767
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v29

    invoke-virtual {v0, v1, v8, v7, v2}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 1772
    :cond_14
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v24

    if-eq v0, v1, :cond_15

    .line 1773
    move/from16 v0, v24

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    .line 1778
    :try_start_0
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1783
    :cond_15
    :goto_b
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    move/from16 v30, v0

    add-int v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    .line 1789
    move-object/from16 v0, v26

    if-ne v0, v11, :cond_26

    .line 1790
    add-int/lit8 v10, v10, -0x1

    .line 1791
    if-lez v10, :cond_25

    add-int/lit8 v29, v10, -0x1

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/WindowState;

    move-object/from16 v11, v29

    .line 1793
    :goto_c
    goto :goto_a

    .line 1615
    .end local v5           #curTokenIndex:I
    .end local v6           #curWallpaperIndex:I
    .end local v20           #token:Lcom/android/server/wm/WindowToken;
    .end local v24           #visible:Z
    .end local v26           #wallpaper:Lcom/android/server/wm/WindowState;
    .restart local v19       #oldW:Lcom/android/server/wm/WindowState;
    :cond_16
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1617
    .restart local v16       #oldAnim:Z
    :cond_17
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 1660
    .restart local v9       #foundAnim:Z
    .restart local v17       #oldI:I
    :cond_18
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1661
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto/16 :goto_4

    .line 1667
    .end local v9           #foundAnim:Z
    .end local v16           #oldAnim:Z
    .end local v17           #oldI:I
    .end local v19           #oldW:Lcom/android/server/wm/WindowState;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    if-eqz v29, :cond_d

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-nez v29, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1d

    :cond_1a
    const/4 v14, 0x1

    .line 1672
    .local v14, lowerAnimating:Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-nez v29, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1e

    :cond_1b
    const/16 v23, 0x1

    .line 1675
    .local v23, upperAnimating:Z
    :goto_e
    if-eqz v14, :cond_1c

    if-nez v23, :cond_d

    .line 1679
    :cond_1c
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1680
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto/16 :goto_4

    .line 1669
    .end local v14           #lowerAnimating:Z
    .end local v23           #upperAnimating:Z
    :cond_1d
    const/4 v14, 0x0

    goto :goto_d

    .line 1672
    .restart local v14       #lowerAnimating:Z
    :cond_1e
    const/16 v23, 0x0

    goto :goto_e

    .line 1684
    .end local v14           #lowerAnimating:Z
    :cond_1f
    const/16 v24, 0x0

    goto/16 :goto_5

    .line 1694
    .restart local v24       #visible:Z
    :cond_20
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 1718
    .restart local v15       #maxLayer:I
    .restart local v27       #wb:Lcom/android/server/wm/WindowState;
    :cond_21
    move-object/from16 v11, v27

    .line 1719
    add-int/lit8 v10, v10, -0x1

    .line 1720
    goto/16 :goto_7

    .line 1733
    .end local v15           #maxLayer:I
    .end local v27           #wb:Lcom/android/server/wm/WindowState;
    :cond_22
    if-lez v10, :cond_23

    add-int/lit8 v29, v10, -0x1

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/WindowState;

    move-object/from16 v11, v29

    :goto_f
    goto/16 :goto_8

    :cond_23
    const/4 v11, 0x0

    goto :goto_f

    .line 1755
    .restart local v5       #curTokenIndex:I
    .restart local v20       #token:Lcom/android/server/wm/WindowToken;
    :cond_24
    const/16 v29, 0x0

    goto/16 :goto_9

    .line 1791
    .restart local v6       #curWallpaperIndex:I
    .restart local v26       #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_25
    const/4 v11, 0x0

    goto/16 :goto_c

    .line 1799
    :cond_26
    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v18

    .line 1800
    .local v18, oldIndex:I
    if-ltz v18, :cond_27

    .line 1803
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1804
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1805
    move/from16 v0, v18

    if-ge v0, v10, :cond_27

    .line 1806
    add-int/lit8 v10, v10, -0x1

    .line 1816
    :cond_27
    move-object/from16 v0, v26

    invoke-virtual {v13, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1817
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1818
    or-int/lit8 v4, v4, 0x2

    .line 1819
    goto/16 :goto_a

    .end local v6           #curWallpaperIndex:I
    .end local v18           #oldIndex:I
    .end local v20           #token:Lcom/android/server/wm/WindowToken;
    .end local v26           #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_28
    move/from16 v29, v4

    .line 1822
    goto/16 :goto_1

    .line 1779
    .restart local v6       #curWallpaperIndex:I
    .restart local v20       #token:Lcom/android/server/wm/WindowToken;
    .restart local v26       #wallpaper:Lcom/android/server/wm/WindowState;
    :catch_0
    move-exception v29

    goto/16 :goto_b
.end method

.method applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z
    .locals 5
    .parameter "win"
    .parameter "transit"
    .parameter "isEntrance"

    .prologue
    const/4 v3, 0x1

    .line 2964
    iget-boolean v4, p1, Lcom/android/server/wm/WindowState;->mLocalAnimating:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p1, Lcom/android/server/wm/WindowState;->mAnimationIsEntrance:Z

    if-ne v4, p3, :cond_1

    .line 3019
    :cond_0
    :goto_0
    return v3

    .line 2974
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2975
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4, p1, p2}, Landroid/view/WindowManagerPolicy;->selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v1

    .line 2976
    .local v1, anim:I
    const/4 v2, -0x1

    .line 2977
    .local v2, attr:I
    const/4 v0, 0x0

    .line 2978
    .local v0, a:Landroid/view/animation/Animation;
    if-eqz v1, :cond_4

    .line 2979
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3003
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 3012
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3013
    iput-boolean p3, p1, Lcom/android/server/wm/WindowState;->mAnimationIsEntrance:Z

    .line 3019
    .end local v0           #a:Landroid/view/animation/Animation;
    .end local v1           #anim:I
    .end local v2           #attr:I
    :cond_3
    :goto_2
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 2981
    .restart local v0       #a:Landroid/view/animation/Animation;
    .restart local v1       #anim:I
    .restart local v2       #attr:I
    :cond_4
    sparse-switch p2, :sswitch_data_0

    .line 2995
    :goto_3
    if-ltz v2, :cond_2

    .line 2996
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v4, v2}, Lcom/android/server/wm/WindowManagerService;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1

    .line 2983
    :sswitch_0
    const/4 v2, 0x0

    .line 2984
    goto :goto_3

    .line 2986
    :sswitch_1
    const/4 v2, 0x1

    .line 2987
    goto :goto_3

    .line 2989
    :sswitch_2
    const/4 v2, 0x2

    .line 2990
    goto :goto_3

    .line 2992
    :sswitch_3
    const/4 v2, 0x3

    goto :goto_3

    .line 3016
    .end local v0           #a:Landroid/view/animation/Animation;
    .end local v1           #anim:I
    .end local v2           #attr:I
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->clearAnimation()V

    goto :goto_2

    .line 2981
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
        0x2004 -> :sswitch_3
    .end sparse-switch
.end method

.method applyEnterAnimationLocked(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .parameter "win"

    .prologue
    .line 2953
    const/16 v0, 0x1003

    .line 2954
    .local v0, transit:I
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mEnterAnimationPending:Z

    if-eqz v1, :cond_0

    .line 2955
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mEnterAnimationPending:Z

    .line 2956
    const/16 v0, 0x1001

    .line 2959
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    .line 2960
    return-void
.end method

.method public canStatusBarHide()Z
    .locals 1

    .prologue
    .line 7173
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->canStatusBarHide()Z

    move-result v0

    return v0
.end method

.method checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "permission"
    .parameter "func"

    .prologue
    const/4 v1, 0x1

    .line 3178
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 3191
    :cond_0
    :goto_0
    return v1

    .line 3182
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 3186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3190
    .local v0, msg:Ljava/lang/String;
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    const/4 v1, 0x0

    goto :goto_0
.end method

.method checkDrawnWindowsLocked()V
    .locals 7

    .prologue
    const/16 v6, 0x18

    .line 8897
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 8898
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, j:I
    :goto_0
    if-ltz v0, :cond_3

    .line 8899
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 8900
    .local v1, pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 8904
    .local v2, win:Lcom/android/server/wm/WindowState;
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v3

    if-nez v3, :cond_2

    .line 8907
    :cond_0
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aborted waiting for drawn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8909
    :try_start_0
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/os/IRemoteCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8912
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8913
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v6, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 8898
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8914
    :cond_2
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    if-eqz v3, :cond_1

    .line 8917
    :try_start_1
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/os/IRemoteCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8920
    :goto_3
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8921
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v6, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    goto :goto_2

    .line 8925
    .end local v0           #j:I
    .end local v1           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :cond_3
    return-void

    .line 8918
    .restart local v0       #j:I
    .restart local v1       #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    .restart local v2       #win:Lcom/android/server/wm/WindowState;
    :catch_0
    move-exception v3

    goto :goto_3

    .line 8910
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public clearForcedDisplaySize()V
    .locals 4

    .prologue
    .line 7165
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 7166
    :try_start_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(II)V

    .line 7167
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "display_size_forced"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7169
    monitor-exit v1

    .line 7170
    return-void

    .line 7169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 4
    .parameter "reason"

    .prologue
    .line 4652
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 4653
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 4654
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 4655
    .local v1, w:Lcom/android/server/wm/WindowState;
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 4657
    :try_start_1
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2, p1}, Landroid/view/IWindow;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4653
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4662
    .end local v1           #w:Lcom/android/server/wm/WindowState;
    :cond_1
    :try_start_2
    monitor-exit v3

    .line 4663
    return-void

    .line 4662
    .end local v0           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 4658
    .restart local v0       #i:I
    .restart local v1       #w:Lcom/android/server/wm/WindowState;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method computeForcedAppOrientationLocked()I
    .locals 2

    .prologue
    .line 3529
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getOrientationFromWindowsLocked()I

    move-result v0

    .line 3530
    .local v0, req:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3531
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getOrientationFromAppTokensLocked()I

    move-result v0

    .line 3533
    :cond_0
    return v0
.end method

.method public computeNewConfiguration()Landroid/content/res/Configuration;
    .locals 3

    .prologue
    .line 5879
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 5880
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked()Landroid/content/res/Configuration;

    move-result-object v0

    .line 5881
    .local v0, config:Landroid/content/res/Configuration;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-eqz v1, :cond_0

    .line 5883
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 5884
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 5886
    :cond_0
    monitor-exit v2

    return-object v0

    .line 5887
    .end local v0           #config:Landroid/content/res/Configuration;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method computeNewConfigurationLocked()Landroid/content/res/Configuration;
    .locals 2

    .prologue
    .line 5891
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 5892
    .local v0, config:Landroid/content/res/Configuration;
    const/4 v1, 0x0

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 5893
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5894
    const/4 v0, 0x0

    .line 5896
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_0
    return-object v0
.end method

.method computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z
    .locals 17
    .parameter "config"

    .prologue
    .line 6045
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-nez v1, :cond_0

    .line 6046
    const/4 v1, 0x0

    .line 6141
    :goto_0
    return v1

    .line 6049
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/InputManager;->getInputConfiguration(Landroid/content/res/Configuration;)V

    .line 6052
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    const/4 v5, 0x3

    if-ne v1, v5, :cond_6

    :cond_1
    const/4 v2, 0x1

    .line 6054
    .local v2, rotated:Z
    :goto_1
    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    .line 6055
    .local v15, realdw:I
    :goto_2
    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    .line 6057
    .local v14, realdh:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 6058
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    if-eqz v1, :cond_a

    .line 6059
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .line 6060
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    .line 6061
    if-le v15, v14, :cond_9

    .line 6063
    int-to-float v1, v14

    const v6, 0x3fa66666

    div-float/2addr v1, v6

    float-to-int v12, v1

    .line 6064
    .local v12, maxw:I
    if-ge v12, v15, :cond_2

    .line 6065
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .line 6078
    .end local v12           #maxw:I
    :cond_2
    :goto_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6080
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .line 6081
    .local v3, dw:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    .line 6083
    .local v4, dh:I
    const/4 v13, 0x3

    .line 6084
    .local v13, orientation:I
    if-ge v3, v4, :cond_b

    .line 6085
    const/4 v13, 0x1

    .line 6089
    :cond_3
    :goto_5
    move-object/from16 v0, p1

    iput v13, v0, Landroid/content/res/Configuration;->orientation:I

    .line 6092
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v1, v5, v6, v0}, Landroid/view/Display;->getMetricsWithSize(Landroid/util/DisplayMetrics;II)V

    .line 6095
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 6096
    .local v9, dm:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v1, v3, v4, v5}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(III)I

    move-result v8

    .line 6097
    .local v8, appWidth:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v1, v3, v4, v5}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(III)I

    move-result v7

    .line 6098
    .local v7, appHeight:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 6099
    :try_start_1
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    .line 6100
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    .line 6101
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6106
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    invoke-virtual {v1, v9, v5, v6}, Landroid/view/Display;->getMetricsWithSize(Landroid/util/DisplayMetrics;II)V

    .line 6108
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v9, v1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    .line 6111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v1, v3, v4, v5}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(III)I

    move-result v1

    int-to-float v1, v1

    iget v5, v9, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v5

    float-to-int v1, v1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 6113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v1, v3, v4, v5}, Landroid/view/WindowManagerPolicy;->getConfigDisplayHeight(III)I

    move-result v1

    int-to-float v1, v1

    iget v5, v9, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v5

    float-to-int v1, v1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 6115
    iget v5, v9, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->computeSmallestWidthAndScreenLayout(ZIIFLandroid/content/res/Configuration;)V

    .line 6117
    move-object/from16 v0, p1

    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    div-float/2addr v1, v5

    float-to-int v1, v1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 6118
    move-object/from16 v0, p1

    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    div-float/2addr v1, v5

    float-to-int v1, v1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 6119
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v3, v4}, Lcom/android/server/wm/WindowManagerService;->computeCompatSmallestWidth(ZLandroid/util/DisplayMetrics;II)I

    move-result v1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 6122
    move-object/from16 v0, p1

    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v5, 0x1

    if-eq v1, v5, :cond_c

    const/4 v10, 0x1

    .line 6123
    .local v10, hardKeyboardAvailable:Z
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    if-eq v10, v1, :cond_4

    .line 6124
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    .line 6125
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    .line 6127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x16

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 6128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x16

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 6130
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    if-nez v1, :cond_5

    .line 6131
    const/4 v1, 0x1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->keyboard:I

    .line 6137
    :cond_5
    const/4 v1, 0x1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 6138
    const/4 v1, 0x1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 6139
    const/4 v1, 0x1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 6140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Landroid/view/WindowManagerPolicy;->adjustConfigurationLw(Landroid/content/res/Configuration;)V

    .line 6141
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 6052
    .end local v2           #rotated:Z
    .end local v3           #dw:I
    .end local v4           #dh:I
    .end local v7           #appHeight:I
    .end local v8           #appWidth:I
    .end local v9           #dm:Landroid/util/DisplayMetrics;
    .end local v10           #hardKeyboardAvailable:Z
    .end local v13           #orientation:I
    .end local v14           #realdh:I
    .end local v15           #realdw:I
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 6054
    .restart local v2       #rotated:Z
    :cond_7
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    goto/16 :goto_2

    .line 6055
    .restart local v15       #realdw:I
    :cond_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    goto/16 :goto_3

    .line 6069
    .restart local v14       #realdh:I
    :cond_9
    int-to-float v1, v15

    const v6, 0x3fa66666

    div-float/2addr v1, v6

    float-to-int v11, v1

    .line 6070
    .local v11, maxh:I
    if-ge v11, v14, :cond_2

    .line 6071
    :try_start_2
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    goto/16 :goto_4

    .line 6078
    .end local v11           #maxh:I
    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 6075
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .line 6076
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 6086
    .restart local v3       #dw:I
    .restart local v4       #dh:I
    .restart local v13       #orientation:I
    :cond_b
    if-le v3, v4, :cond_3

    .line 6087
    const/4 v13, 0x2

    goto/16 :goto_5

    .line 6101
    .restart local v7       #appHeight:I
    .restart local v8       #appWidth:I
    .restart local v9       #dm:Landroid/util/DisplayMetrics;
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 6122
    :cond_c
    const/4 v10, 0x0

    goto :goto_6
.end method

.method createWatermark()V
    .locals 9

    .prologue
    .line 9345
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v6, :cond_1

    .line 9371
    :cond_0
    :goto_0
    return-void

    .line 9349
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v6, "/system/etc/setup.conf"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9350
    .local v0, file:Ljava/io/File;
    const/4 v1, 0x0

    .line 9352
    .local v1, in:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 9353
    .end local v1           #in:Ljava/io/FileInputStream;
    .local v2, in:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 9354
    .local v3, ind:Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 9355
    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 9356
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 9357
    .local v5, toks:[Ljava/lang/String;
    if-eqz v5, :cond_2

    array-length v6, v5

    if-lez v6, :cond_2

    .line 9358
    new-instance v6, Lcom/android/server/wm/Watermark;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v6, v7, v8, v5}, Lcom/android/server/wm/Watermark;-><init>(Landroid/util/DisplayMetrics;Landroid/view/SurfaceSession;[Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 9364
    .end local v5           #toks:[Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_4

    .line 9366
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 9368
    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_0

    .line 9367
    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_0
    move-exception v6

    move-object v1, v2

    .line 9368
    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_0

    .line 9361
    .end local v3           #ind:Ljava/io/DataInputStream;
    .end local v4           #line:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 9364
    :goto_1
    if-eqz v1, :cond_0

    .line 9366
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 9367
    :catch_2
    move-exception v6

    goto :goto_0

    .line 9362
    :catch_3
    move-exception v6

    .line 9364
    :goto_2
    if-eqz v1, :cond_0

    .line 9366
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 9367
    :catch_4
    move-exception v6

    goto :goto_0

    .line 9364
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v1, :cond_3

    .line 9366
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 9368
    :cond_3
    :goto_4
    throw v6

    .line 9367
    :catch_5
    move-exception v7

    goto :goto_4

    .line 9364
    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_3

    .line 9362
    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_6
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_2

    .line 9361
    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_7
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v3       #ind:Ljava/io/DataInputStream;
    .restart local v4       #line:Ljava/lang/String;
    :cond_4
    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public detectSafeMode()Z
    .locals 3

    .prologue
    .line 6453
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/InputMonitor;->waitForInputDevicesReady(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6455
    const-string v0, "WindowManager"

    const-string v1, "Devices still not ready after waiting 1000 milliseconds before attempting to detect safe mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6460
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->detectSafeMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    .line 6461
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    return v0
.end method

.method public disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .parameter "token"
    .parameter "tag"

    .prologue
    .line 4572
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 4574
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4577
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v1

    .line 4578
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v0, p1, p2}, Landroid/os/TokenWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 4579
    monitor-exit v1

    .line 4580
    return-void

    .line 4579
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dismissKeyguard()V
    .locals 2

    .prologue
    .line 4642
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 4644
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4646
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 4647
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->dismissKeyguardLw()V

    .line 4648
    monitor-exit v1

    .line 4649
    return-void

    .line 4648
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public displayReady()V
    .locals 10

    .prologue
    .line 6465
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 6466
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    .line 6467
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Display already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6489
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6469
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 6470
    .local v8, wm:Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    .line 6471
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6472
    :try_start_2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRawWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    .line 6473
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRawHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    .line 6474
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 6475
    .local v6, rot:I
    const/4 v0, 0x1

    if-eq v6, v0, :cond_1

    const/4 v0, 0x3

    if-ne v6, v0, :cond_2

    .line 6478
    :cond_1
    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    .line 6479
    .local v7, tmp:I
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    .line 6480
    iput v7, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    .line 6482
    .end local v7           #tmp:I
    :cond_2
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    .line 6483
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    .line 6484
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6485
    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRawWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRawHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRawExternalWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRawExternalHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/InputManager;->setDisplaySize(IIIII)V

    .line 6488
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->setInitialDisplaySize(II)V

    .line 6489
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6492
    :try_start_4
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 6496
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 6497
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->readForcedDisplaySizeLocked()V

    .line 6498
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 6499
    return-void

    .line 6484
    .end local v6           #rot:I
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 6498
    .restart local v6       #rot:I
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 6493
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v2, 0x1

    .line 9837
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 9839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WindowManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9942
    :cond_0
    :goto_0
    return-void

    .line 9845
    :cond_1
    const/4 v6, 0x0

    .line 9847
    .local v6, dumpAll:Z
    const/4 v5, 0x0

    .line 9848
    .local v5, opti:I
    :goto_1
    array-length v0, p3

    if-ge v5, v0, :cond_2

    .line 9849
    aget-object v7, p3, v5

    .line 9850
    .local v7, opt:Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_4

    .line 9878
    .end local v7           #opt:Ljava/lang/String;
    :cond_2
    array-length v0, p3

    if-ge v5, v0, :cond_12

    .line 9879
    aget-object v3, p3, v5

    .line 9880
    .local v3, cmd:Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    .line 9881
    const-string v0, "input"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "i"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9882
    :cond_3
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/WindowManagerService;->dumpInput(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    goto :goto_0

    .line 9853
    .end local v3           #cmd:Ljava/lang/String;
    .restart local v7       #opt:Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 9854
    const-string v0, "-a"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9855
    const/4 v6, 0x1

    goto :goto_1

    .line 9856
    :cond_5
    const-string v0, "-h"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9857
    const-string v0, "Window manager dump options:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9858
    const-string v0, "  [-a] [-h] [cmd] ..."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9859
    const-string v0, "  cmd may be one of:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9860
    const-string v0, "    i[input]: input subsystem state"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9861
    const-string v0, "    p[policy]: policy state"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9862
    const-string v0, "    s[essions]: active sessions"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9863
    const-string v0, "    t[okens]: token list"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9864
    const-string v0, "    w[indows]: window list"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9865
    const-string v0, "  cmd may also be a NAME to dump windows.  NAME may"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9866
    const-string v0, "    be a partial substring in a window name, a"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9867
    const-string v0, "    Window hex object identifier, or"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9868
    const-string v0, "    \"all\" for all windows, or"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9869
    const-string v0, "    \"visible\" for the visible windows."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9870
    const-string v0, "  -a: include all available server state."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9873
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; use -h for help"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 9884
    .end local v7           #opt:Ljava/lang/String;
    .restart local v3       #cmd:Ljava/lang/String;
    :cond_7
    const-string v0, "policy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "p"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 9885
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 9886
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/WindowManagerService;->dumpPolicyLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 9887
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 9889
    :cond_9
    const-string v0, "sessions"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 9890
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 9891
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowManagerService;->dumpSessionsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    .line 9892
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 9894
    :cond_b
    const-string v0, "tokens"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "t"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 9895
    :cond_c
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 9896
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowManagerService;->dumpTokensLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    .line 9897
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 9899
    :cond_d
    const-string v0, "windows"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "w"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 9900
    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 9901
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 9902
    monitor-exit v1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    .line 9904
    :cond_f
    const-string v0, "all"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "a"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 9905
    :cond_10
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 9906
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 9907
    monitor-exit v1

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    :cond_11
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 9911
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;->dumpWindows(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad window command, or no windows match: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9913
    const-string v0, "Use -h for help."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9919
    .end local v3           #cmd:Ljava/lang/String;
    :cond_12
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/wm/WindowManagerService;->dumpInput(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    .line 9921
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 9922
    if-eqz v6, :cond_13

    .line 9923
    :try_start_5
    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9925
    :cond_13
    invoke-virtual {p0, p1, p2, p3, v6}, Lcom/android/server/wm/WindowManagerService;->dumpPolicyLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 9926
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9927
    if-eqz v6, :cond_14

    .line 9928
    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9930
    :cond_14
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/wm/WindowManagerService;->dumpSessionsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    .line 9931
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9932
    if-eqz v6, :cond_15

    .line 9933
    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9935
    :cond_15
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/wm/WindowManagerService;->dumpTokensLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    .line 9936
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9937
    if-eqz v6, :cond_16

    .line 9938
    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9940
    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v6, v0}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 9941
    monitor-exit v1

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v0
.end method

.method dumpAppTokensLocked()V
    .locals 4

    .prologue
    .line 4258
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 4259
    const-string v2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4258
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4261
    :cond_0
    return-void
.end method

.method dumpInput(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .locals 1
    .parameter "fd"
    .parameter "pw"
    .parameter "dumpAll"

    .prologue
    .line 9464
    const-string v0, "WINDOW MANAGER INPUT (dumpsys window input)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9465
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/InputManager;->dump(Ljava/io/PrintWriter;)V

    .line 9466
    return-void
.end method

.method dumpPolicyLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"
    .parameter "dumpAll"

    .prologue
    .line 9469
    const-string v0, "WINDOW MANAGER POLICY STATE (dumpsys window policy)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9470
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const-string v1, "    "

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 9471
    return-void
.end method

.method dumpSessionsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .locals 3
    .parameter "fd"
    .parameter "pw"
    .parameter "dumpAll"

    .prologue
    .line 9573
    const-string v2, "WINDOW MANAGER SESSIONS (dumpsys window sessions)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9574
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 9575
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 9576
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/Session;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9577
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Session;

    .line 9578
    .local v1, s:Lcom/android/server/wm/Session;
    const-string v2, "  Session "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v2, 0x3a

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 9579
    const-string v2, "    "

    invoke-virtual {v1, p2, v2}, Lcom/android/server/wm/Session;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    .line 9582
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/Session;>;"
    .end local v1           #s:Lcom/android/server/wm/Session;
    :cond_0
    return-void
.end method

.method dumpTokensLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "dumpAll"

    .prologue
    const/16 v5, 0x20

    const/16 v4, 0x3a

    .line 9474
    const-string v3, "WINDOW MANAGER TOKENS (dumpsys window tokens)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9475
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 9476
    const-string v3, "  All tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9477
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 9478
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/WindowToken;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9479
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 9480
    .local v2, token:Lcom/android/server/wm/WindowToken;
    const-string v3, "  Token "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9481
    if-eqz p3, :cond_0

    .line 9482
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(C)V

    .line 9483
    const-string v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    .line 9485
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    .line 9489
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/WindowToken;>;"
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 9490
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9491
    const-string v3, "  Wallpaper tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9492
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_3

    .line 9493
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 9494
    .restart local v2       #token:Lcom/android/server/wm/WindowToken;
    const-string v3, "  Wallpaper #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9495
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9496
    if-eqz p3, :cond_2

    .line 9497
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(C)V

    .line 9498
    const-string v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9492
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 9500
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_2

    .line 9504
    .end local v0           #i:I
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 9505
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9506
    const-string v3, "  Application tokens in Z order:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9507
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0       #i:I
    :goto_3
    if-ltz v0, :cond_4

    .line 9508
    const-string v3, "  App #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9509
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9507
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 9512
    .end local v0           #i:I
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 9513
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9514
    const-string v3, "  Finishing start of application tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9515
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0       #i:I
    :goto_4
    if-ltz v0, :cond_6

    .line 9516
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 9517
    .restart local v2       #token:Lcom/android/server/wm/WindowToken;
    const-string v3, "  Finished Starting #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9518
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9519
    if-eqz p3, :cond_5

    .line 9520
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(C)V

    .line 9521
    const-string v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9515
    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 9523
    :cond_5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_5

    .line 9527
    .end local v0           #i:I
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 9528
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9529
    const-string v3, "  Exiting tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9530
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0       #i:I
    :goto_6
    if-ltz v0, :cond_8

    .line 9531
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 9532
    .restart local v2       #token:Lcom/android/server/wm/WindowToken;
    const-string v3, "  Exiting #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9533
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9534
    if-eqz p3, :cond_7

    .line 9535
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(C)V

    .line 9536
    const-string v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9530
    :goto_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 9538
    :cond_7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_7

    .line 9542
    .end local v0           #i:I
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    :cond_8
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 9543
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9544
    const-string v3, "  Exiting application tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9545
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0       #i:I
    :goto_8
    if-ltz v0, :cond_a

    .line 9546
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 9547
    .restart local v2       #token:Lcom/android/server/wm/WindowToken;
    const-string v3, "  Exiting App #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9548
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9549
    if-eqz p3, :cond_9

    .line 9550
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(C)V

    .line 9551
    const-string v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9545
    :goto_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 9553
    :cond_9
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_9

    .line 9557
    .end local v0           #i:I
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    :cond_a
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9558
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 9559
    const-string v3, "  mOpeningApps="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9561
    :cond_b
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_c

    .line 9562
    const-string v3, "  mClosingApps="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9564
    :cond_c
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 9565
    const-string v3, "  mToTopApps="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9567
    :cond_d
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_e

    .line 9568
    const-string v3, "  mToBottomApps="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9570
    :cond_e
    return-void
.end method

.method dumpWindows(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "name"
    .parameter "args"
    .parameter "opti"
    .parameter "dumpAll"

    .prologue
    .line 9793
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9794
    .local v3, windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const-string v4, "visible"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9795
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 9796
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 9797
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 9798
    .local v2, w:Lcom/android/server/wm/WindowState;
    iget-boolean v4, v2, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    if-eqz v4, :cond_0

    .line 9799
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9796
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9802
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9825
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_6

    .line 9826
    const/4 v4, 0x0

    .line 9832
    :goto_2
    return v4

    .line 9802
    .end local v0           #i:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 9804
    :cond_2
    const/4 v1, 0x0

    .line 9807
    .local v1, objectId:I
    const/16 v4, 0x10

    :try_start_2
    invoke-static {p3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .line 9808
    const/4 p3, 0x0

    .line 9811
    :goto_3
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 9812
    :try_start_3
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .restart local v0       #i:I
    :goto_4
    if-ltz v0, :cond_5

    .line 9813
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 9814
    .restart local v2       #w:Lcom/android/server/wm/WindowState;
    if-eqz p3, :cond_4

    .line 9815
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9816
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9812
    :cond_3
    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 9818
    :cond_4
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v1, :cond_3

    .line 9819
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 9822
    .end local v0           #i:I
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .restart local v0       #i:I
    :cond_5
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 9829
    .end local v1           #objectId:I
    :cond_6
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 9830
    :try_start_5
    invoke-virtual {p0, p1, p2, p6, v3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 9831
    monitor-exit v5

    .line 9832
    const/4 v4, 0x1

    goto :goto_2

    .line 9831
    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    .line 9809
    .end local v0           #i:I
    .restart local v1       #objectId:I
    :catch_0
    move-exception v4

    goto :goto_3
.end method

.method dumpWindowsLocked()V
    .locals 4

    .prologue
    .line 4264
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 4265
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4264
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4267
    :cond_0
    return-void
.end method

.method dumpWindowsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .locals 7
    .parameter "fd"
    .parameter "pw"
    .parameter "dumpAll"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const/4 v4, 0x1

    const/16 v6, 0x20

    .line 9586
    const-string v3, "WINDOW MANAGER WINDOWS (dumpsys window windows)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9587
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_4

    .line 9588
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 9589
    .local v2, w:Lcom/android/server/wm/WindowState;
    if-eqz p4, :cond_0

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9590
    :cond_0
    const-string v3, "  Window #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 9591
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9592
    const-string v5, "    "

    if-nez p3, :cond_1

    if-eqz p4, :cond_3

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v2, p2, v5, v3}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 9587
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9592
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 9595
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 9596
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9597
    const-string v3, "  Input method dialogs:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9598
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_2
    if-ltz v0, :cond_7

    .line 9599
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 9600
    .restart local v2       #w:Lcom/android/server/wm/WindowState;
    if-eqz p4, :cond_5

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 9601
    :cond_5
    const-string v3, "  IM Dialog #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9598
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 9605
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_7
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 9606
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9607
    const-string v3, "  Remove pending for:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9608
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_3
    if-ltz v0, :cond_b

    .line 9609
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 9610
    .restart local v2       #w:Lcom/android/server/wm/WindowState;
    if-eqz p4, :cond_8

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 9611
    :cond_8
    const-string v3, "  Remove #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 9612
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9613
    if-eqz p3, :cond_a

    .line 9614
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9615
    const-string v3, "    "

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 9608
    :cond_9
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 9617
    :cond_a
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_4

    .line 9622
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_b
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 9623
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9624
    const-string v3, "  Windows force removing:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9625
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_5
    if-ltz v0, :cond_d

    .line 9626
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 9627
    .restart local v2       #w:Lcom/android/server/wm/WindowState;
    const-string v3, "  Removing #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 9628
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9629
    if-eqz p3, :cond_c

    .line 9630
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9631
    const-string v3, "    "

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 9625
    :goto_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 9633
    :cond_c
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_6

    .line 9637
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_d
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_11

    .line 9638
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9639
    const-string v3, "  Windows waiting to destroy their surface:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9640
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_7
    if-ltz v0, :cond_11

    .line 9641
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 9642
    .restart local v2       #w:Lcom/android/server/wm/WindowState;
    if-eqz p4, :cond_e

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 9643
    :cond_e
    const-string v3, "  Destroy #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 9644
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9645
    if-eqz p3, :cond_10

    .line 9646
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9647
    const-string v3, "    "

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 9640
    :cond_f
    :goto_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 9649
    :cond_10
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_8

    .line 9654
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_11
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_15

    .line 9655
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9656
    const-string v3, "  Windows losing focus:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9657
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_9
    if-ltz v0, :cond_15

    .line 9658
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 9659
    .restart local v2       #w:Lcom/android/server/wm/WindowState;
    if-eqz p4, :cond_12

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 9660
    :cond_12
    const-string v3, "  Losing #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 9661
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9662
    if-eqz p3, :cond_14

    .line 9663
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9664
    const-string v3, "    "

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 9657
    :cond_13
    :goto_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 9666
    :cond_14
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_a

    .line 9671
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_15
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_19

    .line 9672
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9673
    const-string v3, "  Windows waiting to resize:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9674
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_b
    if-ltz v0, :cond_19

    .line 9675
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 9676
    .restart local v2       #w:Lcom/android/server/wm/WindowState;
    if-eqz p4, :cond_16

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 9677
    :cond_16
    const-string v3, "  Resizing #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 9678
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9679
    if-eqz p3, :cond_18

    .line 9680
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9681
    const-string v3, "    "

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 9674
    :cond_17
    :goto_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 9683
    :cond_18
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_c

    .line 9688
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_19
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1a

    .line 9689
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9690
    const-string v3, "  Clients waiting for these windows to be drawn:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9691
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_d
    if-ltz v0, :cond_1a

    .line 9692
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 9693
    .local v1, pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    const-string v3, "  Waiting #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9694
    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9691
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 9697
    .end local v1           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    :cond_1a
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9698
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-eqz v3, :cond_26

    .line 9699
    const-string v3, "  Display: init="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9700
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " base="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9701
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 9702
    const-string v3, " cur="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9703
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 9704
    const-string v3, " app="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9705
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 9706
    const-string v3, " raw="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRawWidth()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 9707
    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRawHeight()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 9711
    :goto_e
    const-string v3, "  mCurConfiguration="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9712
    const-string v3, "  mCurrentFocus="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9713
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v3, v4, :cond_1b

    .line 9714
    const-string v3, "  mLastFocus="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9716
    :cond_1b
    const-string v3, "  mFocusedApp="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9717
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_1c

    .line 9718
    const-string v3, "  mInputMethodTarget="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9720
    :cond_1c
    const-string v3, "  mInTouchMode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9721
    const-string v3, " mLayoutSeq="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 9722
    if-eqz p3, :cond_25

    .line 9723
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    if-eqz v3, :cond_1d

    .line 9724
    const-string v3, "  mLastStatusBarVisibility=0x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9725
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9727
    :cond_1d
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_1e

    .line 9728
    const-string v3, "  mInputMethodWindow="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9730
    :cond_1e
    const-string v3, "  mWallpaperTarget="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9731
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_1f

    .line 9732
    const-string v3, "  mLowerWallpaperTarget="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9733
    const-string v3, "  mUpperWallpaperTarget="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9735
    :cond_1f
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_20

    .line 9736
    const-string v3, "  mWindowDetachedWallpaper="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9738
    :cond_20
    const-string v3, "  mLastWallpaperX="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 9739
    const-string v3, " mLastWallpaperY="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 9740
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    if-nez v3, :cond_21

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    if-eqz v3, :cond_22

    .line 9742
    :cond_21
    const-string v3, "  mInputMethodAnimLayerAdjustment="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9743
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 9744
    const-string v3, "  mWallpaperAnimLayerAdjustment="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9745
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 9747
    :cond_22
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-eqz v3, :cond_23

    .line 9748
    const-string v3, "  mWindowAnimationBackgroundSurface:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9749
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    const-string v4, "    "

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/DimSurface;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 9751
    :cond_23
    const-string v3, "  mSystemBooted="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9752
    const-string v3, " mDisplayEnabled="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9753
    const-string v3, "  mLayoutNeeded="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9754
    const-string v3, " mBlurShown="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mBlurShown:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9755
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-eqz v3, :cond_27

    .line 9756
    const-string v3, "  mDimAnimator:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9757
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    const-string v4, "    "

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/DimAnimator;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 9761
    :goto_f
    const-string v3, "  mDisplayFrozen="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9762
    const-string v3, " mWindowsFreezingScreen="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9763
    const-string v3, " mAppsFreezingScreen="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 9764
    const-string v3, " mWaitingForConfig="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9765
    const-string v3, "  mRotation="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 9766
    const-string v3, " mAltOrientation="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9767
    const-string v3, "  mLastWindowForcedOrientation"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 9768
    const-string v3, " mForcedAppOrientation="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 9769
    const-string v3, "  mDeferredRotationPauseCount="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 9770
    const-string v3, "  mAnimationPending="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationPending:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9771
    const-string v3, " mWindowAnimationScale="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 9772
    const-string v3, " mTransitionWindowAnimationScale="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 9773
    const-string v3, "  mNextAppTransition=0x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9774
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9775
    const-string v3, " mAppTransitionReady="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9776
    const-string v3, "  mAppTransitionRunning="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9777
    const-string v3, " mAppTransitionTimeout="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9778
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v3, :cond_24

    .line 9779
    const-string v3, "  mNextAppTransitionPackage="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9780
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9781
    const-string v3, " mNextAppTransitionEnter=0x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9782
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionEnter:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9783
    const-string v3, " mNextAppTransitionExit=0x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9784
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionExit:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9786
    :cond_24
    const-string v3, "  mStartingIconInTransition="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9787
    const-string v3, ", mSkipAppTransitionAnimation="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9789
    :cond_25
    return-void

    .line 9709
    :cond_26
    const-string v3, "  NO DISPLAY"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 9759
    :cond_27
    const-string v3, "  no DimAnimator "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_f
.end method

.method public enableScreenAfterBoot()V
    .locals 5

    .prologue
    .line 4825
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 4834
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v1, :cond_0

    .line 4835
    monitor-exit v2

    .line 4848
    :goto_0
    return-void

    .line 4837
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    .line 4838
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->hideBootMessagesLocked()V

    .line 4841
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x17

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4842
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4843
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4845
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->systemBooted()V

    .line 4847
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto :goto_0

    .line 4843
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method enableScreenIfNeededLocked()V
    .locals 3

    .prologue
    .line 4859
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_1

    .line 4866
    :cond_0
    :goto_0
    return-void

    .line 4862
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-eqz v0, :cond_0

    .line 4865
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public executeAppTransition()V
    .locals 5

    .prologue
    .line 3664
    const-string v2, "android.permission.MANAGE_APP_TOKENS"

    const-string v3, "executeAppTransition()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3666
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3669
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3676
    :try_start_0
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 3677
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    .line 3678
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3679
    .local v0, origId:J
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3680
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3682
    .end local v0           #origId:J
    :cond_1
    monitor-exit v3

    .line 3683
    return-void

    .line 3682
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 4614
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 4616
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4618
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/WindowManagerService$4;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IOnKeyguardExitResult;)V

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 4627
    return-void
.end method

.method findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    .locals 2
    .parameter "token"

    .prologue
    .line 3195
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .line 3196
    .local v0, wtoken:Lcom/android/server/wm/WindowToken;
    if-nez v0, :cond_0

    .line 3197
    const/4 v1, 0x0

    .line 3199
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    goto :goto_0
.end method

.method findDesiredInputMethodWindowIndexLocked(Z)I
    .locals 13
    .parameter "willMove"

    .prologue
    .line 1109
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 1110
    .local v5, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1111
    .local v0, N:I
    const/4 v8, 0x0

    .line 1112
    .local v8, w:Lcom/android/server/wm/WindowState;
    move v4, v0

    .line 1113
    .local v4, i:I
    :cond_0
    if-lez v4, :cond_1

    .line 1114
    add-int/lit8 v4, v4, -0x1

    .line 1115
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #w:Lcom/android/server/wm/WindowState;
    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 1119
    .restart local v8       #w:Lcom/android/server/wm/WindowState;
    invoke-static {v8}, Lcom/android/server/wm/WindowManagerService;->canBeImeTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1127
    if-nez p1, :cond_1

    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_1

    if-lez v4, :cond_1

    .line 1130
    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 1131
    .local v9, wb:Lcom/android/server/wm/WindowState;
    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v11, v12, :cond_1

    invoke-static {v9}, Lcom/android/server/wm/WindowManagerService;->canBeImeTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1132
    add-int/lit8 v4, v4, -0x1

    .line 1133
    move-object v8, v9

    .line 1148
    .end local v9           #wb:Lcom/android/server/wm/WindowState;
    :cond_1
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v11, :cond_2

    if-eqz v8, :cond_2

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-boolean v11, v11, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v11, :cond_2

    .line 1151
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget v11, v11, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget v12, v8, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    if-le v11, v12, :cond_2

    .line 1152
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 1153
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1161
    :cond_2
    if-eqz p1, :cond_9

    if-eqz v8, :cond_9

    .line 1162
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 1163
    .local v1, curTarget:Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_9

    iget-object v11, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_9

    .line 1169
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1170
    .local v7, token:Lcom/android/server/wm/AppWindowToken;
    const/4 v3, 0x0

    .line 1171
    .local v3, highestTarget:Lcom/android/server/wm/WindowState;
    const/4 v2, 0x0

    .line 1172
    .local v2, highestPos:I
    iget-boolean v11, v7, Lcom/android/server/wm/AppWindowToken;->animating:Z

    if-nez v11, :cond_3

    iget-object v11, v7, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v11, :cond_4

    .line 1173
    :cond_3
    const/4 v6, 0x0

    .line 1174
    .local v6, pos:I
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 1175
    :goto_0
    if-ltz v6, :cond_4

    .line 1176
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 1177
    .local v10, win:Lcom/android/server/wm/WindowState;
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v11, v7, :cond_5

    .line 1191
    .end local v6           #pos:I
    .end local v10           #win:Lcom/android/server/wm/WindowState;
    :cond_4
    if-eqz v3, :cond_9

    .line 1198
    iget v11, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_8

    .line 1201
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    .line 1202
    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 1203
    add-int/lit8 v11, v2, 0x1

    .line 1253
    .end local v1           #curTarget:Lcom/android/server/wm/WindowState;
    .end local v2           #highestPos:I
    .end local v3           #highestTarget:Lcom/android/server/wm/WindowState;
    .end local v7           #token:Lcom/android/server/wm/AppWindowToken;
    :goto_1
    return v11

    .line 1180
    .restart local v1       #curTarget:Lcom/android/server/wm/WindowState;
    .restart local v2       #highestPos:I
    .restart local v3       #highestTarget:Lcom/android/server/wm/WindowState;
    .restart local v6       #pos:I
    .restart local v7       #token:Lcom/android/server/wm/AppWindowToken;
    .restart local v10       #win:Lcom/android/server/wm/WindowState;
    :cond_5
    iget-boolean v11, v10, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v11, :cond_7

    .line 1181
    if-eqz v3, :cond_6

    iget v11, v10, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget v12, v3, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    if-le v11, v12, :cond_7

    .line 1183
    :cond_6
    move-object v3, v10

    .line 1184
    move v2, v6

    .line 1187
    :cond_7
    add-int/lit8 v6, v6, -0x1

    .line 1188
    goto :goto_0

    .line 1204
    .end local v6           #pos:I
    .end local v10           #win:Lcom/android/server/wm/WindowState;
    :cond_8
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v11

    if-eqz v11, :cond_9

    iget v11, v3, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget v12, v8, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    if-le v11, v12, :cond_9

    .line 1210
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    .line 1211
    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 1212
    add-int/lit8 v11, v2, 0x1

    goto :goto_1

    .line 1219
    .end local v1           #curTarget:Lcom/android/server/wm/WindowState;
    .end local v2           #highestPos:I
    .end local v3           #highestTarget:Lcom/android/server/wm/WindowState;
    .end local v7           #token:Lcom/android/server/wm/AppWindowToken;
    :cond_9
    if-eqz v8, :cond_c

    .line 1220
    if-eqz p1, :cond_a

    .line 1230
    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 1231
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    .line 1232
    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_b

    .line 1233
    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v11, v11, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    .line 1238
    :cond_a
    :goto_2
    add-int/lit8 v11, v4, 0x1

    goto :goto_1

    .line 1235
    :cond_b
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    goto :goto_2

    .line 1240
    :cond_c
    if-eqz p1, :cond_d

    .line 1250
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 1251
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    .line 1253
    :cond_d
    const/4 v11, -0x1

    goto :goto_1
.end method

.method public finishDrawingWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .locals 6
    .parameter "session"
    .parameter "client"

    .prologue
    .line 2895
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2896
    .local v0, origId:J
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 2897
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 2898
    .local v2, win:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->finishDrawingLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2899
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x10

    and-int/2addr v3, v5

    if-eqz v3, :cond_0

    .line 2900
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    .line 2902
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 2903
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2905
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2906
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2907
    return-void

    .line 2905
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public freezeRotation(I)V
    .locals 3
    .parameter "rotation"

    .prologue
    const/4 v2, -0x1

    .line 5239
    const-string v0, "android.permission.SET_ORIENTATION"

    const-string v1, "freezeRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5241
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ORIENTATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5243
    :cond_0
    if-lt p1, v2, :cond_1

    const/4 v0, 0x3

    if-le p1, v0, :cond_2

    .line 5244
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rotation argument must be -1 or a valid rotation constant."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5250
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v1, 0x1

    if-ne p1, v2, :cond_3

    iget p1, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    .end local p1
    :cond_3
    invoke-interface {v0, v1, p1}, Landroid/view/WindowManagerPolicy;->setUserRotationMode(II)V

    .line 5252
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(Z)V

    .line 5253
    return-void
.end method

.method public getAnimationScale(I)F
    .locals 1
    .parameter "which"

    .prologue
    .line 4709
    packed-switch p1, :pswitch_data_0

    .line 4713
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 4710
    :pswitch_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    goto :goto_0

    .line 4711
    :pswitch_1
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    goto :goto_0

    .line 4709
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAnimationScales()[F
    .locals 3

    .prologue
    .line 4717
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getAppOrientation(Landroid/view/IApplicationToken;)I
    .locals 3
    .parameter "token"

    .prologue
    .line 3567
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3568
    :try_start_0
    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 3569
    .local v0, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_0

    .line 3570
    const/4 v1, -0x1

    monitor-exit v2

    .line 3573
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    monitor-exit v2

    goto :goto_0

    .line 3574
    .end local v0           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDPadKeycodeState(I)I
    .locals 3
    .parameter "sw"

    .prologue
    .line 4793
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getDPadKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4795
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4797
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, 0x201

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getDPadScancodeState(I)I
    .locals 3
    .parameter "sw"

    .prologue
    .line 4761
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getDPadScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4763
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4765
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, 0x201

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getDisplaySize(Landroid/graphics/Point;)V
    .locals 2
    .parameter "size"

    .prologue
    .line 7022
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7023
    :try_start_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 7024
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 7025
    monitor-exit v1

    .line 7026
    return-void

    .line 7025
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInitialDisplaySize(Landroid/graphics/Point;)V
    .locals 2
    .parameter "size"

    .prologue
    .line 7036
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7037
    :try_start_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 7038
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 7039
    monitor-exit v1

    .line 7040
    return-void

    .line 7039
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .locals 1
    .parameter "deviceId"

    .prologue
    .line 4817
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public getInputDeviceIds()[I
    .locals 1

    .prologue
    .line 4821
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0}, Lcom/android/server/wm/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getKeycodeState(I)I
    .locals 3
    .parameter "sw"

    .prologue
    .line 4769
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4771
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4773
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getKeycodeStateForDevice(II)I
    .locals 2
    .parameter "devid"
    .parameter "sw"

    .prologue
    .line 4777
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getKeycodeStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4779
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4781
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/16 v1, -0x100

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getMaximumSizeDimension()I
    .locals 3

    .prologue
    .line 7043
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7045
    :try_start_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    goto :goto_0

    .line 7047
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOrientationFromAppTokensLocked()I
    .locals 11

    .prologue
    const/4 v9, -0x1

    const/4 v10, 0x3

    .line 3369
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .line 3370
    .local v6, pos:I
    const/4 v0, 0x0

    .line 3371
    .local v0, curGroup:I
    const/4 v4, -0x1

    .line 3372
    .local v4, lastOrientation:I
    const/4 v1, 0x0

    .line 3373
    .local v1, findingBehind:Z
    const/4 v2, 0x0

    .line 3374
    .local v2, haveGroup:Z
    const/4 v3, 0x0

    .line 3375
    .local v3, lastFullscreen:Z
    :cond_0
    :goto_0
    if-ltz v6, :cond_8

    .line 3376
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    .line 3377
    .local v7, wtoken:Lcom/android/server/wm/AppWindowToken;
    add-int/lit8 v6, v6, -0x1

    .line 3383
    if-nez v1, :cond_1

    iget-boolean v8, v7, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v8, :cond_1

    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v8, :cond_0

    .line 3390
    :cond_1
    if-nez v2, :cond_4

    .line 3392
    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v8, :cond_0

    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    if-nez v8, :cond_0

    .line 3397
    const/4 v2, 0x1

    .line 3398
    iget v0, v7, Lcom/android/server/wm/AppWindowToken;->groupId:I

    .line 3399
    iget v4, v7, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .line 3413
    :cond_2
    iget v5, v7, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .line 3417
    .local v5, or:I
    iget-boolean v3, v7, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    .line 3418
    if-eqz v3, :cond_5

    if-eq v5, v10, :cond_5

    .line 3435
    .end local v5           #or:I
    .end local v7           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_3
    :goto_1
    return v5

    .line 3400
    .restart local v7       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_4
    iget v8, v7, Lcom/android/server/wm/AppWindowToken;->groupId:I

    if-eq v0, v8, :cond_2

    .line 3406
    if-eq v4, v10, :cond_2

    if-eqz v3, :cond_2

    move v5, v4

    .line 3410
    goto :goto_1

    .line 3426
    .restart local v5       #or:I
    :cond_5
    if-eq v5, v9, :cond_6

    if-ne v5, v10, :cond_3

    .line 3432
    :cond_6
    if-ne v5, v10, :cond_7

    const/4 v8, 0x1

    :goto_2
    or-int/2addr v1, v8

    .line 3433
    goto :goto_0

    .line 3432
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .end local v5           #or:I
    .end local v7           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_8
    move v5, v9

    .line 3435
    goto :goto_1
.end method

.method public getOrientationFromWindowsLocked()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 3336
    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 3342
    :cond_0
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    .line 3365
    :goto_0
    return v1

    .line 3345
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 3346
    .local v0, pos:I
    :cond_2
    if-ltz v0, :cond_4

    .line 3347
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 3348
    .local v2, wtoken:Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    .line 3349
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_3

    .line 3352
    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    move v1, v3

    goto :goto_0

    .line 3354
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, v2, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v4, :cond_2

    .line 3357
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3358
    .local v1, req:I
    if-eq v1, v3, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    .line 3362
    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    goto :goto_0

    .line 3365
    .end local v1           #req:I
    .end local v2           #wtoken:Lcom/android/server/wm/WindowState;
    :cond_4
    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    move v1, v3

    goto :goto_0
.end method

.method public getPendingAppTransition()I
    .locals 1

    .prologue
    .line 3651
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    return v0
.end method

.method public getPreferredOptionsPanelGravity()I
    .locals 7

    .prologue
    const/16 v2, 0x55

    const/16 v3, 0x53

    const/16 v1, 0x51

    .line 5486
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 5487
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v0

    .line 5489
    .local v0, rotation:I
    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge v5, v6, :cond_0

    .line 5491
    packed-switch v0, :pswitch_data_0

    .line 5494
    monitor-exit v4

    .line 5513
    :goto_0
    return v1

    .line 5496
    :pswitch_0
    monitor-exit v4

    move v1, v2

    goto :goto_0

    .line 5498
    :pswitch_1
    monitor-exit v4

    goto :goto_0

    .line 5516
    .end local v0           #rotation:I
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5500
    .restart local v0       #rotation:I
    :pswitch_2
    :try_start_1
    monitor-exit v4

    move v1, v3

    goto :goto_0

    .line 5504
    :cond_0
    packed-switch v0, :pswitch_data_1

    .line 5507
    monitor-exit v4

    move v1, v2

    goto :goto_0

    .line 5509
    :pswitch_3
    monitor-exit v4

    goto :goto_0

    .line 5511
    :pswitch_4
    monitor-exit v4

    move v1, v3

    goto :goto_0

    .line 5513
    :pswitch_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5491
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 5504
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getRealDisplaySize(Landroid/graphics/Point;)V
    .locals 2
    .parameter "size"

    .prologue
    .line 7029
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7030
    :try_start_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 7031
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 7032
    monitor-exit v1

    .line 7033
    return-void

    .line 7032
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 5435
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    return v0
.end method

.method public getScancodeState(I)I
    .locals 3
    .parameter "sw"

    .prologue
    .line 4737
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4739
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4741
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getScancodeStateForDevice(II)I
    .locals 2
    .parameter "devid"
    .parameter "sw"

    .prologue
    .line 4745
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getScancodeStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4747
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4749
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/16 v1, -0x100

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getSwitchState(I)I
    .locals 3
    .parameter "sw"

    .prologue
    .line 4721
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getSwitchState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4723
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4725
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getSwitchState(III)I

    move-result v0

    return v0
.end method

.method public getSwitchStateForDevice(II)I
    .locals 2
    .parameter "devid"
    .parameter "sw"

    .prologue
    .line 4729
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getSwitchStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4731
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4733
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/16 v1, -0x100

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/InputManager;->getSwitchState(III)I

    move-result v0

    return v0
.end method

.method public getTrackballKeycodeState(I)I
    .locals 3
    .parameter "sw"

    .prologue
    .line 4785
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getTrackballKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4787
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4789
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const v2, 0x10004

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getTrackballScancodeState(I)I
    .locals 3
    .parameter "sw"

    .prologue
    .line 4753
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getTrackballScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4755
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4757
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const v2, 0x10004

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getWindowCompatibilityScale(Landroid/os/IBinder;)F
    .locals 3
    .parameter "windowToken"

    .prologue
    .line 2910
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2911
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 2912
    .local v0, windowState:Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 2913
    .end local v0           #windowState:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWindowDisplayFrame(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "session"
    .parameter "client"
    .parameter "outDisplayFrame"

    .prologue
    .line 2479
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2480
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2481
    .local v0, win:Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_0

    .line 2482
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 2483
    monitor-exit v2

    .line 2487
    :goto_0
    return-void

    .line 2485
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2486
    monitor-exit v2

    goto :goto_0

    .end local v0           #win:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasKeys([I[Z)Z
    .locals 3
    .parameter "keycodes"
    .parameter "keyExists"

    .prologue
    .line 4801
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/wm/InputManager;->hasKeys(II[I[Z)Z

    move-result v0

    return v0
.end method

.method public hasNavigationBar()Z
    .locals 1

    .prologue
    .line 9456
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->hasNavigationBar()Z

    move-result v0

    return v0
.end method

.method public hideBootMessagesLocked()V
    .locals 1

    .prologue
    .line 5023
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-eqz v0, :cond_0

    .line 5024
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    .line 5025
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->hideBootMessages()V

    .line 5027
    :cond_0
    return-void
.end method

.method public inKeyguardRestrictedInputMode()Z
    .locals 1

    .prologue
    .line 4630
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    return v0
.end method

.method public injectInputEventNoWait(Landroid/view/InputEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    .line 6398
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 6399
    .local v2, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 6400
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 6402
    .local v6, ident:J
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v4, 0x0

    const/16 v5, 0x7530

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v8

    .line 6406
    .local v8, result:I
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6407
    invoke-direct {p0, v8}, Lcom/android/server/wm/WindowManagerService;->reportInjectionResult(I)Z

    move-result v0

    return v0
.end method

.method public injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 25
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 6294
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    .line 6295
    .local v3, downTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    .line 6297
    .local v5, eventTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    .line 6298
    .local v7, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    .line 6299
    .local v8, code:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    .line 6300
    .local v9, repeatCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v10

    .line 6301
    .local v10, metaState:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v11

    .line 6302
    .local v11, deviceId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v12

    .line 6303
    .local v12, scancode:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v14

    .line 6304
    .local v14, source:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v21

    .line 6306
    .local v21, flags:I
    if-nez v14, :cond_0

    .line 6307
    const/16 v14, 0x101

    .line 6310
    :cond_0
    const-wide/16 v15, 0x0

    cmp-long v13, v5, v15

    if-nez v13, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 6311
    :cond_1
    const-wide/16 v15, 0x0

    cmp-long v13, v3, v15

    if-nez v13, :cond_2

    move-wide v3, v5

    .line 6313
    :cond_2
    new-instance v2, Landroid/view/KeyEvent;

    or-int/lit8 v13, v21, 0x8

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 6316
    .local v2, newEvent:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    .line 6317
    .local v17, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    .line 6318
    .local v18, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 6320
    .local v22, ident:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    if-eqz p2, :cond_3

    const/16 v19, 0x2

    :goto_0
    const/16 v20, 0x7530

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v20}, Lcom/android/server/wm/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v24

    .line 6325
    .local v24, result:I
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6326
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowManagerService;->reportInjectionResult(I)Z

    move-result v13

    return v13

    .line 6320
    .end local v24           #result:I
    :cond_3
    const/16 v19, 0x1

    goto :goto_0
.end method

.method public injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .locals 9
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 6341
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 6342
    .local v2, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 6343
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 6345
    .local v6, ident:J
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 6346
    .local v1, newEvent:Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 6347
    const/16 v0, 0x1002

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 6350
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    if-eqz p2, :cond_1

    const/4 v4, 0x2

    :goto_0
    const/16 v5, 0x7530

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v8

    .line 6355
    .local v8, result:I
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6356
    invoke-direct {p0, v8}, Lcom/android/server/wm/WindowManagerService;->reportInjectionResult(I)Z

    move-result v0

    return v0

    .line 6350
    .end local v8           #result:I
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .locals 9
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 6371
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 6372
    .local v2, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 6373
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 6375
    .local v6, ident:J
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 6376
    .local v1, newEvent:Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 6377
    const v0, 0x10004

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 6380
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    if-eqz p2, :cond_1

    const/4 v4, 0x2

    :goto_0
    const/16 v5, 0x7530

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v8

    .line 6385
    .local v8, result:I
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6386
    invoke-direct {p0, v8}, Lcom/android/server/wm/WindowManagerService;->reportInjectionResult(I)Z

    move-result v0

    return v0

    .line 6380
    .end local v8           #result:I
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    .locals 9
    .parameter "client"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 6967
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 6970
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0, v7}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v1

    .line 6972
    .local v1, idx:I
    if-lez v1, :cond_3

    .line 6973
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 6977
    .local v2, imFocus:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_3

    .line 6980
    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_0

    .line 6984
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 6985
    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 6986
    .local v3, w:Lcom/android/server/wm/WindowState;
    if-eq v3, v2, :cond_1

    .line 6988
    move-object v2, v3

    .line 6998
    .end local v0           #i:I
    .end local v3           #w:Lcom/android/server/wm/WindowState;
    :cond_0
    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v7, v7, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v7, :cond_2

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v7, v7, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v7}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    if-ne v7, v8, :cond_2

    .line 7000
    monitor-exit v6

    .line 7018
    .end local v2           #imFocus:Lcom/android/server/wm/WindowState;
    :goto_1
    return v4

    .line 6984
    .restart local v0       #i:I
    .restart local v2       #imFocus:Lcom/android/server/wm/WindowState;
    .restart local v3       #w:Lcom/android/server/wm/WindowState;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7011
    .end local v0           #i:I
    .end local v3           #w:Lcom/android/server/wm/WindowState;
    :cond_2
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v7, v7, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v7, v7, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v7}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    if-ne v7, v8, :cond_3

    .line 7013
    monitor-exit v6

    goto :goto_1

    .line 7017
    .end local v1           #idx:I
    .end local v2           #imFocus:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1       #idx:I
    :cond_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    .line 7018
    goto :goto_1
.end method

.method public isHardKeyboardAvailable()Z
    .locals 2

    .prologue
    .line 6145
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 6146
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    monitor-exit v1

    return v0

    .line 6147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isHardKeyboardEnabled()Z
    .locals 2

    .prologue
    .line 6151
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 6152
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    monitor-exit v1

    return v0

    .line 6153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 4634
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 1

    .prologue
    .line 4638
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isKeyguardSecure()Z

    move-result v0

    return v0
.end method

.method public isViewServerRunning()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 5598
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5606
    :cond_0
    :goto_0
    return v0

    .line 5602
    :cond_1
    const-string v1, "android.permission.DUMP"

    const-string v2, "isViewServerRunning"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5606
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v1}, Lcom/android/server/wm/ViewServer;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method final isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .parameter "wallpaperTarget"

    .prologue
    .line 1499
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lockNow()V
    .locals 1

    .prologue
    .line 9460
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->lockNow()V

    .line 9461
    return-void
.end method

.method logWindowList(Ljava/lang/String;)V
    .locals 4
    .parameter "prefix"

    .prologue
    .line 1338
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1339
    .local v0, N:I
    :goto_0
    if-lez v0, :cond_0

    .line 1340
    add-int/lit8 v0, v0, -0x1

    .line 1341
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1343
    :cond_0
    return-void
.end method

.method makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .parameter "w"

    .prologue
    const/16 v2, 0xb

    const/4 v1, 0x1

    .line 7544
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7547
    :cond_0
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 7548
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    if-nez v0, :cond_1

    .line 7549
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 7552
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 7553
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7557
    :cond_1
    return-void
.end method

.method public monitor()V
    .locals 2

    .prologue
    .line 9946
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9947
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9948
    return-void

    .line 9946
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 9947
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;
    .locals 2
    .parameter "inputChannelName"

    .prologue
    .line 4805
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "monitorInput()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4807
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4809
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputManager;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    return-object v0
.end method

.method public moveAppToken(ILandroid/os/IBinder;)V
    .locals 7
    .parameter "index"
    .parameter "token"

    .prologue
    .line 4365
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "moveAppToken()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4367
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4370
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 4373
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 4377
    .local v2, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4378
    :cond_1
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to reorder token that doesn\'t exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4380
    monitor-exit v4

    .line 4405
    :goto_0
    return-void

    .line 4382
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4387
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4390
    .local v0, origId:J
    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/wm/WindowToken;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4393
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v3

    invoke-direct {p0, v3, v2}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    .line 4396
    const/4 v3, 0x3

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 4398
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 4399
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v3}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 4400
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 4401
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 4403
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4404
    monitor-exit v4

    goto :goto_0

    .end local v0           #origId:J
    .end local v2           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public moveAppTokensToBottom(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v8, -0x1

    .line 4517
    const-string v6, "android.permission.MANAGE_APP_TOKENS"

    const-string v7, "moveAppTokensToBottom()"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4519
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4522
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4523
    .local v2, origId:J
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 4524
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->removeAppTokensLocked(Ljava/util/List;)V

    .line 4525
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4526
    .local v0, N:I
    const/4 v4, 0x0

    .line 4527
    .local v4, pos:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 4528
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v5

    .line 4529
    .local v5, wt:Lcom/android/server/wm/AppWindowToken;
    if-eqz v5, :cond_2

    .line 4532
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4533
    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v6, v8, :cond_1

    .line 4534
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4535
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4536
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4537
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/wm/WindowToken;->sendingToTop:Z

    .line 4538
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/wm/WindowToken;->sendingToBottom:Z

    .line 4540
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 4527
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4544
    .end local v5           #wt:Lcom/android/server/wm/AppWindowToken;
    :cond_3
    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-ne v6, v8, :cond_4

    .line 4545
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/android/server/wm/WindowManagerService;->moveAppWindowsLocked(Ljava/util/List;I)V

    .line 4547
    :cond_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4548
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4549
    return-void

    .line 4547
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v4           #pos:I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public moveAppTokensToTop(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v7, -0x1

    .line 4484
    const-string v5, "android.permission.MANAGE_APP_TOKENS"

    const-string v6, "moveAppTokensToTop()"

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4486
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4489
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4490
    .local v2, origId:J
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 4491
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->removeAppTokensLocked(Ljava/util/List;)V

    .line 4492
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4493
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4494
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v4

    .line 4495
    .local v4, wt:Lcom/android/server/wm/AppWindowToken;
    if-eqz v4, :cond_1

    .line 4498
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4499
    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v5, v7, :cond_1

    .line 4500
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4501
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4502
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4503
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/wm/WindowToken;->sendingToBottom:Z

    .line 4504
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/wm/WindowToken;->sendingToTop:Z

    .line 4493
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4509
    .end local v4           #wt:Lcom/android/server/wm/AppWindowToken;
    :cond_2
    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-ne v5, v7, :cond_3

    .line 4510
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/wm/WindowManagerService;->moveAppWindowsLocked(Ljava/util/List;I)V

    .line 4512
    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4513
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4514
    return-void

    .line 4512
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method moveInputMethodDialogsLocked(I)V
    .locals 7
    .parameter "pos"

    .prologue
    .line 1346
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    .line 1348
    .local v1, dialogs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1350
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1351
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, p1, v6}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result p1

    .line 1350
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1358
    :cond_0
    if-ltz p1, :cond_2

    .line 1359
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v3, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1360
    .local v3, targetAppToken:Lcom/android/server/wm/AppWindowToken;
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p1, v6, :cond_1

    .line 1361
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 1362
    .local v5, wp:Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v5, v6, :cond_1

    .line 1363
    add-int/lit8 p1, p1, 0x1

    .line 1367
    .end local v5           #wp:Lcom/android/server/wm/WindowState;
    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 1368
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 1369
    .local v4, win:Lcom/android/server/wm/WindowState;
    iput-object v3, v4, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1370
    invoke-direct {p0, p1, v4}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result p1

    .line 1367
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1378
    .end local v3           #targetAppToken:Lcom/android/server/wm/AppWindowToken;
    .end local v4           #win:Lcom/android/server/wm/WindowState;
    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 1379
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 1380
    .restart local v4       #win:Lcom/android/server/wm/WindowState;
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1381
    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowManagerService;->reAddWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;)V

    .line 1378
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1387
    .end local v4           #win:Lcom/android/server/wm/WindowState;
    :cond_3
    return-void
.end method

.method moveInputMethodWindowsIfNeededLocked(Z)Z
    .locals 12
    .parameter "needAssignLayers"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v9, 0x0

    .line 1390
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 1391
    .local v6, imWin:Lcom/android/server/wm/WindowState;
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1392
    .local v0, DN:I
    if-nez v6, :cond_0

    if-nez v0, :cond_0

    move v8, v9

    .line 1485
    :goto_0
    return v8

    .line 1396
    :cond_0
    invoke-virtual {p0, v10}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v5

    .line 1397
    .local v5, imPos:I
    if-ltz v5, :cond_c

    .line 1403
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1404
    .local v1, N:I
    if-ge v5, v1, :cond_1

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    move-object v4, v8

    .line 1409
    .local v4, firstImWin:Lcom/android/server/wm/WindowState;
    :cond_1
    if-eqz v6, :cond_5

    move-object v2, v6

    .line 1411
    .local v2, baseImWin:Lcom/android/server/wm/WindowState;
    :goto_1
    iget-object v8, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 1412
    iget-object v8, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 1413
    .local v3, cw:Lcom/android/server/wm/WindowState;
    iget v8, v3, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-gez v8, :cond_2

    move-object v2, v3

    .line 1416
    .end local v3           #cw:Lcom/android/server/wm/WindowState;
    :cond_2
    if-ne v4, v2, :cond_8

    .line 1419
    add-int/lit8 v7, v5, 0x1

    .line 1420
    .local v7, pos:I
    :goto_2
    if-ge v7, v1, :cond_3

    .line 1421
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v8, :cond_6

    .line 1426
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 1428
    :goto_3
    if-ge v7, v1, :cond_4

    .line 1429
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v8, :cond_7

    .line 1434
    :cond_4
    if-lt v7, v1, :cond_8

    move v8, v9

    .line 1436
    goto :goto_0

    .line 1409
    .end local v2           #baseImWin:Lcom/android/server/wm/WindowState;
    .end local v7           #pos:I
    :cond_5
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    move-object v2, v8

    goto :goto_1

    .line 1424
    .restart local v2       #baseImWin:Lcom/android/server/wm/WindowState;
    .restart local v7       #pos:I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1432
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1440
    .end local v7           #pos:I
    :cond_8
    if-eqz v6, :cond_b

    .line 1445
    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result v5

    .line 1450
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v8, v6, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1451
    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    .line 1456
    if-lez v0, :cond_9

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 1481
    .end local v1           #N:I
    .end local v2           #baseImWin:Lcom/android/server/wm/WindowState;
    .end local v4           #firstImWin:Lcom/android/server/wm/WindowState;
    :cond_9
    :goto_4
    if-eqz p1, :cond_a

    .line 1482
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    :cond_a
    move v8, v10

    .line 1485
    goto/16 :goto_0

    .line 1458
    .restart local v1       #N:I
    .restart local v2       #baseImWin:Lcom/android/server/wm/WindowState;
    .restart local v4       #firstImWin:Lcom/android/server/wm/WindowState;
    :cond_b
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_4

    .line 1465
    .end local v1           #N:I
    .end local v2           #baseImWin:Lcom/android/server/wm/WindowState;
    .end local v4           #firstImWin:Lcom/android/server/wm/WindowState;
    :cond_c
    if-eqz v6, :cond_d

    .line 1467
    invoke-direct {p0, v9, v6}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I

    .line 1468
    iput-object v4, v6, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1469
    invoke-direct {p0, v6}, Lcom/android/server/wm/WindowManagerService;->reAddWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;)V

    .line 1474
    if-lez v0, :cond_9

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_4

    .line 1476
    :cond_d
    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_4
.end method

.method notifyHardKeyboardStatusChange()V
    .locals 5

    .prologue
    .line 6175
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 6176
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;

    .line 6177
    .local v2, listener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    .line 6178
    .local v0, available:Z
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    .line 6179
    .local v1, enabled:Z
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6180
    if-eqz v2, :cond_0

    .line 6181
    invoke-interface {v2, v0, v1}, Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;->onHardKeyboardStatusChange(ZZ)V

    .line 6183
    :cond_0
    return-void

    .line 6179
    .end local v0           #available:Z
    .end local v1           #enabled:Z
    .end local v2           #listener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 829
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 830
    :catch_0
    move-exception v0

    .line 833
    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 834
    const-string v1, "WindowManager"

    const-string v2, "Window Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 836
    :cond_0
    throw v0
.end method

.method public openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;
    .locals 3
    .parameter "client"
    .parameter "inputContext"

    .prologue
    .line 6960
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null client"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6961
    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null inputContext"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6962
    :cond_1
    new-instance v0, Lcom/android/server/wm/Session;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/Session;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)V

    .line 6963
    .local v0, session:Lcom/android/server/wm/Session;
    return-object v0
.end method

.method public outOfMemoryWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Z
    .locals 6
    .parameter "session"
    .parameter "client"

    .prologue
    const/4 v3, 0x0

    .line 2879
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2882
    .local v0, origId:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2883
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 2884
    .local v2, win:Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_0

    .line 2885
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2890
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v3

    .line 2887
    :cond_0
    :try_start_2
    const-string v3, "from-client"

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v5}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z

    move-result v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2890
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2888
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2890
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public overridePendingAppTransition(Ljava/lang/String;II)V
    .locals 2
    .parameter "packageName"
    .parameter "enterAnim"
    .parameter "exitAnim"

    .prologue
    .line 3656
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3657
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 3658
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionEnter:I

    .line 3659
    iput p3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionExit:I

    .line 3661
    :cond_0
    return-void
.end method

.method public pauseKeyDispatching(Landroid/os/IBinder;)V
    .locals 3
    .parameter "_token"

    .prologue
    .line 6245
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "pauseKeyDispatching()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6247
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6250
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 6251
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .line 6252
    .local v0, token:Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_1

    .line 6253
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/InputMonitor;->pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    .line 6255
    :cond_1
    monitor-exit v2

    .line 6256
    return-void

    .line 6255
    .end local v0           #token:Lcom/android/server/wm/WindowToken;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method pauseRotationLocked()V
    .locals 1

    .prologue
    .line 5291
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    .line 5292
    return-void
.end method

.method public performBootTimeout()V
    .locals 3

    .prologue
    .line 4869
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 4870
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_0

    .line 4871
    monitor-exit v1

    .line 4877
    :goto_0
    return-void

    .line 4873
    :cond_0
    const-string v0, "WindowManager"

    const-string v2, "***** BOOT TIMEOUT: forcing display enabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4874
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    .line 4875
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4876
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto :goto_0

    .line 4875
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public performDeferredDestroyWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .locals 5
    .parameter "session"
    .parameter "client"

    .prologue
    .line 2863
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2866
    .local v0, origId:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2867
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 2868
    .local v2, win:Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_0

    .line 2869
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2874
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2876
    :goto_0
    return-void

    .line 2871
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->destroyDeferredSurfaceLocked()V

    .line 2872
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2874
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2872
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2874
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public performEnableScreen()V
    .locals 15

    .prologue
    .line 4880
    iget-object v12, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 4889
    :try_start_0
    iget-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v11, :cond_0

    .line 4890
    monitor-exit v12

    .line 4981
    :goto_0
    return-void

    .line 4892
    :cond_0
    iget-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v11, :cond_1

    iget-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v11, :cond_1

    .line 4893
    monitor-exit v12

    goto :goto_0

    .line 4975
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 4896
    :cond_1
    :try_start_1
    iget-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    if-nez v11, :cond_e

    .line 4899
    const/4 v4, 0x0

    .line 4900
    .local v4, haveBootMsg:Z
    const/4 v3, 0x0

    .line 4901
    .local v3, haveApp:Z
    const/4 v6, 0x0

    .line 4902
    .local v6, haveWallpaper:Z
    const/4 v5, 0x1

    .line 4903
    .local v5, haveKeyguard:Z
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4904
    .local v0, N:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v0, :cond_a

    .line 4905
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 4906
    .local v10, w:Lcom/android/server/wm/WindowState;
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7d4

    if-ne v11, v13, :cond_2

    .line 4914
    iget v11, v10, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v11, :cond_3

    iget-boolean v11, v10, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v11, :cond_3

    const/4 v9, 0x1

    .line 4916
    .local v9, vis:Z
    :goto_2
    if-nez v9, :cond_4

    const/4 v5, 0x1

    .line 4918
    .end local v9           #vis:Z
    :cond_2
    :goto_3
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-boolean v11, v10, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-nez v11, :cond_5

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v11

    if-nez v11, :cond_5

    .line 4919
    monitor-exit v12

    goto :goto_0

    .line 4914
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 4916
    .restart local v9       #vis:Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    .line 4921
    .end local v9           #vis:Z
    :cond_5
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 4922
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7e5

    if-ne v11, v13, :cond_7

    .line 4923
    const/4 v4, 0x1

    .line 4904
    :cond_6
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4924
    :cond_7
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v13, 0x2

    if-ne v11, v13, :cond_8

    .line 4925
    const/4 v3, 0x1

    goto :goto_4

    .line 4926
    :cond_8
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7dd

    if-ne v11, v13, :cond_9

    .line 4927
    const/4 v6, 0x1

    goto :goto_4

    .line 4928
    :cond_9
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7d4

    if-ne v11, v13, :cond_6

    .line 4929
    const/4 v5, 0x1

    goto :goto_4

    .line 4942
    .end local v10           #w:Lcom/android/server/wm/WindowState;
    :cond_a
    iget-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v11, :cond_b

    if-nez v4, :cond_b

    .line 4943
    monitor-exit v12

    goto/16 :goto_0

    .line 4949
    :cond_b
    iget-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v11, :cond_e

    if-nez v3, :cond_c

    if-eqz v5, :cond_d

    :cond_c
    if-nez v6, :cond_e

    .line 4950
    :cond_d
    monitor-exit v12

    goto/16 :goto_0

    .line 4954
    .end local v0           #N:I
    .end local v3           #haveApp:Z
    .end local v4           #haveBootMsg:Z
    .end local v5           #haveKeyguard:Z
    .end local v6           #haveWallpaper:Z
    .end local v7           #i:I
    :cond_e
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4963
    :try_start_2
    const-string v11, "SurfaceFlinger"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 4964
    .local v8, surfaceFlinger:Landroid/os/IBinder;
    if-eqz v8, :cond_f

    .line 4966
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4967
    .local v1, data:Landroid/os/Parcel;
    const-string v11, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4968
    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v8, v11, v1, v13, v14}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4970
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4975
    .end local v1           #data:Landroid/os/Parcel;
    .end local v8           #surfaceFlinger:Landroid/os/IBinder;
    :cond_f
    :goto_5
    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4977
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v11}, Landroid/view/WindowManagerPolicy;->enableScreenAfterBoot()V

    .line 4980
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(Z)V

    goto/16 :goto_0

    .line 4972
    :catch_0
    move-exception v2

    .line 4973
    .local v2, ex:Landroid/os/RemoteException;
    :try_start_4
    const-string v11, "WindowManager"

    const-string v13, "Boot completed: SurfaceFlinger is dead!"

    invoke-static {v11, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5
.end method

.method public prepareAppTransition(IZ)V
    .locals 5
    .parameter "transit"
    .parameter "alwaysKeepCurrent"

    .prologue
    .line 3615
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "prepareAppTransition()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3617
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3620
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3624
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3625
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-nez v0, :cond_4

    .line 3627
    :cond_1
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    .line 3639
    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    .line 3640
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    .line 3641
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    .line 3642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 3643
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 3644
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3647
    :cond_3
    monitor-exit v1

    .line 3648
    return-void

    .line 3628
    :cond_4
    if-nez p2, :cond_2

    .line 3629
    const/16 v0, 0x1008

    if-ne p1, v0, :cond_5

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/16 v2, 0x2009

    if-ne v0, v2, :cond_5

    .line 3632
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    goto :goto_0

    .line 3647
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3633
    :cond_5
    const/16 v0, 0x1006

    if-ne p1, v0, :cond_2

    :try_start_1
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/16 v2, 0x2007

    if-ne v0, v2, :cond_2

    .line 3636
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method prepareDragSurface(Landroid/view/IWindow;Landroid/view/SurfaceSession;IIILandroid/view/Surface;)Landroid/os/IBinder;
    .locals 16
    .parameter "window"
    .parameter "session"
    .parameter "flags"
    .parameter "width"
    .parameter "height"
    .parameter "outSurface"

    .prologue
    .line 6197
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 6198
    .local v3, callerPid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 6199
    .local v12, origId:J
    const/4 v14, 0x0

    .line 6202
    .local v14, token:Landroid/os/IBinder;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6204
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v2, :cond_1

    .line 6205
    new-instance v1, Landroid/view/Surface;

    const-string v4, "drag surface"

    const/4 v5, 0x0

    const/4 v8, -0x3

    const/4 v9, 0x4

    move-object/from16 v2, p2

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v9}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    .line 6209
    .local v1, surface:Landroid/view/Surface;
    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V

    .line 6210
    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 6211
    .local v9, winBinder:Landroid/os/IBinder;
    new-instance v6, Landroid/os/Binder;

    invoke-direct {v6}, Landroid/os/Binder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6212
    .end local v14           #token:Landroid/os/IBinder;
    .local v6, token:Landroid/os/IBinder;
    :try_start_2
    new-instance v4, Lcom/android/server/wm/DragState;

    const/4 v8, 0x0

    move-object/from16 v5, p0

    move-object v7, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/wm/DragState;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Landroid/view/Surface;ILandroid/os/IBinder;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    .line 6213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v1, v2, Lcom/android/server/wm/DragState;->mSurface:Landroid/view/Surface;

    .line 6214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    new-instance v14, Landroid/os/Binder;

    invoke-direct {v14}, Landroid/os/Binder;-><init>()V

    iput-object v14, v2, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_1

    .line 6217
    .end local v6           #token:Landroid/os/IBinder;
    .restart local v14       #token:Landroid/os/IBinder;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x14

    invoke-virtual {v2, v4, v9}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 6218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x14

    invoke-virtual {v2, v4, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 6219
    .local v11, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v11, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v6, v14

    .line 6230
    .end local v1           #surface:Landroid/view/Surface;
    .end local v9           #winBinder:Landroid/os/IBinder;
    .end local v11           #msg:Landroid/os/Message;
    .end local v14           #token:Landroid/os/IBinder;
    .restart local v6       #token:Landroid/os/IBinder;
    :cond_0
    :goto_0
    :try_start_4
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 6232
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6235
    return-object v6

    .line 6221
    .end local v6           #token:Landroid/os/IBinder;
    .restart local v14       #token:Landroid/os/IBinder;
    :cond_1
    :try_start_5
    const-string v2, "WindowManager"

    const-string v4, "Drag already in progress"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v6, v14

    .end local v14           #token:Landroid/os/IBinder;
    .restart local v6       #token:Landroid/os/IBinder;
    goto :goto_0

    .line 6223
    .end local v6           #token:Landroid/os/IBinder;
    .restart local v14       #token:Landroid/os/IBinder;
    :catch_0
    move-exception v10

    move-object v6, v14

    .line 6224
    .end local v14           #token:Landroid/os/IBinder;
    .restart local v6       #token:Landroid/os/IBinder;
    .local v10, e:Landroid/view/Surface$OutOfResourcesException;
    :goto_1
    :try_start_6
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t allocate drag surface w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_0

    .line 6226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->reset()V

    .line 6227
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    goto :goto_0

    .line 6230
    .end local v10           #e:Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v2

    :goto_2
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 6232
    :catchall_1
    move-exception v2

    :goto_3
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .end local v6           #token:Landroid/os/IBinder;
    .restart local v14       #token:Landroid/os/IBinder;
    :catchall_2
    move-exception v2

    move-object v6, v14

    .end local v14           #token:Landroid/os/IBinder;
    .restart local v6       #token:Landroid/os/IBinder;
    goto :goto_3

    .line 6230
    .end local v6           #token:Landroid/os/IBinder;
    .restart local v14       #token:Landroid/os/IBinder;
    :catchall_3
    move-exception v2

    move-object v6, v14

    .end local v14           #token:Landroid/os/IBinder;
    .restart local v6       #token:Landroid/os/IBinder;
    goto :goto_2

    .line 6223
    .restart local v1       #surface:Landroid/view/Surface;
    .restart local v9       #winBinder:Landroid/os/IBinder;
    :catch_1
    move-exception v10

    goto :goto_1
.end method

.method final rebuildAppWindowListLocked()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 7214
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7216
    .local v1, NW:I
    const/4 v4, -0x1

    .line 7217
    .local v4, lastWallpaper:I
    const/4 v5, 0x0

    .line 7219
    .local v5, numRemoved:I
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    array-length v11, v11

    if-ge v11, v1, :cond_0

    .line 7220
    add-int/lit8 v11, v1, 0xa

    new-array v11, v11, [Lcom/android/server/wm/WindowState;

    iput-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    .line 7224
    :cond_0
    const/4 v2, 0x0

    .line 7225
    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 7226
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 7227
    .local v8, w:Lcom/android/server/wm/WindowState;
    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_1

    .line 7228
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 7229
    .local v9, win:Lcom/android/server/wm/WindowState;
    iput-boolean v14, v9, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    .line 7230
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    aput-object v9, v11, v5

    .line 7231
    iput-boolean v14, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 7234
    add-int/lit8 v1, v1, -0x1

    .line 7235
    add-int/lit8 v5, v5, 0x1

    .line 7236
    goto :goto_0

    .line 7237
    .end local v9           #win:Lcom/android/server/wm/WindowState;
    :cond_1
    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x7dd

    if-ne v11, v12, :cond_2

    add-int/lit8 v11, v2, -0x1

    if-ne v4, v11, :cond_2

    .line 7239
    move v4, v2

    .line 7241
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 7242
    goto :goto_0

    .line 7246
    .end local v8           #w:Lcom/android/server/wm/WindowState;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 7247
    move v2, v4

    .line 7253
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7254
    .local v0, NT:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 7255
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowToken;

    invoke-direct {p0, v2, v11}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    move-result v2

    .line 7254
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7259
    :cond_4
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7260
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_5

    .line 7261
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowToken;

    invoke-direct {p0, v2, v11}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    move-result v2

    .line 7260
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 7264
    :cond_5
    sub-int/2addr v2, v4

    .line 7265
    if-eq v2, v5, :cond_8

    .line 7266
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Rebuild removed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " windows but added "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7268
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_7

    .line 7269
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    aget-object v10, v11, v2

    .line 7270
    .local v10, ws:Lcom/android/server/wm/WindowState;
    iget-boolean v11, v10, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    if-eqz v11, :cond_6

    .line 7271
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 7272
    .local v7, sw:Ljava/io/StringWriter;
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 7273
    .local v6, pw:Ljava/io/PrintWriter;
    const-string v11, ""

    invoke-virtual {v10, v6, v11, v14}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 7274
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 7275
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "This window was lost: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7276
    const-string v11, "WindowManager"

    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7268
    .end local v6           #pw:Ljava/io/PrintWriter;
    .end local v7           #sw:Ljava/io/StringWriter;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 7279
    .end local v10           #ws:Lcom/android/server/wm/WindowState;
    :cond_7
    const-string v11, "WindowManager"

    const-string v12, "Current app token list:"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7280
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->dumpAppTokensLocked()V

    .line 7281
    const-string v11, "WindowManager"

    const-string v12, "Final window list:"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7282
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked()V

    .line 7284
    :cond_8
    return-void
.end method

.method reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z
    .locals 15
    .parameter "win"
    .parameter "operation"
    .parameter "secure"

    .prologue
    .line 8995
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    .line 8996
    .local v9, surface:Landroid/view/Surface;
    const/4 v6, 0x0

    .line 8997
    .local v6, leakedSurface:Z
    const/4 v5, 0x0

    .line 8999
    .local v5, killedApps:Z
    const/16 v11, 0x7918

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v14, v14, Lcom/android/server/wm/Session;->mPid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object p2, v12, v13

    invoke-static {v11, v12}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 9002
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-nez v11, :cond_0

    .line 9003
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    .line 9006
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 9011
    .local v2, callingIdentity:J
    :try_start_0
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 9012
    .local v1, N:I
    const-string v11, "WindowManager"

    const-string v12, "Out of memory for surface!  Looking for leaks..."

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9013
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 9014
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 9015
    .local v10, ws:Lcom/android/server/wm/WindowState;
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v11, :cond_1

    .line 9016
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    iget-object v12, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 9017
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "LEAKED SURFACE (session doesn\'t exist): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " surface="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " token="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v13, v13, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v13, v13, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9023
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11}, Landroid/view/Surface;->destroy()V

    .line 9024
    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    .line 9025
    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    .line 9026
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9027
    add-int/lit8 v4, v4, -0x1

    .line 9028
    add-int/lit8 v1, v1, -0x1

    .line 9029
    const/4 v6, 0x1

    .line 9013
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9030
    :cond_2
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_1

    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v11, v11, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-eqz v11, :cond_1

    .line 9031
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "LEAKED SURFACE (app token hidden): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " surface="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " token="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9035
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11}, Landroid/view/Surface;->destroy()V

    .line 9036
    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    .line 9037
    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    .line 9038
    const/4 v6, 0x1

    goto :goto_1

    .line 9043
    .end local v10           #ws:Lcom/android/server/wm/WindowState;
    :cond_3
    if-nez v6, :cond_7

    .line 9044
    const-string v11, "WindowManager"

    const-string v12, "No leaked surfaces; killing applicatons!"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9045
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    .line 9046
    .local v7, pidCandidates:Landroid/util/SparseIntArray;
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_5

    .line 9047
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 9048
    .restart local v10       #ws:Lcom/android/server/wm/WindowState;
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v11, :cond_4

    .line 9049
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v11, v11, Lcom/android/server/wm/Session;->mPid:I

    iget-object v12, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v12, v12, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v7, v11, v12}, Landroid/util/SparseIntArray;->append(II)V

    .line 9046
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 9052
    .end local v10           #ws:Lcom/android/server/wm/WindowState;
    :cond_5
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    if-lez v11, :cond_7

    .line 9053
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    new-array v8, v11, [I

    .line 9054
    .local v8, pids:[I
    const/4 v4, 0x0

    :goto_3
    array-length v11, v8

    if-ge v4, v11, :cond_6

    .line 9055
    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    aput v11, v8, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9054
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 9058
    :cond_6
    :try_start_1
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string v12, "Free memory"

    move/from16 v0, p3

    invoke-interface {v11, v8, v12, v0}, Landroid/app/IActivityManager;->killPids([ILjava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    if-eqz v11, :cond_7

    .line 9059
    const/4 v5, 0x1

    .line 9066
    .end local v7           #pidCandidates:Landroid/util/SparseIntArray;
    .end local v8           #pids:[I
    :cond_7
    :goto_4
    if-nez v6, :cond_8

    if-eqz v5, :cond_a

    .line 9069
    :cond_8
    :try_start_2
    const-string v11, "WindowManager"

    const-string v12, "Looks like we have reclaimed some memory, clearing surface for retry."

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9070
    if-eqz v9, :cond_9

    .line 9073
    invoke-virtual {v9}, Landroid/view/Surface;->destroy()V

    .line 9074
    const/4 v11, 0x0

    move-object/from16 v0, p1

    iput-boolean v11, v0, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    .line 9075
    const/4 v11, 0x0

    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9079
    :cond_9
    :try_start_3
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v11}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 9084
    :cond_a
    :goto_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9087
    if-nez v6, :cond_b

    if-eqz v5, :cond_c

    :cond_b
    const/4 v11, 0x1

    :goto_6
    return v11

    .line 9084
    .end local v1           #N:I
    .end local v4           #i:I
    :catchall_0
    move-exception v11

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .line 9087
    .restart local v1       #N:I
    .restart local v4       #i:I
    :cond_c
    const/4 v11, 0x0

    goto :goto_6

    .line 9080
    :catch_0
    move-exception v11

    goto :goto_5

    .line 9061
    .restart local v7       #pidCandidates:Landroid/util/SparseIntArray;
    .restart local v8       #pids:[I
    :catch_1
    move-exception v11

    goto :goto_4
.end method

.method public reenableKeyguard(Landroid/os/IBinder;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 4583
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 4585
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4588
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v2

    .line 4589
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v1, p1}, Landroid/os/TokenWatcher;->release(Landroid/os/IBinder;)V

    .line 4591
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v1}, Landroid/os/TokenWatcher;->isAcquired()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4599
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 4601
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4602
    :catch_0
    move-exception v0

    .line 4603
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 4607
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4608
    return-void
.end method

.method public reevaluateStatusBarVisibility()V
    .locals 4

    .prologue
    .line 9418
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 9419
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    invoke-interface {v1, v3}, Landroid/view/WindowManagerPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result v0

    .line 9420
    .local v0, visibility:I
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->updateStatusBarVisibilityLocked(I)V

    .line 9421
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 9422
    monitor-exit v2

    .line 9423
    return-void

    .line 9422
    .end local v0           #visibility:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I
    .locals 31
    .parameter "session"
    .parameter "client"
    .parameter "seq"
    .parameter "attrs"
    .parameter "requestedWidth"
    .parameter "requestedHeight"
    .parameter "viewVisibility"
    .parameter "flags"
    .parameter "outFrame"
    .parameter "outContentInsets"
    .parameter "outVisibleInsets"
    .parameter "outConfig"
    .parameter "outSurface"

    .prologue
    .line 2546
    const/4 v9, 0x0

    .line 2549
    .local v9, displayed:Z
    const/16 v22, 0x0

    .line 2552
    .local v22, surfaceChanged:Z
    const/16 v23, 0x0

    .line 2553
    .local v23, systemUiVisibility:I
    if-eqz p4, :cond_0

    .line 2554
    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v27, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v28, v0

    or-int v23, v27, v28

    .line 2555
    const/high16 v27, 0x1ff

    and-int v27, v27, v23

    if-eqz v27, :cond_0

    .line 2556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "android.permission.STATUS_BAR"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_0

    .line 2558
    const v27, -0x1ff0001

    and-int v23, v23, v27

    .line 2562
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 2564
    .local v17, origId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 2565
    const/16 v27, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v26

    .line 2566
    .local v26, win:Lcom/android/server/wm/WindowState;
    if-nez v26, :cond_1

    .line 2567
    const/16 v27, 0x0

    monitor-exit v28

    .line 2857
    :goto_0
    return v27

    .line 2569
    :cond_1
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p5

    if-ne v0, v1, :cond_2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p6

    if-eq v0, v1, :cond_3

    .line 2571
    :cond_2
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 2572
    move/from16 v0, p5

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 2573
    move/from16 v0, p6

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 2575
    :cond_3
    if-eqz p4, :cond_4

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSeq:I

    move/from16 v27, v0

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 2576
    move/from16 v0, v23

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 2579
    :cond_4
    if-eqz p4, :cond_5

    .line 2580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V

    .line 2583
    :cond_5
    and-int/lit8 v27, p8, 0x2

    if-eqz v27, :cond_6

    const/16 v27, 0x1

    :goto_1
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mSurfaceDestroyDeferred:Z

    .line 2586
    const/4 v6, 0x0

    .line 2587
    .local v6, attrChanges:I
    const/4 v11, 0x0

    .line 2588
    .local v11, flagChanges:I
    if-eqz p4, :cond_8

    .line 2589
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v29, v0

    move/from16 v0, v27

    move/from16 v1, v29

    if-eq v0, v1, :cond_7

    .line 2590
    new-instance v27, Ljava/lang/IllegalArgumentException;

    const-string v29, "Window type can not be changed after the window is added."

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 2849
    .end local v6           #attrChanges:I
    .end local v11           #flagChanges:I
    .end local v26           #win:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v27

    monitor-exit v28
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v27

    .line 2583
    .restart local v26       #win:Lcom/android/server/wm/WindowState;
    :cond_6
    const/16 v27, 0x0

    goto :goto_1

    .line 2593
    .restart local v6       #attrChanges:I
    .restart local v11       #flagChanges:I
    :cond_7
    :try_start_1
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v29, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v30, v0

    xor-int v11, v29, v30

    move-object/from16 v0, v27

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2594
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v6

    .line 2595
    and-int/lit8 v27, v6, 0x1

    if-eqz v27, :cond_8

    .line 2596
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 2602
    :cond_8
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    const/high16 v29, 0x2000

    and-int v27, v27, v29

    if-eqz v27, :cond_20

    const/16 v27, 0x1

    :goto_2
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    .line 2604
    and-int/lit16 v0, v6, 0x80

    move/from16 v27, v0

    if-eqz v27, :cond_9

    .line 2605
    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mAlpha:F

    .line 2608
    :cond_9
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x4000

    move/from16 v27, v0

    if-eqz v27, :cond_21

    const/16 v20, 0x1

    .line 2611
    .local v20, scaledWindow:Z
    :goto_3
    if-eqz v20, :cond_24

    .line 2614
    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p5

    if-eq v0, v1, :cond_22

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v27, v27, v29

    :goto_4
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 2616
    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p6

    if-eq v0, v1, :cond_23

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, p6

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v27, v27, v29

    :goto_5
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 2622
    :goto_6
    const v27, 0x20008

    and-int v27, v27, v11

    if-eqz v27, :cond_25

    const/4 v13, 0x1

    .line 2626
    .local v13, imMayMove:Z
    :goto_7
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p7

    if-ne v0, v1, :cond_a

    and-int/lit8 v27, v11, 0x8

    if-nez v27, :cond_a

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    move/from16 v27, v0

    if-nez v27, :cond_26

    :cond_a
    const/4 v12, 0x1

    .line 2630
    .local v12, focusMayChange:Z
    :goto_8
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p7

    if-eq v0, v1, :cond_27

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    const/high16 v29, 0x10

    and-int v27, v27, v29

    if-eqz v27, :cond_27

    const/16 v25, 0x1

    .line 2632
    .local v25, wallpaperMayMove:Z
    :goto_9
    const/high16 v27, 0x10

    and-int v27, v27, v11

    if-eqz v27, :cond_28

    const/16 v27, 0x1

    :goto_a
    or-int v25, v25, v27

    .line 2634
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    .line 2635
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v16, v0

    .line 2636
    .local v16, oldVisibility:I
    move/from16 v0, p7

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 2643
    if-nez p7, :cond_2b

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    if-eqz v27, :cond_b

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    move/from16 v27, v0

    if-nez v27, :cond_2b

    .line 2645
    :cond_b
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v27

    if-nez v27, :cond_29

    const/4 v9, 0x1

    .line 2646
    :goto_b
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mExiting:Z

    move/from16 v27, v0

    if-eqz v27, :cond_c

    .line 2647
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->cancelExitAnimationForNextAnimationLocked()V

    .line 2649
    :cond_c
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    .line 2650
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 2651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2653
    :cond_d
    const/16 v27, 0x8

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_e

    .line 2654
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mEnterAnimationPending:Z

    .line 2656
    :cond_e
    if-eqz v9, :cond_12

    .line 2657
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v27, v0

    if-eqz v27, :cond_f

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    move/from16 v27, v0

    if-nez v27, :cond_f

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    move/from16 v27, v0

    if-nez v27, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    move/from16 v27, v0

    if-nez v27, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v27

    if-eqz v27, :cond_f

    .line 2660
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->applyEnterAnimationLocked(Lcom/android/server/wm/WindowState;)V

    .line 2662
    :cond_f
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    const/high16 v29, 0x20

    and-int v27, v27, v29

    if-eqz v27, :cond_10

    .line 2666
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    .line 2668
    :cond_10
    const/4 v8, 0x0

    .line 2669
    .local v8, diff:I
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_12

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    if-eqz v27, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v8

    if-eqz v8, :cond_12

    .line 2672
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    .line 2678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    move-object/from16 v0, p12

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2681
    .end local v8           #diff:I
    :cond_12
    and-int/lit8 v27, v6, 0x8

    if-eqz v27, :cond_13

    .line 2683
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->destroySurfaceLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2684
    const/4 v9, 0x1

    .line 2685
    const/16 v22, 0x1

    .line 2688
    :cond_13
    :try_start_2
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v27, v0

    if-nez v27, :cond_14

    .line 2689
    const/16 v22, 0x1

    .line 2691
    :cond_14
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->createSurfaceLocked()Landroid/view/Surface;

    move-result-object v21

    .line 2692
    .local v21, surface:Landroid/view/Surface;
    if-eqz v21, :cond_2a

    .line 2693
    move-object/from16 v0, p13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V

    .line 2694
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mReportDestroySurface:Z

    .line 2695
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mSurfacePendingDestroy:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2712
    :goto_c
    if-eqz v9, :cond_15

    .line 2713
    const/4 v12, 0x1

    .line 2715
    :cond_15
    :try_start_3
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    const/16 v29, 0x7db

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    if-nez v27, :cond_16

    .line 2717
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 2718
    const/4 v13, 0x1

    .line 2720
    :cond_16
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    const/16 v29, 0x1

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_17

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    if-eqz v27, :cond_17

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    if-eqz v27, :cond_17

    .line 2726
    const v15, 0x480001

    .line 2730
    .local v15, mask:I
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    .line 2731
    .local v19, sa:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    const v29, -0x480002

    and-int v27, v27, v29

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v29, v0

    const v30, 0x480001

    and-int v29, v29, v30

    or-int v27, v27, v29

    move/from16 v0, v27

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2790
    .end local v15           #mask:I
    .end local v19           #sa:Landroid/view/WindowManager$LayoutParams;
    .end local v21           #surface:Landroid/view/Surface;
    :cond_17
    :goto_d
    if-eqz v12, :cond_18

    .line 2792
    const/16 v27, 0x3

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v27

    if-eqz v27, :cond_18

    .line 2794
    const/4 v13, 0x0

    .line 2801
    :cond_18
    const/4 v5, 0x0

    .line 2803
    .local v5, assignLayers:Z
    if-eqz v13, :cond_1a

    .line 2804
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v27

    if-nez v27, :cond_19

    if-eqz v9, :cond_1a

    .line 2810
    :cond_19
    const/4 v5, 0x1

    .line 2813
    :cond_1a
    if-eqz v25, :cond_1b

    .line 2814
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v27

    and-int/lit8 v27, v27, 0x2

    if-eqz v27, :cond_1b

    .line 2815
    const/4 v5, 0x1

    .line 2819
    :cond_1b
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 2820
    and-int/lit8 v27, p8, 0x1

    if-eqz v27, :cond_35

    const/16 v27, 0x1

    :goto_e
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    .line 2821
    if-eqz v5, :cond_1c

    .line 2822
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 2824
    :cond_1c
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v7

    .line 2825
    .local v7, configChanged:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2826
    if-eqz v9, :cond_1d

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1d

    .line 2827
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    move/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 2829
    :cond_1d
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1e

    .line 2830
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2832
    :cond_1e
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, p9

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2833
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, p10

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2834
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, p11

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2846
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    .line 2848
    .local v14, inTouchMode:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v27, v0

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2849
    monitor-exit v28
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2851
    if-eqz v7, :cond_1f

    .line 2852
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    .line 2855
    :cond_1f
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2857
    if-eqz v14, :cond_36

    const/16 v27, 0x1

    move/from16 v28, v27

    :goto_f
    if-eqz v9, :cond_37

    const/16 v27, 0x2

    :goto_10
    or-int v28, v28, v27

    if-eqz v22, :cond_38

    const/16 v27, 0x4

    :goto_11
    or-int v27, v27, v28

    goto/16 :goto_0

    .line 2602
    .end local v5           #assignLayers:Z
    .end local v7           #configChanged:Z
    .end local v12           #focusMayChange:Z
    .end local v13           #imMayMove:Z
    .end local v14           #inTouchMode:Z
    .end local v16           #oldVisibility:I
    .end local v20           #scaledWindow:Z
    .end local v25           #wallpaperMayMove:Z
    :cond_20
    const/16 v27, 0x0

    goto/16 :goto_2

    .line 2608
    :cond_21
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 2614
    .restart local v20       #scaledWindow:Z
    :cond_22
    const/high16 v27, 0x3f80

    goto/16 :goto_4

    .line 2616
    :cond_23
    const/high16 v27, 0x3f80

    goto/16 :goto_5

    .line 2619
    :cond_24
    const/high16 v27, 0x3f80

    :try_start_4
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mHScale:F
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    .line 2622
    :cond_25
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 2626
    .restart local v13       #imMayMove:Z
    :cond_26
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 2630
    .restart local v12       #focusMayChange:Z
    :cond_27
    const/16 v25, 0x0

    goto/16 :goto_9

    .line 2632
    .restart local v25       #wallpaperMayMove:Z
    :cond_28
    const/16 v27, 0x0

    goto/16 :goto_a

    .line 2645
    .restart local v16       #oldVisibility:I
    :cond_29
    const/4 v9, 0x0

    goto/16 :goto_b

    .line 2701
    .restart local v21       #surface:Landroid/view/Surface;
    :cond_2a
    :try_start_5
    invoke-virtual/range {p13 .. p13}, Landroid/view/Surface;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_c

    .line 2703
    .end local v21           #surface:Landroid/view/Surface;
    :catch_0
    move-exception v10

    .line 2704
    .local v10, e:Ljava/lang/Exception;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v27, v0

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2706
    const-string v27, "WindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Exception thrown when creating surface for client "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " ("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2709
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2710
    const/16 v27, 0x0

    monitor-exit v28

    goto/16 :goto_0

    .line 2734
    .end local v10           #e:Ljava/lang/Exception;
    :cond_2b
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mEnterAnimationPending:Z

    .line 2735
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2e

    .line 2741
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mExiting:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2c

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mSurfacePendingDestroy:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2e

    .line 2742
    :cond_2c
    const/16 v22, 0x1

    .line 2745
    const/16 v24, 0x2002

    .line 2746
    .local v24, transit:I
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    const/16 v29, 0x3

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_2d

    .line 2747
    const/16 v24, 0x5

    .line 2749
    :cond_2d
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mSurfacePendingDestroy:Z

    move/from16 v27, v0

    if-nez v27, :cond_30

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v27

    if-eqz v27, :cond_30

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v24

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    move-result v27

    if-eqz v27, :cond_30

    .line 2751
    const/4 v12, 0x1

    .line 2752
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mExiting:Z

    .line 2772
    .end local v24           #transit:I
    :cond_2e
    :goto_12
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2f

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    const/high16 v29, 0x1000

    and-int v27, v27, v29

    if-eqz v27, :cond_2f

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mSurfacePendingDestroy:Z

    move/from16 v27, v0

    if-eqz v27, :cond_34

    .line 2779
    :cond_2f
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mSurfacePendingDestroy:Z

    .line 2780
    invoke-virtual/range {p13 .. p13}, Landroid/view/Surface;->release()V

    goto/16 :goto_d

    .line 2753
    .restart local v24       #transit:I
    :cond_30
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v27

    if-eqz v27, :cond_31

    .line 2756
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mExiting:Z

    goto :goto_12

    .line 2757
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_32

    .line 2761
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mExiting:Z

    .line 2762
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mAnimating:Z

    goto :goto_12

    .line 2764
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_33

    .line 2765
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 2767
    :cond_33
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->destroySurfaceLocked()V

    goto :goto_12

    .line 2782
    .end local v24           #transit:I
    :cond_34
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v27, v0

    if-eqz v27, :cond_17

    .line 2785
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mReportDestroySurface:Z

    .line 2786
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v27, v0

    move-object/from16 v0, p13

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_d

    .line 2820
    .restart local v5       #assignLayers:Z
    :cond_35
    const/16 v27, 0x0

    goto/16 :goto_e

    .line 2857
    .restart local v7       #configChanged:Z
    .restart local v14       #inTouchMode:Z
    :cond_36
    const/16 v27, 0x0

    move/from16 v28, v27

    goto/16 :goto_f

    :cond_37
    const/16 v27, 0x0

    goto/16 :goto_10

    :cond_38
    const/16 v27, 0x0

    goto/16 :goto_11
.end method

.method public removeAppToken(Landroid/os/IBinder;)V
    .locals 14
    .parameter "token"

    .prologue
    const/4 v13, -0x1

    .line 4164
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "removeAppToken()"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4166
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4169
    :cond_0
    const/4 v1, 0x0

    .line 4170
    .local v1, wtoken:Lcom/android/server/wm/AppWindowToken;
    const/4 v11, 0x0

    .line 4171
    .local v11, startingToken:Lcom/android/server/wm/AppWindowToken;
    const/4 v7, 0x0

    .line 4173
    .local v7, delayed:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 4174
    .local v9, origId:J
    iget-object v12, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 4175
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    .line 4176
    .local v6, basewtoken:Lcom/android/server/wm/WindowToken;
    if-eqz v6, :cond_8

    iget-object v1, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_8

    .line 4178
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    move-result v7

    .line 4180
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 4181
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4182
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    .line 4183
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4184
    const/4 v7, 0x1

    .line 4194
    :cond_1
    :goto_0
    if-eqz v7, :cond_7

    .line 4198
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4208
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4209
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->removed:Z

    .line 4210
    iget-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_2

    .line 4211
    move-object v11, v1

    .line 4213
    :cond_2
    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 4214
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, v1, :cond_3

    .line 4216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 4217
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 4218
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V

    .line 4224
    :cond_3
    :goto_2
    if-nez v7, :cond_4

    if-eqz v1, :cond_4

    .line 4225
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 4227
    :cond_4
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4228
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4230
    if-eqz v11, :cond_5

    .line 4233
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v11}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 4234
    .local v8, m:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4236
    .end local v8           #m:Landroid/os/Message;
    :cond_5
    return-void

    .line 4185
    :cond_6
    :try_start_1
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v0, v13, :cond_1

    .line 4186
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4187
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->waitingToHide:Z

    .line 4188
    const/4 v7, 0x1

    goto :goto_0

    .line 4203
    :cond_7
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 4204
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->animating:Z

    goto :goto_1

    .line 4227
    .end local v6           #basewtoken:Lcom/android/server/wm/WindowToken;
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 4221
    .restart local v6       #basewtoken:Lcom/android/server/wm/WindowToken;
    :cond_8
    :try_start_2
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to remove non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method removeFakeWindowLocked(Landroid/view/WindowManagerPolicy$FakeWindow;)Z
    .locals 4
    .parameter "window"

    .prologue
    const/4 v0, 0x1

    .line 9445
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 9446
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9447
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 9448
    monitor-exit v1

    .line 9450
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 9451
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .locals 3
    .parameter "session"
    .parameter "client"

    .prologue
    .line 2236
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2237
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2238
    .local v0, win:Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_0

    .line 2239
    monitor-exit v2

    .line 2243
    :goto_0
    return-void

    .line 2241
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 2242
    monitor-exit v2

    goto :goto_0

    .end local v0           #win:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 5812
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5813
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5814
    monitor-exit v1

    .line 5815
    return-void

    .line 5814
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V
    .locals 8
    .parameter "session"
    .parameter "win"

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2253
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2255
    .local v0, origId:J
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    .line 2267
    const/4 v3, 0x0

    .line 2272
    .local v3, wasVisible:Z
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2276
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2278
    const/16 v2, 0x2002

    .line 2279
    .local v2, transit:I
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v5, :cond_0

    .line 2280
    const/4 v2, 0x5

    .line 2283
    :cond_0
    invoke-virtual {p0, p2, v2, v6}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2284
    iput-boolean v7, p2, Lcom/android/server/wm/WindowState;->mExiting:Z

    .line 2287
    .end local v2           #transit:I
    :cond_1
    iget-boolean v4, p2, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v4, :cond_2

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2290
    :cond_2
    iput-boolean v7, p2, Lcom/android/server/wm/WindowState;->mExiting:Z

    .line 2291
    iput-boolean v7, p2, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 2292
    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 2293
    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 2295
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2296
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2297
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_3

    .line 2298
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2301
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2316
    :goto_0
    return-void

    .line 2306
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 2309
    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->computeForcedAppOrientationLocked()I

    move-result v4

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    if-eq v4, v5, :cond_5

    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2312
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 2314
    :cond_5
    invoke-direct {p0, v6, v7}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 2315
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public removeWindowToken(Landroid/os/IBinder;)V
    .locals 12
    .parameter "token"

    .prologue
    .line 3223
    const-string v8, "android.permission.MANAGE_APP_TOKENS"

    const-string v9, "removeWindowToken()"

    invoke-virtual {p0, v8, v9}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 3225
    new-instance v8, Ljava/lang/SecurityException;

    const-string v9, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3228
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3229
    .local v4, origId:J
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 3230
    :try_start_0
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowToken;

    .line 3231
    .local v7, wtoken:Lcom/android/server/wm/WindowToken;
    if-eqz v7, :cond_7

    .line 3232
    const/4 v2, 0x0

    .line 3233
    .local v2, delayed:Z
    iget-boolean v8, v7, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v8, :cond_5

    .line 3234
    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 3236
    iget-object v8, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3237
    .local v0, N:I
    const/4 v1, 0x0

    .line 3239
    .local v1, changed:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 3240
    iget-object v8, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 3242
    .local v6, win:Lcom/android/server/wm/WindowState;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3243
    const/4 v2, 0x1

    .line 3246
    :cond_1
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3247
    const/16 v8, 0x2002

    const/4 v10, 0x0

    invoke-virtual {p0, v6, v8, v10}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    .line 3249
    const/4 v1, 0x1

    .line 3239
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3253
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    :cond_3
    if-eqz v1, :cond_4

    .line 3254
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 3255
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3256
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, v8, v10}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 3260
    :cond_4
    if-eqz v2, :cond_6

    .line 3261
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3267
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v3           #i:I
    :cond_5
    :goto_1
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 3271
    .end local v2           #delayed:Z
    :goto_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3272
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3273
    return-void

    .line 3262
    .restart local v0       #N:I
    .restart local v1       #changed:Z
    .restart local v2       #delayed:Z
    .restart local v3       #i:I
    :cond_6
    :try_start_1
    iget v8, v7, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v10, 0x7dd

    if-ne v8, v10, :cond_5

    .line 3263
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3271
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v2           #delayed:Z
    .end local v3           #i:I
    .end local v7           #wtoken:Lcom/android/server/wm/WindowToken;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 3269
    .restart local v7       #wtoken:Lcom/android/server/wm/WindowToken;
    :cond_7
    :try_start_2
    const-string v8, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Attempted to remove non-existing token: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method requestAnimationLocked(J)V
    .locals 3
    .parameter "delay"

    .prologue
    .line 8958
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationPending:Z

    if-nez v0, :cond_0

    .line 8959
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationPending:Z

    .line 8960
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8962
    :cond_0
    return-void
.end method

.method public resumeKeyDispatching(Landroid/os/IBinder;)V
    .locals 3
    .parameter "_token"

    .prologue
    .line 6259
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "resumeKeyDispatching()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6261
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6264
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 6265
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .line 6266
    .local v0, token:Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_1

    .line 6267
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/InputMonitor;->resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    .line 6269
    :cond_1
    monitor-exit v2

    .line 6270
    return-void

    .line 6269
    .end local v0           #token:Lcom/android/server/wm/WindowToken;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resumeRotationLocked()V
    .locals 3

    .prologue
    .line 5298
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-lez v1, :cond_0

    .line 5299
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    .line 5300
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-nez v1, :cond_0

    .line 5301
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    move-result v0

    .line 5302
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 5303
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 5307
    .end local v0           #changed:Z
    :cond_0
    return-void
.end method

.method public screenshotApplications(Landroid/os/IBinder;II)Landroid/graphics/Bitmap;
    .locals 34
    .parameter "appToken"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 5085
    const-string v31, "android.permission.READ_FRAME_BUFFER"

    const-string v32, "screenshotApplications()"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_0

    .line 5087
    new-instance v31, Ljava/lang/SecurityException;

    const-string v32, "Requires READ_FRAME_BUFFER permission"

    invoke-direct/range {v31 .. v32}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 5092
    :cond_0
    const/16 v20, 0x0

    .line 5093
    .local v20, maxLayer:I
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 5099
    .local v11, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v32, v0

    monitor-enter v32

    .line 5100
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 5102
    .local v14, ident:J
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    .line 5103
    .local v9, dw:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    .line 5105
    .local v8, dh:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v31, v0

    const/16 v33, 0x2

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v31

    move/from16 v0, v31

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v31, v0

    move/from16 v0, v31

    add-int/lit16 v3, v0, 0x3e8

    .line 5108
    .local v3, aboveAppLayer:I
    add-int/lit16 v3, v3, 0x2710

    .line 5110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_2

    const/16 v17, 0x1

    .line 5116
    .local v17, isImeTarget:Z
    :goto_0
    const/16 v16, 0x0

    .line 5117
    .local v16, including:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    add-int/lit8 v13, v31, -0x1

    .local v13, i:I
    :goto_1
    if-ltz v13, :cond_8

    .line 5118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/wm/WindowState;

    .line 5119
    .local v30, ws:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v31, v0

    if-nez v31, :cond_3

    .line 5117
    :cond_1
    :goto_2
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 5110
    .end local v13           #i:I
    .end local v16           #including:Z
    .end local v17           #isImeTarget:Z
    .end local v30           #ws:Lcom/android/server/wm/WindowState;
    :cond_2
    const/16 v17, 0x0

    goto :goto_0

    .line 5122
    .restart local v13       #i:I
    .restart local v16       #including:Z
    .restart local v17       #isImeTarget:Z
    .restart local v30       #ws:Lcom/android/server/wm/WindowState;
    :cond_3
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v0, v3, :cond_1

    .line 5128
    if-nez v16, :cond_5

    if-eqz p1, :cond_5

    .line 5132
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    move/from16 v31, v0

    if-eqz v31, :cond_4

    if-nez v17, :cond_5

    .line 5135
    :cond_4
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1

    .line 5143
    :cond_5
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    move/from16 v31, v0

    if-nez v31, :cond_7

    move-object/from16 v0, v30

    invoke-virtual {v0, v9, v8}, Lcom/android/server/wm/WindowState;->isFullscreen(II)Z

    move-result v31

    if-nez v31, :cond_7

    const/16 v16, 0x1

    .line 5145
    :goto_3
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move/from16 v31, v0

    move/from16 v0, v20

    move/from16 v1, v31

    if-ge v0, v1, :cond_6

    .line 5146
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move/from16 v20, v0

    .line 5150
    :cond_6
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    move/from16 v31, v0

    if-nez v31, :cond_1

    .line 5151
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    .line 5152
    .local v29, wf:Landroid/graphics/Rect;
    move-object/from16 v0, v30

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    .line 5153
    .local v7, cr:Landroid/graphics/Rect;
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    add-int v18, v31, v33

    .line 5154
    .local v18, left:I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    add-int v28, v31, v33

    .line 5155
    .local v28, top:I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    sub-int v22, v31, v33

    .line 5156
    .local v22, right:I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    sub-int v5, v31, v33

    .line 5157
    .local v5, bottom:I
    move/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v22

    invoke-virtual {v11, v0, v1, v2, v5}, Landroid/graphics/Rect;->union(IIII)V

    goto/16 :goto_2

    .line 5212
    .end local v3           #aboveAppLayer:I
    .end local v5           #bottom:I
    .end local v7           #cr:Landroid/graphics/Rect;
    .end local v8           #dh:I
    .end local v9           #dw:I
    .end local v13           #i:I
    .end local v14           #ident:J
    .end local v16           #including:Z
    .end local v17           #isImeTarget:Z
    .end local v18           #left:I
    .end local v22           #right:I
    .end local v28           #top:I
    .end local v29           #wf:Landroid/graphics/Rect;
    .end local v30           #ws:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v31

    monitor-exit v32
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v31

    .line 5143
    .restart local v3       #aboveAppLayer:I
    .restart local v8       #dh:I
    .restart local v9       #dw:I
    .restart local v13       #i:I
    .restart local v14       #ident:J
    .restart local v16       #including:Z
    .restart local v17       #isImeTarget:Z
    .restart local v30       #ws:Lcom/android/server/wm/WindowState;
    :cond_7
    const/16 v16, 0x0

    goto :goto_3

    .line 5160
    .end local v30           #ws:Lcom/android/server/wm/WindowState;
    :cond_8
    :try_start_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5163
    const/16 v31, 0x0

    const/16 v33, 0x0

    move/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v11, v0, v1, v9, v8}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 5165
    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_9

    if-nez v20, :cond_a

    .line 5166
    :cond_9
    const/4 v4, 0x0

    monitor-exit v32

    .line 5229
    :goto_4
    return-object v4

    .line 5170
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/Display;->getRotation()I

    move-result v23

    .line 5171
    .local v23, rot:I
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 5172
    .local v12, fw:I
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 5176
    .local v10, fh:I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v12

    move/from16 v33, v0

    div-float v26, v31, v33

    .line 5177
    .local v26, targetWidthScale:F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v10

    move/from16 v33, v0

    div-float v25, v31, v33

    .line 5178
    .local v25, targetHeightScale:F
    if-gt v9, v8, :cond_e

    .line 5179
    move/from16 v24, v26

    .line 5182
    .local v24, scale:F
    cmpl-float v31, v25, v24

    if-lez v31, :cond_b

    int-to-float v0, v12

    move/from16 v31, v0

    mul-float v31, v31, v25

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    .line 5183
    move/from16 v24, v25

    .line 5195
    :cond_b
    :goto_5
    int-to-float v0, v9

    move/from16 v31, v0

    mul-float v31, v31, v24

    move/from16 v0, v31

    float-to-int v9, v0

    .line 5196
    int-to-float v0, v8

    move/from16 v31, v0

    mul-float v31, v31, v24

    move/from16 v0, v31

    float-to-int v8, v0

    .line 5197
    const/16 v31, 0x1

    move/from16 v0, v23

    move/from16 v1, v31

    if-eq v0, v1, :cond_c

    const/16 v31, 0x3

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_d

    .line 5198
    :cond_c
    move/from16 v27, v9

    .line 5199
    .local v27, tmp:I
    move v9, v8

    .line 5200
    move/from16 v8, v27

    .line 5201
    const/16 v31, 0x1

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_f

    const/16 v23, 0x3

    .line 5211
    .end local v27           #tmp:I
    :cond_d
    :goto_6
    const/16 v31, 0x0

    move/from16 v0, v31

    move/from16 v1, v20

    invoke-static {v9, v8, v0, v1}, Landroid/view/Surface;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 5212
    .local v21, rawss:Landroid/graphics/Bitmap;
    monitor-exit v32
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5214
    if-nez v21, :cond_10

    .line 5215
    const-string v31, "WindowManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Failure taking screenshot for ("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "x"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ") to layer "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5217
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 5186
    .end local v21           #rawss:Landroid/graphics/Bitmap;
    .end local v24           #scale:F
    :cond_e
    move/from16 v24, v25

    .line 5189
    .restart local v24       #scale:F
    cmpl-float v31, v26, v24

    if-lez v31, :cond_b

    int-to-float v0, v10

    move/from16 v31, v0

    mul-float v31, v31, v26

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, p3

    if-ne v0, v1, :cond_b

    .line 5190
    move/from16 v24, v26

    goto/16 :goto_5

    .line 5201
    .restart local v27       #tmp:I
    :cond_f
    const/16 v23, 0x1

    goto :goto_6

    .line 5220
    .end local v27           #tmp:I
    .restart local v21       #rawss:Landroid/graphics/Bitmap;
    :cond_10
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v31

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 5221
    .local v4, bm:Landroid/graphics/Bitmap;
    new-instance v19, Landroid/graphics/Matrix;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Matrix;-><init>()V

    .line 5222
    .local v19, matrix:Landroid/graphics/Matrix;
    move/from16 v0, v23

    move-object/from16 v1, v19

    invoke-static {v0, v9, v8, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 5223
    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v24

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v24

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v19

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 5224
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5225
    .local v6, canvas:Landroid/graphics/Canvas;
    const/16 v31, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v31

    invoke-virtual {v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 5226
    const/16 v31, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 5228
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_4
.end method

.method sendNewConfiguration()V
    .locals 2

    .prologue
    .line 5873
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5876
    :goto_0
    return-void

    .line 5874
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendWindowWallpaperCommandLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 12
    .parameter "window"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "sync"

    .prologue
    .line 2512
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_3

    .line 2514
    :cond_0
    move/from16 v9, p7

    .line 2515
    .local v9, doWait:Z
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2516
    .local v7, curTokenIndex:I
    :cond_1
    if-lez v7, :cond_2

    .line 2517
    add-int/lit8 v7, v7, -0x1

    .line 2518
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowToken;

    .line 2519
    .local v10, token:Lcom/android/server/wm/WindowToken;
    iget-object v0, v10, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2520
    .local v8, curWallpaperIndex:I
    :goto_0
    if-lez v8, :cond_1

    .line 2521
    add-int/lit8 v8, v8, -0x1

    .line 2522
    iget-object v0, v10, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowState;

    .line 2524
    .local v11, wallpaper:Lcom/android/server/wm/WindowState;
    :try_start_0
    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-interface/range {v0 .. v6}, Landroid/view/IWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2527
    const/16 p7, 0x0

    goto :goto_0

    .line 2533
    .end local v8           #curWallpaperIndex:I
    .end local v10           #token:Lcom/android/server/wm/WindowToken;
    .end local v11           #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_2
    if-eqz v9, :cond_3

    .line 2538
    .end local v7           #curTokenIndex:I
    .end local v9           #doWait:Z
    :cond_3
    const/4 v0, 0x0

    return-object v0

    .line 2528
    .restart local v7       #curTokenIndex:I
    .restart local v8       #curWallpaperIndex:I
    .restart local v9       #doWait:Z
    .restart local v10       #token:Lcom/android/server/wm/WindowToken;
    .restart local v11       #wallpaper:Lcom/android/server/wm/WindowState;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAnimationScale(IF)V
    .locals 2
    .parameter "which"
    .parameter "scale"

    .prologue
    .line 4672
    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4674
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4677
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    const/4 p2, 0x0

    .line 4679
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 4680
    packed-switch p1, :pswitch_data_0

    .line 4686
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4687
    return-void

    .line 4678
    :cond_2
    const/high16 v0, 0x41a0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    const/high16 p2, 0x41a0

    goto :goto_0

    .line 4681
    :pswitch_0
    invoke-static {p2}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    goto :goto_1

    .line 4682
    :pswitch_1
    invoke-static {p2}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    goto :goto_1

    .line 4680
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAnimationScales([F)V
    .locals 3
    .parameter "scales"

    .prologue
    const/4 v2, 0x1

    .line 4690
    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4692
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4695
    :cond_0
    if-eqz p1, :cond_2

    .line 4696
    array-length v0, p1

    if-lt v0, v2, :cond_1

    .line 4697
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    .line 4699
    :cond_1
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 4700
    aget v0, p1, v2

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    .line 4705
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4706
    return-void
.end method

.method public setAppGroupId(Landroid/os/IBinder;I)V
    .locals 5
    .parameter "token"
    .parameter "groupId"

    .prologue
    .line 3320
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppStartingIcon()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3322
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3325
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3326
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 3327
    .local v0, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_1

    .line 3328
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set group id of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3329
    monitor-exit v2

    .line 3333
    :goto_0
    return-void

    .line 3331
    :cond_1
    iput p2, v0, Lcom/android/server/wm/AppWindowToken;->groupId:I

    .line 3332
    monitor-exit v2

    goto :goto_0

    .end local v0           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAppOrientation(Landroid/view/IApplicationToken;I)V
    .locals 5
    .parameter "token"
    .parameter "requestedOrientation"

    .prologue
    .line 3550
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppOrientation()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3552
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3555
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3556
    :try_start_0
    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 3557
    .local v0, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_1

    .line 3558
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set orientation of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3559
    monitor-exit v2

    .line 3564
    :goto_0
    return-void

    .line 3562
    :cond_1
    iput p2, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .line 3563
    monitor-exit v2

    goto :goto_0

    .end local v0           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V
    .locals 18
    .parameter "token"
    .parameter "pkg"
    .parameter "theme"
    .parameter "compatInfo"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"
    .parameter "windowFlags"
    .parameter "transferFrom"
    .parameter "createIfNeeded"

    .prologue
    .line 3689
    const-string v2, "android.permission.MANAGE_APP_TOKENS"

    const-string v3, "setAppStartingIcon()"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3691
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3694
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 3699
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v16

    .line 3700
    .local v16, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v16, :cond_1

    .line 3701
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set icon of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3702
    monitor-exit v17

    .line 3854
    :goto_0
    return-void

    .line 3708
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3709
    :cond_2
    monitor-exit v17

    goto :goto_0

    .line 3853
    .end local v16           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v2

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3712
    .restart local v16       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_3
    :try_start_1
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v2, :cond_4

    .line 3713
    monitor-exit v17

    goto :goto_0

    .line 3716
    :cond_4
    if-eqz p9, :cond_c

    .line 3717
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v15

    .line 3718
    .local v15, ttoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v15, :cond_c

    .line 3719
    iget-object v14, v15, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 3720
    .local v14, startingWindow:Lcom/android/server/wm/WindowState;
    if-eqz v14, :cond_b

    .line 3721
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    if-eqz v2, :cond_5

    .line 3725
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 3730
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 3734
    .local v12, origId:J
    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 3735
    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 3736
    move-object/from16 v0, v16

    iput-object v14, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 3737
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 3738
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 3739
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 3740
    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 3741
    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 3742
    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    .line 3743
    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 3746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3747
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 3750
    iget-object v2, v15, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3751
    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3752
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 3759
    iget-boolean v2, v15, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v2, :cond_6

    .line 3760
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 3762
    :cond_6
    iget-boolean v2, v15, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v2, :cond_7

    .line 3763
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    .line 3765
    :cond_7
    iget-boolean v2, v15, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v2, :cond_8

    .line 3766
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 3767
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 3768
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    .line 3770
    :cond_8
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    iget-boolean v3, v15, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-eq v2, v3, :cond_9

    .line 3771
    iget-boolean v2, v15, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    .line 3772
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/AppWindowToken;->sendAppVisibilityToClients()V

    .line 3774
    :cond_9
    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_a

    .line 3775
    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 3776
    iget-boolean v2, v15, Lcom/android/server/wm/AppWindowToken;->animating:Z

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->animating:Z

    .line 3777
    iget v2, v15, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    .line 3778
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 3779
    const/4 v2, 0x0

    iput v2, v15, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    .line 3780
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/AppWindowToken;->updateLayers()V

    .line 3781
    invoke-virtual {v15}, Lcom/android/server/wm/AppWindowToken;->updateLayers()V

    .line 3784
    :cond_a
    const/4 v2, 0x3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 3786
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 3787
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3788
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3789
    monitor-exit v17

    goto/16 :goto_0

    .line 3790
    .end local v12           #origId:J
    :cond_b
    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v2, :cond_c

    .line 3796
    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 3797
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 3798
    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 3799
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v3, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 3803
    .local v11, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v11}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 3804
    monitor-exit v17

    goto/16 :goto_0

    .line 3811
    .end local v11           #m:Landroid/os/Message;
    .end local v14           #startingWindow:Lcom/android/server/wm/WindowState;
    .end local v15           #ttoken:Lcom/android/server/wm/AppWindowToken;
    :cond_c
    if-nez p10, :cond_d

    .line 3812
    monitor-exit v17

    goto/16 :goto_0

    .line 3819
    :cond_d
    if-eqz p3, :cond_10

    .line 3820
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->Window:[I

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v10

    .line 3822
    .local v10, ent:Lcom/android/server/AttributeCache$Entry;
    iget-object v2, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3824
    monitor-exit v17

    goto/16 :goto_0

    .line 3826
    :cond_e
    iget-object v2, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3828
    monitor-exit v17

    goto/16 :goto_0

    .line 3830
    :cond_f
    iget-object v2, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_11

    .line 3838
    const/high16 v2, 0x10

    or-int p8, p8, v2

    .line 3845
    .end local v10           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_10
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    .line 3846
    new-instance v2, Lcom/android/server/wm/StartingData;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/StartingData;-><init>(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;III)V

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 3848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v3, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 3852
    .restart local v11       #m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v11}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 3853
    monitor-exit v17

    goto/16 :goto_0

    .line 3840
    .end local v11           #m:Landroid/os/Message;
    .restart local v10       #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_11
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .locals 9
    .parameter "token"
    .parameter "visible"

    .prologue
    const/4 v5, -0x1

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 3971
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppVisibility()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3973
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3978
    :cond_0
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 3979
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 3980
    .local v1, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v1, :cond_1

    .line 3981
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to set visibility of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3982
    monitor-exit v8

    .line 4055
    :goto_0
    return-void

    .line 3999
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v3, v5, :cond_6

    .line 4002
    iget-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eq v3, p2, :cond_2

    .line 4003
    monitor-exit v8

    goto :goto_0

    .line 4054
    .end local v1           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4005
    .restart local v1       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_2
    if-nez p2, :cond_4

    :goto_1
    :try_start_1
    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 4009
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->setDummyAnimation()V

    .line 4010
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4011
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4012
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->waitingToHide:Z

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    .line 4013
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 4014
    if-eqz p2, :cond_5

    .line 4015
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4016
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 4017
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 4022
    iget-boolean v0, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v0, :cond_3

    .line 4023
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 4024
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    .line 4026
    iget-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-eqz v0, :cond_3

    .line 4033
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    .line 4034
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->sendAppVisibilityToClients()V

    .line 4046
    :cond_3
    :goto_2
    monitor-exit v8

    goto :goto_0

    :cond_4
    move v0, v2

    .line 4005
    goto :goto_1

    .line 4038
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4042
    iget-boolean v0, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v0, :cond_3

    .line 4043
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->waitingToHide:Z

    goto :goto_2

    .line 4049
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 4050
    .local v6, origId:J
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    .line 4052
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 4053
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4054
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setAppWillBeHidden(Landroid/os/IBinder;)V
    .locals 5
    .parameter "token"

    .prologue
    .line 3857
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppWillBeHidden()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3859
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3864
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3865
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 3866
    .local v0, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_1

    .line 3867
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set will be hidden of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3868
    monitor-exit v2

    .line 3872
    :goto_0
    return-void

    .line 3870
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    .line 3871
    monitor-exit v2

    goto :goto_0

    .end local v0           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setEventDispatching(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 6273
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "resumeKeyDispatching()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6275
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6278
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 6279
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputMonitor;->setEventDispatchingLw(Z)V

    .line 6280
    monitor-exit v1

    .line 6281
    return-void

    .line 6280
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFocusedApp(Landroid/os/IBinder;Z)V
    .locals 8
    .parameter "token"
    .parameter "moveFocusNow"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3578
    const-string v6, "android.permission.MANAGE_APP_TOKENS"

    const-string v7, "setFocusedApp()"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3580
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3583
    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 3584
    const/4 v0, 0x0

    .line 3585
    .local v0, changed:Z
    if-nez p1, :cond_4

    .line 3587
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_3

    move v0, v4

    .line 3588
    :goto_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 3589
    if-eqz v0, :cond_1

    .line 3590
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V

    .line 3606
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    .line 3607
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3608
    .local v2, origId:J
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 3609
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3611
    .end local v2           #origId:J
    :cond_2
    monitor-exit v6

    .line 3612
    :goto_2
    return-void

    :cond_3
    move v0, v5

    .line 3587
    goto :goto_0

    .line 3593
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 3594
    .local v1, newFocus:Lcom/android/server/wm/AppWindowToken;
    if-nez v1, :cond_5

    .line 3595
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted to set focus to non-existing app token: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3596
    monitor-exit v6

    goto :goto_2

    .line 3611
    .end local v1           #newFocus:Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3598
    .restart local v1       #newFocus:Lcom/android/server/wm/AppWindowToken;
    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eq v7, v1, :cond_6

    move v0, v4

    .line 3599
    :goto_3
    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 3601
    if-eqz v0, :cond_1

    .line 3602
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_6
    move v0, v5

    .line 3598
    goto :goto_3
.end method

.method public setForcedDisplaySize(II)V
    .locals 7
    .parameter "longDimen"
    .parameter "shortDimen"

    .prologue
    .line 7051
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 7053
    :try_start_0
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge v2, v4, :cond_2

    .line 7054
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    if-ge p2, v2, :cond_0

    move v1, p2

    .line 7056
    .local v1, width:I
    :goto_0
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge p1, v2, :cond_1

    move v0, p1

    .line 7064
    .local v0, height:I
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(II)V

    .line 7065
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "display_size_forced"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7067
    monitor-exit v3

    .line 7068
    return-void

    .line 7054
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_0
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    goto :goto_0

    .line 7056
    .restart local v1       #width:I
    :cond_1
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    goto :goto_1

    .line 7059
    .end local v1           #width:I
    :cond_2
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    if-ge p1, v2, :cond_3

    move v1, p1

    .line 7061
    .restart local v1       #width:I
    :goto_2
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge p2, v2, :cond_4

    move v0, p2

    .restart local v0       #height:I
    :goto_3
    goto :goto_1

    .line 7059
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_3
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    goto :goto_2

    .line 7061
    .restart local v1       #width:I
    :cond_4
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    goto :goto_3

    .line 7067
    .end local v1           #width:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setHardKeyboardEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 6157
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 6158
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    if-eq v0, p1, :cond_0

    .line 6159
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    .line 6160
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 6162
    :cond_0
    monitor-exit v1

    .line 6163
    return-void

    .line 6162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setHoldScreenLocked(Z)V
    .locals 2
    .parameter "holding"

    .prologue
    .line 8945
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    .line 8946
    .local v0, state:Z
    if-eq p1, v0, :cond_0

    .line 8947
    if-eqz p1, :cond_1

    .line 8948
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->screenOnStartedLw()V

    .line 8949
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 8955
    :cond_0
    :goto_0
    return-void

    .line 8951
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->screenOnStoppedLw()V

    .line 8952
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public setInTouchMode(Z)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 5030
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5031
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    .line 5032
    monitor-exit v1

    .line 5033
    return-void

    .line 5032
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setInputFilter(Lcom/android/server/wm/InputFilter;)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 4813
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputManager;->setInputFilter(Lcom/android/server/wm/InputFilter;)V

    .line 4814
    return-void
.end method

.method setInputMethodAnimLayerAdjustment(I)V
    .locals 5
    .parameter "adj"

    .prologue
    .line 1274
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    .line 1275
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 1276
    .local v2, imw:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_0

    .line 1277
    iget v4, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v2, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    .line 1280
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1281
    .local v3, wi:I
    :goto_0
    if-lez v3, :cond_0

    .line 1282
    add-int/lit8 v3, v3, -0x1

    .line 1283
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 1284
    .local v0, cw:Lcom/android/server/wm/WindowState;
    iget v4, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_0

    .line 1289
    .end local v0           #cw:Lcom/android/server/wm/WindowState;
    .end local v3           #wi:I
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1290
    .local v1, di:I
    :goto_1
    if-lez v1, :cond_1

    .line 1291
    add-int/lit8 v1, v1, -0x1

    .line 1292
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #imw:Lcom/android/server/wm/WindowState;
    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1293
    .restart local v2       #imw:Lcom/android/server/wm/WindowState;
    iget v4, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v2, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_1

    .line 1297
    :cond_1
    return-void
.end method

.method setInsetsWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .locals 6
    .parameter "session"
    .parameter "client"
    .parameter "touchableInsets"
    .parameter "contentInsets"
    .parameter "visibleInsets"
    .parameter "touchableRegion"

    .prologue
    .line 2453
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2455
    .local v0, origId:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2456
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 2457
    .local v2, w:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_1

    .line 2458
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    .line 2459
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2460
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2461
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3, p6}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 2462
    iput p3, v2, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 2463
    iget v3, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v5, 0x3f80

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_0

    .line 2464
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 2465
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 2466
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Region;->scale(F)V

    .line 2468
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 2469
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2471
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2473
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2475
    return-void

    .line 2471
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2473
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setNewConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 3537
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "setNewConfiguration()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3539
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3542
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3543
    :try_start_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 3544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 3545
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3546
    monitor-exit v1

    .line 3547
    return-void

    .line 3546
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 6167
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 6168
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;

    .line 6169
    monitor-exit v1

    .line 6170
    return-void

    .line 6169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPointerSpeed(I)V
    .locals 2
    .parameter "speed"

    .prologue
    .line 6434
    const-string v0, "android.permission.SET_POINTER_SPEED"

    const-string v1, "setPointerSpeed()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6436
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_POINTER_SPEED permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6439
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputManager;->setPointerSpeed(I)V

    .line 6440
    return-void
.end method

.method public setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 5073
    const-string v0, "persist.sys.strictmode.visual"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5074
    return-void
.end method

.method setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z
    .locals 9
    .parameter "wtoken"
    .parameter "lp"
    .parameter "visible"
    .parameter "transit"
    .parameter "performLayout"

    .prologue
    .line 3876
    const/4 v2, 0x0

    .line 3878
    .local v2, delayed:Z
    iget-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-ne v7, p3, :cond_0

    .line 3879
    if-nez p3, :cond_4

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    .line 3880
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->sendAppVisibilityToClients()V

    .line 3883
    :cond_0
    const/4 v7, 0x0

    iput-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    .line 3884
    iget-boolean v7, p1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-ne v7, p3, :cond_d

    .line 3885
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3886
    .local v0, N:I
    const/4 v1, 0x0

    .line 3891
    .local v1, changed:Z
    const/4 v4, 0x0

    .line 3893
    .local v4, runningAppAnimation:Z
    const/4 v7, -0x1

    if-eq p4, v7, :cond_2

    .line 3894
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    sget-object v8, Lcom/android/server/wm/WindowManagerService;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v7, v8, :cond_1

    .line 3895
    const/4 v7, 0x0

    iput-object v7, p1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 3897
    :cond_1
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZ)Z

    .line 3898
    const/4 v1, 0x1

    .line 3899
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v7, :cond_2

    .line 3900
    const/4 v4, 0x1

    move v2, v4

    .line 3904
    .end local v2           #delayed:Z
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_a

    .line 3905
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 3906
    .local v6, win:Lcom/android/server/wm/WindowState;
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v6, v7, :cond_5

    .line 3904
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3879
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v3           #i:I
    .end local v4           #runningAppAnimation:Z
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    .restart local v2       #delayed:Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 3910
    .end local v2           #delayed:Z
    .restart local v0       #N:I
    .restart local v1       #changed:Z
    .restart local v3       #i:I
    .restart local v4       #runningAppAnimation:Z
    .restart local v6       #win:Lcom/android/server/wm/WindowState;
    :cond_5
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3911
    const/4 v2, 0x1

    .line 3916
    :cond_6
    if-eqz p3, :cond_8

    .line 3917
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v7

    if-nez v7, :cond_3

    .line 3918
    if-nez v4, :cond_7

    .line 3919
    const/16 v7, 0x1001

    const/4 v8, 0x1

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    .line 3922
    :cond_7
    const/4 v1, 0x1

    goto :goto_2

    .line 3924
    :cond_8
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3925
    if-nez v4, :cond_9

    .line 3926
    const/16 v7, 0x2002

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    .line 3929
    :cond_9
    const/4 v1, 0x1

    goto :goto_2

    .line 3933
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    :cond_a
    if-nez p3, :cond_f

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    iput-boolean v7, p1, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 3934
    if-nez p3, :cond_10

    .line 3935
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {p0, p1, v7, v8}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 3951
    :cond_b
    :goto_4
    if-eqz v1, :cond_d

    .line 3952
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 3953
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v7}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 3954
    if-eqz p5, :cond_c

    .line 3955
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 3957
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3959
    :cond_c
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 3963
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v3           #i:I
    .end local v4           #runningAppAnimation:Z
    :cond_d
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v7, :cond_e

    .line 3964
    const/4 v2, 0x1

    .line 3967
    :cond_e
    return v2

    .line 3933
    .restart local v0       #N:I
    .restart local v1       #changed:Z
    .restart local v3       #i:I
    .restart local v4       #runningAppAnimation:Z
    :cond_f
    const/4 v7, 0x0

    goto :goto_3

    .line 3939
    :cond_10
    iget-object v5, p1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 3940
    .local v5, swin:Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_b

    iget-boolean v7, v5, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    if-nez v7, :cond_11

    iget-boolean v7, v5, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    if-eqz v7, :cond_b

    .line 3942
    :cond_11
    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 3943
    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    goto :goto_4
.end method

.method setTransparentRegionWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Region;)V
    .locals 5
    .parameter "session"
    .parameter "client"
    .parameter "region"

    .prologue
    .line 2426
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2428
    .local v0, origId:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2429
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 2430
    .local v2, w:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_0

    .line 2433
    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2437
    :try_start_2
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, p3}, Landroid/view/Surface;->setTransparentRegionHint(Landroid/graphics/Region;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2439
    :try_start_3
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 2444
    :cond_0
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2446
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2448
    return-void

    .line 2439
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v3

    .line 2444
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2446
    :catchall_2
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method setWallpaperAnimLayerAdjustmentLocked(I)V
    .locals 5
    .parameter "adj"

    .prologue
    .line 1828
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    .line 1829
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1830
    .local v0, curTokenIndex:I
    :cond_0
    if-lez v0, :cond_1

    .line 1831
    add-int/lit8 v0, v0, -0x1

    .line 1832
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 1833
    .local v2, token:Lcom/android/server/wm/WindowToken;
    iget-object v4, v2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1834
    .local v1, curWallpaperIndex:I
    :goto_0
    if-lez v1, :cond_0

    .line 1835
    add-int/lit8 v1, v1, -0x1

    .line 1836
    iget-object v4, v2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 1837
    .local v3, wallpaper:Lcom/android/server/wm/WindowState;
    iget v4, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v3, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_0

    .line 1842
    .end local v1           #curWallpaperIndex:I
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    .end local v3           #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_1
    return-void
.end method

.method public setWindowWallpaperPositionLocked(Lcom/android/server/wm/WindowState;FFFF)V
    .locals 1
    .parameter "window"
    .parameter "x"
    .parameter "y"
    .parameter "xStep"
    .parameter "yStep"

    .prologue
    .line 2491
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    .line 2492
    :cond_0
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 2493
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 2494
    iput p4, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 2495
    iput p5, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 2496
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 2498
    :cond_1
    return-void
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 3
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 4984
    const/4 v0, 0x0

    .line 4985
    .local v0, first:Z
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 4994
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowBootMessages:Z

    if-nez v1, :cond_1

    .line 4995
    monitor-exit v2

    .line 5012
    :cond_0
    :goto_0
    return-void

    .line 4997
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v1, :cond_3

    .line 4998
    if-nez p2, :cond_2

    .line 4999
    monitor-exit v2

    goto :goto_0

    .line 5008
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5001
    :cond_2
    const/4 v0, 0x1

    .line 5003
    :cond_3
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v1, :cond_4

    .line 5004
    monitor-exit v2

    goto :goto_0

    .line 5006
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    .line 5007
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, p1, p2}, Landroid/view/WindowManagerPolicy;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 5008
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5009
    if-eqz v0, :cond_0

    .line 5010
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto :goto_0
.end method

.method public showStrictModeViolation(Z)V
    .locals 8
    .parameter "on"

    .prologue
    .line 5038
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 5039
    .local v2, pid:I
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 5043
    if-eqz p1, :cond_2

    .line 5044
    const/4 v1, 0x0

    .line 5045
    .local v1, isVisible:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 5046
    .local v3, ws:Lcom/android/server/wm/WindowState;
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mPid:I

    if-ne v4, v2, :cond_0

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5047
    const/4 v1, 0x1

    .line 5051
    .end local v3           #ws:Lcom/android/server/wm/WindowState;
    :cond_1
    if-nez v1, :cond_2

    .line 5052
    monitor-exit v5

    .line 5070
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #isVisible:Z
    :goto_0
    return-void

    .line 5058
    :cond_2
    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5060
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-nez v4, :cond_3

    .line 5061
    new-instance v4, Lcom/android/server/wm/StrictModeFlash;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v4, v6, v7}, Lcom/android/server/wm/StrictModeFlash;-><init>(Landroid/view/Display;Landroid/view/SurfaceSession;)V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    .line 5063
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/StrictModeFlash;->setVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5065
    :try_start_2
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 5069
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 5065
    :catchall_1
    move-exception v4

    :try_start_3
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method showSurfaceRobustlyLocked(Lcom/android/server/wm/WindowState;)Z
    .locals 6
    .parameter "win"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 8974
    :try_start_0
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_0

    .line 8975
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    .line 8976
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->show()V

    .line 8977
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v3, :cond_0

    .line 8980
    const/4 v3, 0x0

    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    .line 8981
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8991
    :cond_0
    :goto_0
    return v1

    .line 8985
    :catch_0
    move-exception v0

    .line 8986
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure showing surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8989
    const-string v3, "show"

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z

    move v1, v2

    .line 8991
    goto :goto_0
.end method

.method public startAppFreezingScreen(Landroid/os/IBinder;I)V
    .locals 7
    .parameter "token"
    .parameter "configChanges"

    .prologue
    .line 4122
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppFreezingScreen()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4124
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4127
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 4128
    if-nez p2, :cond_1

    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4130
    monitor-exit v4

    .line 4142
    :goto_0
    return-void

    .line 4133
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 4134
    .local v2, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v3, :cond_3

    .line 4135
    :cond_2
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted to freeze screen with non-existing app token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4136
    monitor-exit v4

    goto :goto_0

    .line 4141
    .end local v2           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4138
    .restart local v2       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4139
    .local v0, origId:J
    invoke-virtual {p0, v2, p2}, Lcom/android/server/wm/WindowManagerService;->startAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;I)V

    .line 4140
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4141
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public startAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;I)V
    .locals 8
    .parameter "wtoken"
    .parameter "configChanges"

    .prologue
    const/16 v5, 0x11

    const/4 v7, 0x1

    .line 4102
    iget-boolean v3, p1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v3, :cond_1

    .line 4103
    iget-boolean v3, p1, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    if-nez v3, :cond_0

    .line 4104
    iput-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    .line 4105
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    .line 4106
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-ne v3, v7, :cond_0

    .line 4107
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(Z)V

    .line 4108
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 4109
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4113
    :cond_0
    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4114
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4115
    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 4116
    .local v2, w:Lcom/android/server/wm/WindowState;
    iput-boolean v7, v2, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 4114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4119
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_1
    return-void
.end method

.method public startViewServer(I)Z
    .locals 4
    .parameter "port"

    .prologue
    const/4 v1, 0x0

    .line 5530
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5559
    :cond_0
    :goto_0
    return v1

    .line 5534
    :cond_1
    const-string v2, "android.permission.DUMP"

    const-string v3, "startViewServer"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5538
    const/16 v2, 0x400

    if-lt p1, v2, :cond_0

    .line 5542
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v2, :cond_2

    .line 5543
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v2}, Lcom/android/server/wm/ViewServer;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5545
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v2}, Lcom/android/server/wm/ViewServer;->start()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 5546
    :catch_0
    move-exception v0

    .line 5547
    .local v0, e:Ljava/io/IOException;
    const-string v2, "WindowManager"

    const-string v3, "View server did not start"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5554
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    :try_start_1
    new-instance v2, Lcom/android/server/wm/ViewServer;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/ViewServer;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    .line 5555
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v2}, Lcom/android/server/wm/ViewServer;->start()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 5556
    :catch_1
    move-exception v0

    .line 5557
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "WindowManager"

    const-string v3, "View server did not start"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public statusBarVisibilityChanged(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 9375
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 9377
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not hold permission android.permission.STATUS_BAR"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9381
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 9382
    :try_start_0
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    .line 9383
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result p1

    .line 9384
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->updateStatusBarVisibilityLocked(I)V

    .line 9385
    monitor-exit v1

    .line 9386
    return-void

    .line 9385
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopAppFreezingScreen(Landroid/os/IBinder;Z)V
    .locals 5
    .parameter "token"
    .parameter "force"

    .prologue
    .line 4145
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppFreezingScreen()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4147
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4150
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 4151
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 4152
    .local v2, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v3, :cond_2

    .line 4153
    :cond_1
    monitor-exit v4

    .line 4161
    :goto_0
    return-void

    .line 4155
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4158
    .local v0, origId:J
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, p2}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 4159
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4160
    monitor-exit v4

    goto :goto_0

    .end local v0           #origId:J
    .end local v2           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public stopViewServer()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 5576
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5587
    :cond_0
    :goto_0
    return v0

    .line 5580
    :cond_1
    const-string v1, "android.permission.DUMP"

    const-string v2, "stopViewServer"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5584
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v1, :cond_0

    .line 5585
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->stop()Z

    move-result v0

    goto :goto_0
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 6502
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->systemReady()V

    .line 6503
    return-void
.end method

.method public thawRotation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5260
    const-string v0, "android.permission.SET_ORIENTATION"

    const-string v1, "thawRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5262
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ORIENTATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5267
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x309

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManagerPolicy;->setUserRotationMode(II)V

    .line 5268
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(Z)V

    .line 5269
    return-void
.end method

.method unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V
    .locals 7
    .parameter "wtoken"
    .parameter "unfreezeSurfaceNow"
    .parameter "force"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4059
    iget-boolean v4, p1, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    if-eqz v4, :cond_6

    .line 4062
    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4063
    .local v0, N:I
    const/4 v2, 0x0

    .line 4064
    .local v2, unfrozeWindows:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4065
    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 4066
    .local v3, w:Lcom/android/server/wm/WindowState;
    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-eqz v4, :cond_1

    .line 4067
    iput-boolean v5, v3, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 4068
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-nez v4, :cond_0

    .line 4070
    iput-boolean v6, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 4072
    :cond_0
    const/4 v2, 0x1

    .line 4064
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4075
    .end local v3           #w:Lcom/android/server/wm/WindowState;
    :cond_2
    if-nez p3, :cond_3

    if-eqz v2, :cond_4

    .line 4077
    :cond_3
    iput-boolean v5, p1, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    .line 4078
    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    .line 4080
    :cond_4
    if-eqz p2, :cond_6

    .line 4081
    if-eqz v2, :cond_5

    .line 4082
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 4083
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 4085
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 4088
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #unfrozeWindows:Z
    :cond_6
    return-void
.end method

.method public updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .locals 5
    .parameter "currentConfig"
    .parameter "freezeThisOneIfNeeded"

    .prologue
    .line 3440
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "updateOrientationFromAppTokens()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3442
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3445
    :cond_0
    const/4 v0, 0x0

    .line 3446
    .local v0, config:Landroid/content/res/Configuration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3448
    .local v1, ident:J
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 3449
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 3451
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3453
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3454
    return-object v0

    .line 3451
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method updateOrientationFromAppTokensLocked(Z)Z
    .locals 5
    .parameter "inTransaction"

    .prologue
    .line 3507
    const/4 v0, 0x0

    .line 3508
    .local v0, changed:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3510
    .local v1, ident:J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->computeForcedAppOrientationLocked()I

    move-result v3

    .line 3512
    .local v3, req:I
    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    if-eq v3, v4, :cond_0

    .line 3513
    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    .line 3516
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4, v3}, Landroid/view/WindowManagerPolicy;->setCurrentOrientationLw(I)V

    .line 3517
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 3518
    const/4 v0, 0x1

    .line 3524
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    .end local v3           #req:I
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public updateRotation(Z)V
    .locals 0
    .parameter "alwaysSendConfiguration"

    .prologue
    .line 5279
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(Z)V

    .line 5280
    return-void
.end method

.method public updateRotationUnchecked(Z)V
    .locals 5
    .parameter "alwaysSendConfiguration"

    .prologue
    .line 5314
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5316
    .local v1, origId:J
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 5317
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    move-result v0

    .line 5318
    .local v0, changed:Z
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5320
    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 5321
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    .line 5324
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5325
    return-void

    .line 5318
    .end local v0           #changed:Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public updateRotationUncheckedLocked(Z)Z
    .locals 10
    .parameter "inTransaction"

    .prologue
    const/16 v9, 0xb

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5334
    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-lez v6, :cond_1

    .line 5431
    :cond_0
    :goto_0
    return v4

    .line 5341
    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v6}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v6

    if-nez v6, :cond_0

    .line 5349
    :cond_2
    iget-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v6, :cond_0

    .line 5360
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v6, v7, v8}, Landroid/view/WindowManagerPolicy;->rotationForOrientationLw(II)I

    move-result v2

    .line 5361
    .local v2, rotation:I
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    invoke-interface {v6, v7, v2}, Landroid/view/WindowManagerPolicy;->rotationHasCompatibleMetricsLw(II)Z

    move-result v6

    if-nez v6, :cond_8

    move v0, v5

    .line 5371
    .local v0, altOrientation:Z
    :goto_1
    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    if-ne v6, v2, :cond_3

    iget-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    if-eq v6, v0, :cond_0

    .line 5383
    :cond_3
    iput v2, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    .line 5384
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    .line 5385
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy;->setRotationLw(I)V

    .line 5387
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 5388
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v9}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 5389
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v7, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5390
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 5391
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 5392
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(Z)V

    .line 5393
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v6, v4, v2}, Lcom/android/server/wm/InputManager;->setDisplayOrientation(II)V

    .line 5395
    if-nez p1, :cond_4

    .line 5398
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 5403
    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->useRotationAnimation()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v4}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5405
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(I)V

    .line 5407
    :cond_5
    const/4 v4, 0x0

    invoke-static {v4, v2}, Landroid/view/Surface;->setOrientation(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5409
    if-nez p1, :cond_6

    .line 5410
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 5416
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->rebuildBlackFrame(Z)V

    .line 5418
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_a

    .line 5419
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 5420
    .local v3, w:Lcom/android/server/wm/WindowState;
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_7

    .line 5422
    iput-boolean v5, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 5418
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .end local v0           #altOrientation:Z
    .end local v1           #i:I
    .end local v3           #w:Lcom/android/server/wm/WindowState;
    :cond_8
    move v0, v4

    .line 5361
    goto :goto_1

    .line 5409
    .restart local v0       #altOrientation:Z
    :catchall_0
    move-exception v4

    if-nez p1, :cond_9

    .line 5410
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_9
    throw v4

    .line 5425
    .restart local v1       #i:I
    :cond_a
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_3
    if-ltz v1, :cond_b

    .line 5427
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/IRotationWatcher;

    invoke-interface {v4, v2}, Landroid/view/IRotationWatcher;->onRotationChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5425
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_b
    move v4, v5

    .line 5431
    goto/16 :goto_0

    .line 5428
    :catch_0
    move-exception v4

    goto :goto_4
.end method

.method updateStatusBarVisibilityLocked(I)V
    .locals 8
    .parameter "visibility"

    .prologue
    .line 9389
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v6, p1}, Lcom/android/server/wm/InputManager;->setSystemUiVisibility(I)V

    .line 9390
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9391
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 9392
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 9394
    .local v5, ws:Lcom/android/server/wm/WindowState;
    :try_start_0
    iget v1, v5, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 9395
    .local v1, curValue:I
    xor-int v2, v1, p1

    .line 9398
    .local v2, diff:I
    and-int/lit8 v2, v2, 0x3

    .line 9400
    xor-int/lit8 v6, p1, -0x1

    and-int/2addr v2, v6

    .line 9401
    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v1

    and-int v7, p1, v2

    or-int v4, v6, v7

    .line 9402
    .local v4, newValue:I
    if-eq v4, v1, :cond_0

    .line 9403
    iget v6, v5, Lcom/android/server/wm/WindowState;->mSeq:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/server/wm/WindowState;->mSeq:I

    .line 9404
    iput v4, v5, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 9406
    :cond_0
    if-ne v4, v1, :cond_1

    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v6, v6, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v6, :cond_2

    .line 9407
    :cond_1
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget v7, v5, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-interface {v6, v7, p1, v4, v2}, Landroid/view/IWindow;->dispatchSystemUiVisibilityChanged(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9391
    .end local v1           #curValue:I
    .end local v2           #diff:I
    .end local v4           #newValue:I
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9414
    .end local v5           #ws:Lcom/android/server/wm/WindowState;
    :cond_3
    return-void

    .line 9410
    .restart local v5       #ws:Lcom/android/server/wm/WindowState;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V
    .locals 11
    .parameter "changingTarget"
    .parameter "sync"

    .prologue
    const/4 v9, 0x0

    .line 1932
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    .line 1933
    .local v3, dw:I
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    .line 1935
    .local v2, dh:I
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1936
    .local v5, target:Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_1

    .line 1937
    iget v8, v5, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_6

    .line 1938
    iget v8, v5, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    .line 1942
    :cond_0
    :goto_0
    iget v8, v5, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_7

    .line 1943
    iget v8, v5, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    .line 1949
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1950
    .local v0, curTokenIndex:I
    :cond_2
    if-lez v0, :cond_8

    .line 1951
    add-int/lit8 v0, v0, -0x1

    .line 1952
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    .line 1953
    .local v6, token:Lcom/android/server/wm/WindowToken;
    iget-object v8, v6, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1954
    .local v1, curWallpaperIndex:I
    :cond_3
    :goto_2
    if-lez v1, :cond_2

    .line 1955
    add-int/lit8 v1, v1, -0x1

    .line 1956
    iget-object v8, v6, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 1957
    .local v7, wallpaper:Lcom/android/server/wm/WindowState;
    invoke-virtual {p0, v7, v3, v2, p2}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1958
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->computeShownFrameLocked()V

    .line 1961
    iget v8, v7, Lcom/android/server/wm/WindowState;->mSurfaceX:F

    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v9

    if-nez v8, :cond_4

    iget v8, v7, Lcom/android/server/wm/WindowState;->mSurfaceY:F

    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_5

    .line 1963
    :cond_4
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 1968
    :try_start_0
    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iput v8, v7, Lcom/android/server/wm/WindowState;->mSurfaceX:F

    .line 1969
    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iput v8, v7, Lcom/android/server/wm/WindowState;->mSurfaceY:F

    .line 1970
    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v9, v10}, Landroid/view/Surface;->setPosition(FF)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1977
    :goto_3
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 1980
    :cond_5
    const/4 p2, 0x0

    goto :goto_2

    .line 1939
    .end local v0           #curTokenIndex:I
    .end local v1           #curWallpaperIndex:I
    .end local v6           #token:Lcom/android/server/wm/WindowToken;
    .end local v7           #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_6
    iget v8, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    .line 1940
    iget v8, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    goto :goto_0

    .line 1944
    :cond_7
    iget v8, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1

    .line 1945
    iget v8, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    goto :goto_1

    .line 1972
    .restart local v0       #curTokenIndex:I
    .restart local v1       #curWallpaperIndex:I
    .restart local v6       #token:Lcom/android/server/wm/WindowToken;
    .restart local v7       #wallpaper:Lcom/android/server/wm/WindowState;
    :catch_0
    move-exception v4

    .line 1973
    .local v4, e:Ljava/lang/RuntimeException;
    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error positioning surface of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pos=("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1984
    .end local v1           #curWallpaperIndex:I
    .end local v4           #e:Ljava/lang/RuntimeException;
    .end local v6           #token:Lcom/android/server/wm/WindowToken;
    .end local v7           #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_8
    return-void
.end method

.method updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z
    .locals 19
    .parameter "wallpaperWin"
    .parameter "dw"
    .parameter "dh"
    .parameter "sync"

    .prologue
    .line 1846
    const/4 v10, 0x0

    .line 1847
    .local v10, changed:Z
    const/4 v12, 0x0

    .line 1848
    .local v12, rawChanged:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_9

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    .line 1849
    .local v15, wpx:F
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    move/from16 v16, v0

    .line 1850
    .local v16, wpxs:F
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int v9, v2, p2

    .line 1851
    .local v9, availw:I
    if-lez v9, :cond_b

    int-to-float v2, v9

    mul-float/2addr v2, v15

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v11, v2

    .line 1852
    .local v11, offset:I
    :goto_2
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    if-eq v2, v11, :cond_c

    const/4 v10, 0x1

    .line 1853
    :goto_3
    if-eqz v10, :cond_0

    .line 1856
    move-object/from16 v0, p1

    iput v11, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 1858
    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v2, v2, v15

    if-nez v2, :cond_1

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v2, v2, v16

    if-eqz v2, :cond_2

    .line 1859
    :cond_1
    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 1860
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 1861
    const/4 v12, 0x1

    .line 1864
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    move/from16 v17, v0

    .line 1865
    .local v17, wpy:F
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    move/from16 v18, v0

    .line 1866
    .local v18, wpys:F
    :goto_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    sub-int v8, v2, p3

    .line 1867
    .local v8, availh:I
    if-lez v8, :cond_f

    int-to-float v2, v8

    mul-float v2, v2, v17

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v11, v2

    .line 1868
    :goto_6
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    if-eq v2, v11, :cond_3

    .line 1871
    const/4 v10, 0x1

    .line 1872
    move-object/from16 v0, p1

    iput v11, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 1874
    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v2, v2, v17

    if-nez v2, :cond_4

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v2, v2, v18

    if-eqz v2, :cond_5

    .line 1875
    :cond_4
    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 1876
    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 1877
    const/4 v12, 0x1

    .line 1880
    :cond_5
    if-eqz v12, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_8

    .line 1886
    if-eqz p4, :cond_6

    .line 1887
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 1889
    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    move/from16 v7, p4

    invoke-interface/range {v2 .. v7}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFZ)V

    .line 1892
    if-eqz p4, :cond_8

    .line 1893
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_8

    .line 1894
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 1895
    .local v13, start:J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    cmp-long v2, v2, v13

    if-gez v2, :cond_7

    .line 1900
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1904
    :goto_7
    const-wide/16 v2, 0x96

    add-long/2addr v2, v13

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_7

    .line 1906
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout waiting for wallpaper to offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J

    .line 1911
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1918
    .end local v13           #start:J
    :cond_8
    :goto_8
    return v10

    .line 1848
    .end local v8           #availh:I
    .end local v9           #availw:I
    .end local v11           #offset:I
    .end local v15           #wpx:F
    .end local v16           #wpxs:F
    .end local v17           #wpy:F
    .end local v18           #wpys:F
    :cond_9
    const/high16 v15, 0x3f00

    goto/16 :goto_0

    .line 1849
    .restart local v15       #wpx:F
    :cond_a
    const/high16 v16, -0x4080

    goto/16 :goto_1

    .line 1851
    .restart local v9       #availw:I
    .restart local v16       #wpxs:F
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1852
    .restart local v11       #offset:I
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1864
    :cond_d
    const/high16 v17, 0x3f00

    goto/16 :goto_4

    .line 1865
    .restart local v17       #wpy:F
    :cond_e
    const/high16 v18, -0x4080

    goto/16 :goto_5

    .line 1867
    .restart local v8       #availh:I
    .restart local v18       #wpys:F
    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 1914
    :catch_0
    move-exception v2

    goto :goto_8

    .line 1901
    .restart local v13       #start:J
    :catch_1
    move-exception v2

    goto :goto_7
.end method

.method updateWallpaperVisibilityLocked()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1987
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v7}, Lcom/android/server/wm/WindowManagerService;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    .line 1988
    .local v5, visible:Z
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    .line 1989
    .local v3, dw:I
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    .line 1991
    .local v2, dh:I
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1992
    .local v0, curTokenIndex:I
    :cond_0
    if-lez v0, :cond_5

    .line 1993
    add-int/lit8 v0, v0, -0x1

    .line 1994
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowToken;

    .line 1995
    .local v4, token:Lcom/android/server/wm/WindowToken;
    iget-boolean v7, v4, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-ne v7, v5, :cond_1

    .line 1996
    if-nez v5, :cond_4

    move v7, v8

    :goto_0
    iput-boolean v7, v4, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 1999
    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 2002
    :cond_1
    iget-object v7, v4, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2003
    .local v1, curWallpaperIndex:I
    :cond_2
    :goto_1
    if-lez v1, :cond_0

    .line 2004
    add-int/lit8 v1, v1, -0x1

    .line 2005
    iget-object v7, v4, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 2006
    .local v6, wallpaper:Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_3

    .line 2007
    invoke-virtual {p0, v6, v3, v2, v9}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 2010
    :cond_3
    iget-boolean v7, v6, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eq v7, v5, :cond_2

    .line 2011
    iput-boolean v5, v6, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    .line 2016
    :try_start_0
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v7, v5}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2017
    :catch_0
    move-exception v7

    goto :goto_1

    .end local v1           #curWallpaperIndex:I
    .end local v6           #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_4
    move v7, v9

    .line 1996
    goto :goto_0

    .line 2022
    .end local v4           #token:Lcom/android/server/wm/WindowToken;
    :cond_5
    return-void
.end method

.method public validateAppTokens(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3148
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 3149
    .local v1, v:I
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 3150
    .local v0, m:I
    :goto_0
    if-ltz v1, :cond_2

    if-ltz v0, :cond_2

    .line 3151
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 3152
    .local v2, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v3, :cond_0

    .line 3153
    add-int/lit8 v0, v0, -0x1

    .line 3154
    goto :goto_0

    .line 3156
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    if-eq v3, v4, :cond_1

    .line 3157
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tokens out of sync: external is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", internal is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3160
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 3161
    add-int/lit8 v0, v0, -0x1

    .line 3162
    goto :goto_0

    .line 3163
    .end local v2           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_2
    :goto_1
    if-ltz v1, :cond_3

    .line 3164
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "External token not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3167
    :cond_3
    :goto_2
    if-ltz v0, :cond_5

    .line 3168
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 3169
    .restart local v2       #wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v3, :cond_4

    .line 3170
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid internal token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 3173
    goto :goto_2

    .line 3174
    .end local v2           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_5
    return-void
.end method

.method viewServerGetFocusedWindow(Ljava/net/Socket;)Z
    .locals 8
    .parameter "client"

    .prologue
    .line 5672
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5673
    const/4 v5, 0x0

    .line 5706
    :cond_0
    :goto_0
    return v5

    .line 5676
    :cond_1
    const/4 v5, 0x1

    .line 5678
    .local v5, result:Z
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 5680
    .local v2, focusedWindow:Lcom/android/server/wm/WindowState;
    const/4 v3, 0x0

    .line 5684
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 5685
    .local v0, clientStream:Ljava/io/OutputStream;
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5687
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    if-eqz v2, :cond_2

    .line 5688
    :try_start_1
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 5689
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 5690
    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 5692
    :cond_2
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 5693
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 5697
    if-eqz v4, :cond_4

    .line 5699
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 5702
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_0

    .line 5700
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 5701
    .local v1, e:Ljava/io/IOException;
    const/4 v5, 0x0

    move-object v3, v4

    .line 5702
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_0

    .line 5694
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 5695
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    const/4 v5, 0x0

    .line 5697
    if-eqz v3, :cond_0

    .line 5699
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 5700
    :catch_2
    move-exception v1

    .line 5701
    .local v1, e:Ljava/io/IOException;
    const/4 v5, 0x0

    .line 5702
    goto :goto_0

    .line 5697
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v3, :cond_3

    .line 5699
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 5702
    :cond_3
    :goto_3
    throw v6

    .line 5700
    :catch_3
    move-exception v1

    .line 5701
    .restart local v1       #e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_3

    .line 5697
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 5694
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_4
    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_0
.end method

.method viewServerListWindows(Ljava/net/Socket;)Z
    .locals 12
    .parameter "client"

    .prologue
    .line 5619
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 5620
    const/4 v6, 0x0

    .line 5661
    :cond_0
    :goto_0
    return v6

    .line 5623
    :cond_1
    const/4 v6, 0x1

    .line 5626
    .local v6, result:Z
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 5628
    :try_start_0
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Lcom/android/server/wm/WindowState;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/server/wm/WindowState;

    .line 5629
    .local v8, windows:[Lcom/android/server/wm/WindowState;
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5631
    const/4 v4, 0x0

    .line 5635
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 5636
    .local v0, clientStream:Ljava/io/OutputStream;
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v10, 0x2000

    invoke-direct {v5, v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5638
    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v5, out:Ljava/io/BufferedWriter;
    :try_start_2
    array-length v1, v8

    .line 5639
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 5640
    aget-object v7, v8, v3

    .line 5641
    .local v7, w:Lcom/android/server/wm/WindowState;
    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 5642
    const/16 v9, 0x20

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(I)V

    .line 5643
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 5644
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 5639
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5629
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v5           #out:Ljava/io/BufferedWriter;
    .end local v7           #w:Lcom/android/server/wm/WindowState;
    .end local v8           #windows:[Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    .line 5647
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v5       #out:Ljava/io/BufferedWriter;
    .restart local v8       #windows:[Lcom/android/server/wm/WindowState;
    :cond_2
    :try_start_4
    const-string v9, "DONE.\n"

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 5648
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 5652
    if-eqz v5, :cond_4

    .line 5654
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v4, v5

    .line 5657
    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_0

    .line 5655
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v2

    .line 5656
    .local v2, e:Ljava/io/IOException;
    const/4 v6, 0x0

    move-object v4, v5

    .line 5657
    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_0

    .line 5649
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #count:I
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #i:I
    :catch_1
    move-exception v2

    .line 5650
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    const/4 v6, 0x0

    .line 5652
    if-eqz v4, :cond_0

    .line 5654
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 5655
    :catch_2
    move-exception v2

    .line 5656
    .local v2, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .line 5657
    goto :goto_0

    .line 5652
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v9

    :goto_3
    if-eqz v4, :cond_3

    .line 5654
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 5657
    :cond_3
    :goto_4
    throw v9

    .line 5655
    :catch_3
    move-exception v2

    .line 5656
    .restart local v2       #e:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_4

    .line 5652
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 5649
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :cond_4
    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_0
.end method

.method viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .parameter "client"
    .parameter "command"
    .parameter "parameters"

    .prologue
    .line 5730
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 5731
    const/4 v10, 0x0

    .line 5802
    :cond_0
    :goto_0
    return v10

    .line 5734
    :cond_1
    const/4 v10, 0x1

    .line 5735
    .local v10, success:Z
    const/4 v3, 0x0

    .line 5736
    .local v3, data:Landroid/os/Parcel;
    const/4 v9, 0x0

    .line 5738
    .local v9, reply:Landroid/os/Parcel;
    const/4 v7, 0x0

    .line 5743
    .local v7, out:Ljava/io/BufferedWriter;
    const/16 v12, 0x20

    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 5744
    .local v6, index:I
    const/4 v12, -0x1

    if-ne v6, v12, :cond_2

    .line 5745
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    .line 5747
    :cond_2
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 5748
    .local v2, code:Ljava/lang/String;
    const/16 v12, 0x10

    invoke-static {v2, v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v12

    long-to-int v5, v12

    .line 5751
    .local v5, hashCode:I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v6, v12, :cond_5

    .line 5752
    add-int/lit8 v12, v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 5757
    :goto_1
    invoke-direct {p0, v5}, Lcom/android/server/wm/WindowManagerService;->findWindow(I)Lcom/android/server/wm/WindowState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v11

    .line 5758
    .local v11, window:Lcom/android/server/wm/WindowState;
    if-nez v11, :cond_6

    .line 5759
    const/4 v10, 0x0

    .line 5787
    .end local v10           #success:Z
    if-eqz v3, :cond_3

    .line 5788
    throw v3

    .line 5790
    :cond_3
    if-eqz v9, :cond_4

    .line 5791
    throw v9

    .line 5793
    :cond_4
    if-eqz v7, :cond_0

    .line 5795
    :try_start_1
    throw v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5796
    :catch_0
    move-exception v12

    goto :goto_0

    .line 5754
    .end local v11           #window:Lcom/android/server/wm/WindowState;
    .restart local v10       #success:Z
    :cond_5
    :try_start_2
    const-string p3, ""

    goto :goto_1

    .line 5762
    .restart local v11       #window:Lcom/android/server/wm/WindowState;
    :cond_6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 5763
    const-string v12, "android.view.IWindow"

    invoke-virtual {v3, v12}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5764
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5765
    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5766
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 5767
    invoke-static/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v3, v13}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5769
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 5771
    iget-object v12, v11, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v12}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 5773
    .local v1, binder:Landroid/os/IBinder;
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v1, v12, v3, v9, v13}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5775
    invoke-virtual {v9}, Landroid/os/Parcel;->readException()V

    .line 5777
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v12

    if-nez v12, :cond_7

    .line 5778
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v8, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 5779
    .end local v7           #out:Ljava/io/BufferedWriter;
    .local v8, out:Ljava/io/BufferedWriter;
    :try_start_3
    const-string v12, "DONE\n"

    invoke-virtual {v8, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 5780
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-object v7, v8

    .line 5787
    .end local v8           #out:Ljava/io/BufferedWriter;
    .restart local v7       #out:Ljava/io/BufferedWriter;
    :cond_7
    if-eqz v3, :cond_8

    .line 5788
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 5790
    :cond_8
    if-eqz v9, :cond_9

    .line 5791
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 5793
    :cond_9
    if-eqz v7, :cond_0

    .line 5795
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 5796
    :catch_1
    move-exception v12

    goto/16 :goto_0

    .line 5783
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v2           #code:Ljava/lang/String;
    .end local v5           #hashCode:I
    .end local v6           #index:I
    .end local v11           #window:Lcom/android/server/wm/WindowState;
    :catch_2
    move-exception v4

    .line 5784
    .local v4, e:Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Could not send command "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " with parameters "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5785
    const/4 v10, 0x0

    .line 5787
    if-eqz v3, :cond_a

    .line 5788
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 5790
    :cond_a
    if-eqz v9, :cond_b

    .line 5791
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 5793
    :cond_b
    if-eqz v7, :cond_0

    .line 5795
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 5796
    :catch_3
    move-exception v12

    goto/16 :goto_0

    .line 5787
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    :goto_3
    if-eqz v3, :cond_c

    .line 5788
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 5790
    :cond_c
    if-eqz v9, :cond_d

    .line 5791
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 5793
    :cond_d
    if-eqz v7, :cond_e

    .line 5795
    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 5798
    :cond_e
    :goto_4
    throw v12

    .line 5796
    :catch_4
    move-exception v13

    goto :goto_4

    .line 5787
    .end local v7           #out:Ljava/io/BufferedWriter;
    .restart local v1       #binder:Landroid/os/IBinder;
    .restart local v2       #code:Ljava/lang/String;
    .restart local v5       #hashCode:I
    .restart local v6       #index:I
    .restart local v8       #out:Ljava/io/BufferedWriter;
    .restart local v11       #window:Lcom/android/server/wm/WindowState;
    :catchall_1
    move-exception v12

    move-object v7, v8

    .end local v8           #out:Ljava/io/BufferedWriter;
    .restart local v7       #out:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 5783
    .end local v7           #out:Ljava/io/BufferedWriter;
    .restart local v8       #out:Ljava/io/BufferedWriter;
    :catch_5
    move-exception v4

    move-object v7, v8

    .end local v8           #out:Ljava/io/BufferedWriter;
    .restart local v7       #out:Ljava/io/BufferedWriter;
    goto :goto_2
.end method

.method public waitForWindowDrawn(Landroid/os/IBinder;Landroid/os/IRemoteCallback;)V
    .locals 7
    .parameter "token"
    .parameter "callback"

    .prologue
    .line 8928
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 8929
    const/4 v3, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0, v3, p1, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 8930
    .local v2, win:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_0

    .line 8931
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8933
    .local v1, pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x18

    invoke-virtual {v3, v5, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 8934
    .local v0, m:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v0, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8935
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8936
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    .line 8938
    .end local v0           #m:Landroid/os/Message;
    .end local v1           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    :cond_0
    monitor-exit v4

    .line 8939
    return-void

    .line 8938
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2
    .parameter "window"
    .parameter "result"

    .prologue
    .line 2501
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2502
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 2504
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 2505
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2507
    :cond_0
    monitor-exit v1

    .line 2508
    return-void

    .line 2507
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .locals 2
    .parameter "window"

    .prologue
    .line 1922
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1923
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1925
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 1926
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1928
    :cond_0
    monitor-exit v1

    .line 1929
    return-void

    .line 1928
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public watchRotation(Landroid/view/IRotationWatcher;)I
    .locals 5
    .parameter "watcher"

    .prologue
    .line 5439
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 5440
    .local v1, watcherBinder:Landroid/os/IBinder;
    new-instance v0, Lcom/android/server/wm/WindowManagerService$5;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowManagerService$5;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;)V

    .line 5456
    .local v0, dr:Landroid/os/IBinder$DeathRecipient;
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 5458
    :try_start_0
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 5459
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5464
    :goto_0
    :try_start_1
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    monitor-exit v3

    return v2

    .line 5465
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 5460
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method final windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;
    .locals 5
    .parameter "session"
    .parameter "client"
    .parameter "throwOnError"

    .prologue
    const/4 v2, 0x0

    .line 7187
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 7190
    .local v1, win:Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_2

    .line 7191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 7193
    .local v0, ex:Ljava/lang/RuntimeException;
    if-eqz p3, :cond_0

    .line 7194
    throw v0

    .line 7196
    :cond_0
    const-string v3, "WindowManager"

    const-string v4, "Failed looking up window"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 7210
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #win:Lcom/android/server/wm/WindowState;
    :cond_1
    :goto_0
    return-object v1

    .line 7199
    .restart local v1       #win:Lcom/android/server/wm/WindowState;
    :cond_2
    if-eqz p1, :cond_1

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    if-eq v3, p1, :cond_1

    .line 7200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is in session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 7203
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    if-eqz p3, :cond_3

    .line 7204
    throw v0

    .line 7206
    :cond_3
    const-string v3, "WindowManager"

    const-string v4, "Failed looking up window"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 7207
    goto :goto_0
.end method

.method final windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;
    .locals 1
    .parameter "session"
    .parameter "client"
    .parameter "throwOnError"

    .prologue
    .line 7182
    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method
