.class public Lme/android/browser/Controller;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Lme/android/browser/ActivityController;
.implements Lme/android/browser/UiController;
.implements Lme/android/browser/WebViewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/android/browser/Controller$Copy;,
        Lme/android/browser/Controller$Download;,
        Lme/android/browser/Controller$PruneThumbnails;,
        Lme/android/browser/Controller$SaveSnapshotTask;,
        Lme/android/browser/Controller$SelectText;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final AUTOFILL_SETUP:I = 0x5

.field static final COMBO_VIEW:I = 0x1

.field private static final EMPTY_MENU:I = -0x1

.field static final FILE_SELECTED:I = 0x4

.field private static final FOCUS_NODE_HREF:I = 0x66

.field static final GOOGLE_SEARCH_SOURCE_SEARCHKEY:Ljava/lang/String; = "browser-key"

.field static final GOOGLE_SEARCH_SOURCE_TYPE:Ljava/lang/String; = "browser-type"

.field private static final INCOGNITO_URI:Ljava/lang/String; = "browser:incognito"

.field public static final LOAD_URL:I = 0x3e9

.field private static final LOGTAG:Ljava/lang/String; = "Controller"

.field static final NO_CRASH_RECOVERY:Ljava/lang/String; = "no-crash-recovery"

.field private static final OPEN_BOOKMARKS:I = 0xc9

.field static final PREFERENCES_PAGE:I = 0x3

.field private static final RELEASE_WAKELOCK:I = 0x6b

.field private static final SEND_APP_ID_EXTRA:Ljava/lang/String; = "android.speech.extras.SEND_APPLICATION_ID_EXTRA"

.field public static final STOP_LOAD:I = 0x3ea

.field static final UPDATE_BOOKMARK_THUMBNAIL:I = 0x6c

.field static final VOICE_RESULT:I = 0x6

.field private static final WAKELOCK_TIMEOUT:I = 0x493e0

.field private static final WINDOW_SHORTCUT_ID_ARRAY:[I

.field private static sThumbnailBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActivity:Landroid/app/Activity;

.field private mActivityPaused:Z

.field private mAutoFillSetupMessage:Landroid/os/Message;

.field private mBlockEvents:Z

.field private mBookmarksObserver:Landroid/database/ContentObserver;

.field private mCachedMenu:Landroid/view/Menu;

.field private mConfigChanged:Z

.field private mCrashRecoveryHandler:Lme/android/browser/CrashRecoveryHandler;

.field private mCurrentMenuState:I

.field private mExtendedMenuOpen:Z

.field private mFactory:Lme/android/browser/WebViewFactory;

.field private mHandler:Landroid/os/Handler;

.field private mIntentHandler:Lme/android/browser/IntentHandler;

.field private mLoadStopped:Z

.field private mMenuIsDown:Z

.field private mMenuState:I

.field private mNetworkHandler:Lme/android/browser/NetworkStateHandler;

.field private mOldMenuState:I

.field private mOptionsMenuOpen:Z

.field private mPageDialogsHandler:Lme/android/browser/PageDialogsHandler;

.field private mSettings:Lme/android/browser/BrowserSettings;

.field private mShouldShowErrorConsole:Z

.field private mSystemAllowGeolocationOrigins:Lme/android/browser/SystemAllowGeolocationOrigins;

.field private mTabControl:Lme/android/browser/TabControl;

.field private mUi:Lme/android/browser/UI;

.field private mUploadHandler:Lme/android/browser/UploadHandler;

.field private mUrlHandler:Lme/android/browser/UrlHandler;

.field private mVoiceResult:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const-class v0, Lme/android/browser/Controller;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lme/android/browser/Controller;->$assertionsDisabled:Z

    .line 140
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 139
    sput-object v0, Lme/android/browser/Controller;->WINDOW_SHORTCUT_ID_ARRAY:[I

    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 140
    nop

    :array_0
    .array-data 4
        0x7f0d00ba
        0x7f0d00bb
        0x7f0d00bc
        0x7f0d00bd
        0x7f0d00be
        0x7f0d00bf
        0x7f0d00c0
        0x7f0d00c1
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "browser"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lme/android/browser/Controller;->mCurrentMenuState:I

    .line 179
    const v0, 0x7f0d00a0

    iput v0, p0, Lme/android/browser/Controller;->mMenuState:I

    .line 180
    const/4 v0, -0x1

    iput v0, p0, Lme/android/browser/Controller;->mOldMenuState:I

    .line 210
    iput-boolean v3, p0, Lme/android/browser/Controller;->mActivityPaused:Z

    .line 224
    iput-object p1, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    .line 225
    invoke-static {}, Lme/android/browser/BrowserSettings;->getInstance()Lme/android/browser/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/Controller;->mSettings:Lme/android/browser/BrowserSettings;

    .line 226
    new-instance v0, Lme/android/browser/TabControl;

    invoke-direct {v0, p0}, Lme/android/browser/TabControl;-><init>(Lme/android/browser/Controller;)V

    iput-object v0, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    .line 227
    iget-object v0, p0, Lme/android/browser/Controller;->mSettings:Lme/android/browser/BrowserSettings;

    invoke-virtual {v0, p0}, Lme/android/browser/BrowserSettings;->setController(Lme/android/browser/Controller;)V

    .line 228
    invoke-static {p0}, Lme/android/browser/CrashRecoveryHandler;->initialize(Lme/android/browser/Controller;)Lme/android/browser/CrashRecoveryHandler;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/Controller;->mCrashRecoveryHandler:Lme/android/browser/CrashRecoveryHandler;

    .line 229
    iget-object v0, p0, Lme/android/browser/Controller;->mCrashRecoveryHandler:Lme/android/browser/CrashRecoveryHandler;

    invoke-virtual {v0}, Lme/android/browser/CrashRecoveryHandler;->preloadCrashState()V

    .line 230
    new-instance v0, Lme/android/browser/BrowserWebViewFactory;

    invoke-direct {v0, p1}, Lme/android/browser/BrowserWebViewFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lme/android/browser/Controller;->mFactory:Lme/android/browser/WebViewFactory;

    .line 232
    new-instance v0, Lme/android/browser/UrlHandler;

    invoke-direct {v0, p0}, Lme/android/browser/UrlHandler;-><init>(Lme/android/browser/Controller;)V

    iput-object v0, p0, Lme/android/browser/Controller;->mUrlHandler:Lme/android/browser/UrlHandler;

    .line 233
    new-instance v0, Lme/android/browser/IntentHandler;

    iget-object v1, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lme/android/browser/IntentHandler;-><init>(Landroid/app/Activity;Lme/android/browser/Controller;)V

    iput-object v0, p0, Lme/android/browser/Controller;->mIntentHandler:Lme/android/browser/IntentHandler;

    .line 234
    new-instance v0, Lme/android/browser/PageDialogsHandler;

    iget-object v1, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lme/android/browser/PageDialogsHandler;-><init>(Landroid/content/Context;Lme/android/browser/Controller;)V

    iput-object v0, p0, Lme/android/browser/Controller;->mPageDialogsHandler:Lme/android/browser/PageDialogsHandler;

    .line 236
    invoke-direct {p0}, Lme/android/browser/Controller;->startHandler()V

    .line 237
    new-instance v0, Lme/android/browser/Controller$1;

    iget-object v1, p0, Lme/android/browser/Controller;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lme/android/browser/Controller$1;-><init>(Lme/android/browser/Controller;Landroid/os/Handler;)V

    iput-object v0, p0, Lme/android/browser/Controller;->mBookmarksObserver:Landroid/database/ContentObserver;

    .line 247
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 248
    sget-object v1, Ldroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lme/android/browser/Controller;->mBookmarksObserver:Landroid/database/ContentObserver;

    .line 247
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 250
    new-instance v0, Lme/android/browser/NetworkStateHandler;

    iget-object v1, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lme/android/browser/NetworkStateHandler;-><init>(Landroid/app/Activity;Lme/android/browser/Controller;)V

    iput-object v0, p0, Lme/android/browser/Controller;->mNetworkHandler:Lme/android/browser/NetworkStateHandler;

    .line 253
    new-instance v0, Lme/android/browser/SystemAllowGeolocationOrigins;

    iget-object v1, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lme/android/browser/SystemAllowGeolocationOrigins;-><init>(Landroid/content/Context;)V

    .line 252
    iput-object v0, p0, Lme/android/browser/Controller;->mSystemAllowGeolocationOrigins:Lme/android/browser/SystemAllowGeolocationOrigins;

    .line 254
    iget-object v0, p0, Lme/android/browser/Controller;->mSystemAllowGeolocationOrigins:Lme/android/browser/SystemAllowGeolocationOrigins;

    invoke-virtual {v0}, Lme/android/browser/SystemAllowGeolocationOrigins;->start()V

    .line 256
    invoke-direct {p0}, Lme/android/browser/Controller;->openIconDatabase()V

    .line 257
    return-void
.end method

.method static synthetic access$0(Lme/android/browser/Controller;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lme/android/browser/Controller;)Lme/android/browser/UI;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    return-object v0
.end method

.method static synthetic access$2(Lme/android/browser/Controller;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 601
    invoke-direct {p0, p1}, Lme/android/browser/Controller;->copy(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$3(Lme/android/browser/Controller;)Lme/android/browser/TabControl;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    return-object v0
.end method

.method static synthetic access$4(Lme/android/browser/Controller;Landroid/os/Bundle;Landroid/content/Intent;JZ)V
    .locals 0

    .prologue
    .line 300
    invoke-direct/range {p0 .. p5}, Lme/android/browser/Controller;->onPreloginFinished(Landroid/os/Bundle;Landroid/content/Intent;JZ)V

    return-void
.end method

.method static synthetic access$5(Lme/android/browser/Controller;)Lme/android/browser/BrowserSettings;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lme/android/browser/Controller;->mSettings:Lme/android/browser/BrowserSettings;

    return-object v0
.end method

.method static synthetic access$6(Lme/android/browser/Controller;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lme/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$7(Lme/android/browser/Controller;Lme/android/browser/Tab;)V
    .locals 0

    .prologue
    .line 2085
    invoke-direct {p0, p1}, Lme/android/browser/Controller;->updateScreenshot(Lme/android/browser/Tab;)V

    return-void
.end method

.method static synthetic access$8(Lme/android/browser/Controller;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lme/android/browser/Controller;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 602
    iget-object v1, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    .line 603
    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 602
    check-cast v0, Landroid/content/ClipboardManager;

    .line 604
    .local v0, "cm":Landroid/content/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 605
    return-void
.end method

.method private createNewTab(ZZZ)Lme/android/browser/Tab;
    .locals 2
    .param p1, "incognito"    # Z
    .param p2, "setActive"    # Z
    .param p3, "useCurrent"    # Z

    .prologue
    .line 2422
    const/4 v0, 0x0

    .line 2423
    .local v0, "tab":Lme/android/browser/Tab;
    iget-object v1, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1}, Lme/android/browser/TabControl;->canCreateNewTab()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2424
    iget-object v1, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1, p1}, Lme/android/browser/TabControl;->createNewTab(Z)Lme/android/browser/Tab;

    move-result-object v0

    .line 2425
    invoke-virtual {p0, v0}, Lme/android/browser/Controller;->addTab(Lme/android/browser/Tab;)V

    .line 2426
    if-eqz p2, :cond_0

    .line 2427
    invoke-virtual {p0, v0}, Lme/android/browser/Controller;->setActiveTab(Lme/android/browser/Tab;)V

    .line 2437
    :cond_0
    :goto_0
    return-object v0

    .line 2430
    :cond_1
    if-eqz p3, :cond_2

    .line 2431
    iget-object v1, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v0

    .line 2432
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lme/android/browser/Controller;->reuseTab(Lme/android/browser/Tab;Lme/android/browser/IntentHandler$UrlData;)V

    goto :goto_0

    .line 2434
    :cond_2
    iget-object v1, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v1}, Lme/android/browser/UI;->showMaxTabsWarning()V

    goto :goto_0
.end method

.method static createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "view"    # Landroid/webkit/WebView;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v9, 0x0

    .line 2045
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v8

    if-eqz v8, :cond_0

    .line 2046
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move-object v5, v9

    .line 2082
    .end local p0    # "view":Landroid/webkit/WebView;
    :goto_0
    return-object v5

    .line 2052
    .restart local p0    # "view":Landroid/webkit/WebView;
    :cond_1
    const/4 v3, 0x2

    .line 2053
    .local v3, "filter_scale":I
    mul-int/lit8 v7, p1, 0x2

    .line 2054
    .local v7, "scaledWidth":I
    mul-int/lit8 v6, p2, 0x2

    .line 2055
    .local v6, "scaledHeight":I
    sget-object v8, Lme/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    sget-object v8, Lme/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ne v8, v7, :cond_2

    .line 2056
    sget-object v8, Lme/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-eq v8, v6, :cond_4

    .line 2057
    :cond_2
    sget-object v8, Lme/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_3

    .line 2058
    sget-object v8, Lme/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 2059
    sput-object v9, Lme/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 2062
    :cond_3
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 2061
    sput-object v8, Lme/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 2064
    :cond_4
    new-instance v0, Landroid/graphics/Canvas;

    sget-object v8, Lme/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2065
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v1

    .line 2066
    .local v1, "contentWidth":I
    int-to-float v8, v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScale()F

    move-result v10

    int-to-float v11, v1

    mul-float/2addr v10, v11

    div-float v4, v8, v10

    .line 2067
    .local v4, "overviewScale":F
    instance-of v8, p0, Lme/android/browser/BrowserWebView;

    if-eqz v8, :cond_5

    move-object v8, p0

    .line 2068
    check-cast v8, Lme/android/browser/BrowserWebView;

    invoke-virtual {v8}, Lme/android/browser/BrowserWebView;->getTitleHeight()I

    move-result v8

    neg-int v2, v8

    .line 2069
    .local v2, "dy":I
    const/4 v8, 0x0

    int-to-float v10, v2

    mul-float/2addr v10, v4

    invoke-virtual {v0, v8, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2072
    .end local v2    # "dy":I
    :cond_5
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2074
    instance-of v8, p0, Lme/android/browser/BrowserWebView;

    if-eqz v8, :cond_6

    .line 2075
    check-cast p0, Lme/android/browser/BrowserWebView;

    .end local p0    # "view":Landroid/webkit/WebView;
    invoke-virtual {p0, v0}, Lme/android/browser/BrowserWebView;->drawContent(Landroid/graphics/Canvas;)V

    .line 2079
    :goto_1
    sget-object v8, Lme/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 2080
    const/4 v10, 0x1

    .line 2079
    invoke-static {v8, p1, p2, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2081
    .local v5, "ret":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2077
    .end local v5    # "ret":Landroid/graphics/Bitmap;
    .restart local p0    # "view":Landroid/webkit/WebView;
    :cond_6
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method static getDesiredThumbnailHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2040
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2041
    const v1, 0x7f0c0008

    .line 2040
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method static getDesiredThumbnailWidth(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2029
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2030
    const v1, 0x7f0c0007

    .line 2029
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method private getNextTab()Lme/android/browser/Tab;
    .locals 2

    .prologue
    .line 2618
    iget-object v1, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1}, Lme/android/browser/TabControl;->getCurrentPosition()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 2619
    .local v0, "pos":I
    iget-object v1, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1}, Lme/android/browser/TabControl;->getTabCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 2620
    const/4 v0, 0x0

    .line 2622
    :cond_0
    iget-object v1, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1, v0}, Lme/android/browser/TabControl;->getTab(I)Lme/android/browser/Tab;

    move-result-object v1

    return-object v1
.end method

.method private getPrevTab()Lme/android/browser/Tab;
    .locals 2

    .prologue
    .line 2630
    iget-object v1, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1}, Lme/android/browser/TabControl;->getCurrentPosition()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 2631
    .local v0, "pos":I
    if-gez v0, :cond_0

    .line 2632
    iget-object v1, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1}, Lme/android/browser/TabControl;->getTabCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 2634
    :cond_0
    iget-object v1, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1, v0}, Lme/android/browser/TabControl;->getTab(I)Lme/android/browser/Tab;

    move-result-object v1

    return-object v1
.end method

.method private goLive()V
    .locals 3

    .prologue
    .line 1803
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v0

    .line 1804
    .local v0, "t":Lme/android/browser/Tab;
    invoke-virtual {v0}, Lme/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lme/android/browser/Tab;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 1805
    return-void
.end method

.method private maybeUpdateFavicon(Lme/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "originalUrl"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1089
    if-nez p4, :cond_1

    .line 1096
    :cond_0
    :goto_0
    return-void

    .line 1092
    :cond_1
    invoke-virtual {p1}, Lme/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1093
    iget-object v0, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    .line 1094
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1093
    invoke-static {v0, p2, p3, p4}, Lme/android/browser/Bookmarks;->updateFavicon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private onPreloginFinished(Landroid/os/Bundle;Landroid/content/Intent;JZ)V
    .locals 15
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "currentTabId"    # J
    .param p5, "restoreIncognitoTabs"    # Z

    .prologue
    .line 302
    const-wide/16 v1, -0x1

    cmp-long v1, p3, v1

    if-nez v1, :cond_7

    .line 303
    new-instance v1, Lme/android/browser/Controller$PruneThumbnails;

    iget-object v2, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lme/android/browser/Controller$PruneThumbnails;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v1}, Lme/android/browser/BackgroundHandler;->execute(Ljava/lang/Runnable;)V

    .line 304
    if-nez p2, :cond_4

    .line 307
    invoke-virtual {p0}, Lme/android/browser/Controller;->openTabToHomePage()Lme/android/browser/Tab;

    .line 332
    :cond_0
    :goto_0
    iget-object v1, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    iget-object v2, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v2}, Lme/android/browser/TabControl;->getTabs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lme/android/browser/UI;->updateTabs(Ljava/util/List;)V

    .line 356
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lme/android/browser/Controller;->getSettings()Lme/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lme/android/browser/BrowserSettings;->getJsEngineFlags()Ljava/lang/String;

    move-result-object v8

    .line 357
    .local v8, "jsFlags":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 358
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/WebViewClassic;->fromWebView(Landroid/webkit/WebView;)Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/webkit/WebViewClassic;->setJsFlags(Ljava/lang/String;)V

    .line 360
    :cond_2
    if-eqz p2, :cond_3

    .line 361
    const-string v1, "show_bookmarks"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 362
    sget-object v1, Lme/android/browser/UI$ComboViews;->Bookmarks:Lme/android/browser/UI$ComboViews;

    invoke-virtual {p0, v1}, Lme/android/browser/Controller;->bookmarksOrHistoryPicker(Lme/android/browser/UI$ComboViews;)V

    .line 364
    :cond_3
    return-void

    .line 309
    .end local v8    # "jsFlags":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 314
    .local v7, "extra":Landroid/os/Bundle;
    invoke-static/range {p2 .. p2}, Lme/android/browser/IntentHandler;->getUrlDataFromIntent(Landroid/content/Intent;)Lme/android/browser/IntentHandler$UrlData;

    move-result-object v13

    .line 315
    .local v13, "urlData":Lme/android/browser/IntentHandler$UrlData;
    const/4 v11, 0x0

    .line 316
    .local v11, "t":Lme/android/browser/Tab;
    invoke-virtual {v13}, Lme/android/browser/IntentHandler$UrlData;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 317
    invoke-virtual {p0}, Lme/android/browser/Controller;->openTabToHomePage()Lme/android/browser/Tab;

    move-result-object v11

    .line 321
    :goto_2
    if-eqz v11, :cond_5

    .line 322
    const-string v1, "com.android.browser.application_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lme/android/browser/Tab;->setAppId(Ljava/lang/String;)V

    .line 324
    :cond_5
    invoke-virtual {v11}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v14

    .line 325
    .local v14, "webView":Landroid/webkit/WebView;
    if-eqz v7, :cond_0

    .line 326
    const-string v1, "browser.initialZoomLevel"

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 327
    .local v10, "scale":I
    if-lez v10, :cond_0

    const/16 v1, 0x3e8

    if-gt v10, v1, :cond_0

    .line 328
    invoke-virtual {v14, v10}, Landroid/webkit/WebView;->setInitialScale(I)V

    goto :goto_0

    .line 319
    .end local v10    # "scale":I
    .end local v14    # "webView":Landroid/webkit/WebView;
    :cond_6
    invoke-virtual {p0, v13}, Lme/android/browser/Controller;->openTab(Lme/android/browser/IntentHandler$UrlData;)Lme/android/browser/Tab;

    move-result-object v11

    goto :goto_2

    .line 334
    .end local v7    # "extra":Landroid/os/Bundle;
    .end local v11    # "t":Lme/android/browser/Tab;
    .end local v13    # "urlData":Lme/android/browser/IntentHandler$UrlData;
    :cond_7
    iget-object v1, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    .line 335
    iget-object v2, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v2}, Lme/android/browser/UI;->needsRestoreAllTabs()Z

    move-result v6

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    .line 334
    invoke-virtual/range {v1 .. v6}, Lme/android/browser/TabControl;->restoreState(Landroid/os/Bundle;JZZ)V

    .line 336
    iget-object v1, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1}, Lme/android/browser/TabControl;->getTabs()Ljava/util/List;

    move-result-object v12

    .line 337
    .local v12, "tabs":Ljava/util/List;, "Ljava/util/List<Lme/android/browser/Tab;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 338
    .local v9, "restoredTabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_9

    .line 341
    new-instance v1, Lme/android/browser/Controller$PruneThumbnails;

    iget-object v2, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v9}, Lme/android/browser/Controller$PruneThumbnails;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v1}, Lme/android/browser/BackgroundHandler;->execute(Ljava/lang/Runnable;)V

    .line 342
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_8

    .line 343
    invoke-virtual {p0}, Lme/android/browser/Controller;->openTabToHomePage()Lme/android/browser/Tab;

    .line 345
    :cond_8
    iget-object v1, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v1, v12}, Lme/android/browser/UI;->updateTabs(Ljava/util/List;)V

    .line 348
    iget-object v1, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/android/browser/Controller;->setActiveTab(Lme/android/browser/Tab;)V

    .line 351
    if-eqz p2, :cond_1

    .line 352
    iget-object v1, p0, Lme/android/browser/Controller;->mIntentHandler:Lme/android/browser/IntentHandler;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lme/android/browser/IntentHandler;->onNewIntent(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 338
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lme/android/browser/Tab;

    .line 339
    .restart local v11    # "t":Lme/android/browser/Tab;
    invoke-virtual {v11}, Lme/android/browser/Tab;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private openIconDatabase()V
    .locals 2

    .prologue
    .line 463
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    .line 464
    .local v0, "instance":Landroid/webkit/WebIconDatabase;
    new-instance v1, Lme/android/browser/Controller$3;

    invoke-direct {v1, p0, v0}, Lme/android/browser/Controller$3;-><init>(Lme/android/browser/Controller;Landroid/webkit/WebIconDatabase;)V

    invoke-static {v1}, Lme/android/browser/BackgroundHandler;->execute(Ljava/lang/Runnable;)V

    .line 471
    return-void
.end method

.method private pauseWebViewTimers(Lme/android/browser/Tab;)Z
    .locals 3
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    const/4 v0, 0x1

    .line 739
    if-nez p1, :cond_0

    .line 746
    :goto_0
    return v0

    .line 741
    :cond_0
    invoke-virtual {p1}, Lme/android/browser/Tab;->inPageLoad()Z

    move-result v1

    if-nez v1, :cond_1

    .line 742
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 743
    invoke-static {}, Lme/android/browser/WebViewTimersControl;->getInstance()Lme/android/browser/WebViewTimersControl;

    move-result-object v1

    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/android/browser/WebViewTimersControl;->onBrowserActivityPause(Landroid/webkit/WebView;)V

    goto :goto_0

    .line 746
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, Lme/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lme/android/browser/Controller;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 716
    iget-object v0, p0, Lme/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 718
    :cond_0
    return-void
.end method

.method private resumeWebViewTimers(Lme/android/browser/Tab;)V
    .locals 3
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 725
    invoke-virtual {p1}, Lme/android/browser/Tab;->inPageLoad()Z

    move-result v0

    .line 726
    .local v0, "inLoad":Z
    iget-boolean v2, p0, Lme/android/browser/Controller;->mActivityPaused:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v2, p0, Lme/android/browser/Controller;->mActivityPaused:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 727
    :cond_1
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 728
    invoke-virtual {p1}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 729
    .local v1, "w":Landroid/webkit/WebView;
    invoke-static {}, Lme/android/browser/WebViewTimersControl;->getInstance()Lme/android/browser/WebViewTimersControl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lme/android/browser/WebViewTimersControl;->onBrowserActivityResume(Landroid/webkit/WebView;)V

    .line 731
    .end local v1    # "w":Landroid/webkit/WebView;
    :cond_2
    return-void
.end method

.method private shareCurrentPage(Lme/android/browser/Tab;)V
    .locals 7
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 563
    if-eqz p1, :cond_0

    .line 564
    iget-object v0, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lme/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 565
    invoke-virtual {p1}, Lme/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lme/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 566
    invoke-virtual {p1}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    .line 567
    iget-object v5, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lme/android/browser/Controller;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v5

    .line 568
    iget-object v6, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lme/android/browser/Controller;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v6

    .line 566
    invoke-static {v4, v5, v6}, Lme/android/browser/Controller;->createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 564
    invoke-static {v0, v1, v2, v3, v4}, Lme/android/browser/Controller;->sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 570
    :cond_0
    return-void
.end method

.method static final sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;
    .param p4, "screenshot"    # Landroid/graphics/Bitmap;

    .prologue
    .line 587
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 588
    .local v0, "send":Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    const-string v1, "share_favicon"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 592
    const-string v1, "share_screenshot"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 595
    const v1, 0x7f08006a

    .line 594
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :goto_0
    return-void

    .line 596
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showPreloadedTab(Lme/android/browser/IntentHandler$UrlData;)Lme/android/browser/Tab;
    .locals 6
    .param p1, "urlData"    # Lme/android/browser/IntentHandler$UrlData;

    .prologue
    const/4 v2, 0x0

    .line 2339
    invoke-virtual {p1}, Lme/android/browser/IntentHandler$UrlData;->isPreloaded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2363
    :goto_0
    return-object v2

    .line 2342
    :cond_0
    invoke-virtual {p1}, Lme/android/browser/IntentHandler$UrlData;->getPreloadedTab()Lme/android/browser/PreloadedTabControl;

    move-result-object v3

    .line 2343
    .local v3, "tabControl":Lme/android/browser/PreloadedTabControl;
    invoke-virtual {p1}, Lme/android/browser/IntentHandler$UrlData;->getSearchBoxQueryToSubmit()Ljava/lang/String;

    move-result-object v1

    .line 2344
    .local v1, "sbQuery":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2345
    iget-object v4, p1, Lme/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    iget-object v5, p1, Lme/android/browser/IntentHandler$UrlData;->mHeaders:Ljava/util/Map;

    invoke-virtual {v3, v1, v4, v5}, Lme/android/browser/PreloadedTabControl;->searchBoxSubmit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2347
    invoke-virtual {v3}, Lme/android/browser/PreloadedTabControl;->destroy()V

    goto :goto_0

    .line 2352
    :cond_1
    iget-object v4, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v4}, Lme/android/browser/TabControl;->canCreateNewTab()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2353
    iget-object v4, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v5

    invoke-virtual {v4, v5}, Lme/android/browser/TabControl;->getLeastUsedTab(Lme/android/browser/Tab;)Lme/android/browser/Tab;

    move-result-object v0

    .line 2354
    .local v0, "leastUsed":Lme/android/browser/Tab;
    if-eqz v0, :cond_2

    .line 2355
    invoke-virtual {p0, v0}, Lme/android/browser/Controller;->closeTab(Lme/android/browser/Tab;)V

    .line 2358
    .end local v0    # "leastUsed":Lme/android/browser/Tab;
    :cond_2
    invoke-virtual {v3}, Lme/android/browser/PreloadedTabControl;->getTab()Lme/android/browser/Tab;

    move-result-object v2

    .line 2359
    .local v2, "t":Lme/android/browser/Tab;
    invoke-virtual {v2}, Lme/android/browser/Tab;->refreshIdAfterPreload()V

    .line 2360
    iget-object v4, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v4, v2}, Lme/android/browser/TabControl;->addPreloadedTab(Lme/android/browser/Tab;)V

    .line 2361
    invoke-virtual {p0, v2}, Lme/android/browser/Controller;->addTab(Lme/android/browser/Tab;)V

    .line 2362
    invoke-virtual {p0, v2}, Lme/android/browser/Controller;->setActiveTab(Lme/android/browser/Tab;)V

    goto :goto_0
.end method

.method private startHandler()V
    .locals 1

    .prologue
    .line 474
    new-instance v0, Lme/android/browser/Controller$4;

    invoke-direct {v0, p0}, Lme/android/browser/Controller$4;-><init>(Lme/android/browser/Controller;)V

    iput-object v0, p0, Lme/android/browser/Controller;->mHandler:Landroid/os/Handler;

    .line 550
    return-void
.end method

.method private updateInLoadMenuItems(Landroid/view/Menu;Lme/android/browser/Tab;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 1458
    if-nez p1, :cond_1

    .line 1469
    :cond_0
    :goto_0
    return-void

    .line 1461
    :cond_1
    const v2, 0x7f0d00a2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1462
    .local v0, "dest":Landroid/view/MenuItem;
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lme/android/browser/Tab;->inPageLoad()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1463
    const v2, 0x7f0d00c5

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1465
    .local v1, "src":Landroid/view/MenuItem;
    :goto_1
    if-eqz v1, :cond_0

    .line 1466
    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1467
    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 1464
    .end local v1    # "src":Landroid/view/MenuItem;
    :cond_2
    const v2, 0x7f0d00c6

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    goto :goto_1
.end method

.method private updateScreenshot(Lme/android/browser/Tab;)V
    .locals 7
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 2091
    invoke-virtual {p1}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    .line 2092
    .local v6, "view":Landroid/webkit/WebView;
    if-nez v6, :cond_1

    .line 2144
    :cond_0
    :goto_0
    return-void

    .line 2096
    :cond_1
    invoke-virtual {p1}, Lme/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 2097
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    .line 2098
    .local v3, "originalUrl":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2105
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lme/android/browser/Tab;->isBookmarkedSite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2109
    :cond_2
    iget-object v0, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lme/android/browser/Controller;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v0

    .line 2110
    iget-object v1, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lme/android/browser/Controller;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v1

    .line 2109
    invoke-static {v6, v0, v1}, Lme/android/browser/Controller;->createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2111
    .local v5, "bm":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    .line 2115
    iget-object v0, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2116
    .local v2, "cr":Landroid/content/ContentResolver;
    new-instance v0, Lme/android/browser/Controller$10;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lme/android/browser/Controller$10;-><init>(Lme/android/browser/Controller;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 2143
    invoke-virtual {v0, v1}, Lme/android/browser/Controller$10;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected addTab(Lme/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 2262
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0, p1}, Lme/android/browser/UI;->addTab(Lme/android/browser/Tab;)V

    .line 2263
    return-void
.end method

.method public attachSubWindow(Lme/android/browser/Tab;)V
    .locals 2
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 2332
    invoke-virtual {p1}, Lme/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2333
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-virtual {p1}, Lme/android/browser/Tab;->getSubViewContainer()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lme/android/browser/UI;->attachSubWindow(Landroid/view/View;)V

    .line 2334
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 2336
    :cond_0
    return-void
.end method

.method public bookmarkCurrentPage()V
    .locals 2

    .prologue
    .line 1796
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lme/android/browser/Controller;->createBookmarkCurrentPageIntent(Z)Landroid/content/Intent;

    move-result-object v0

    .line 1797
    .local v0, "bookmarkIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1798
    iget-object v1, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1800
    :cond_0
    return-void
.end method

.method public bookmarkedStatusHasChanged(Lme/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 1101
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0, p1}, Lme/android/browser/UI;->bookmarkedStatusHasChanged(Lme/android/browser/Tab;)V

    .line 1102
    return-void
.end method

.method public bookmarksOrHistoryPicker(Lme/android/browser/UI$ComboViews;)V
    .locals 3
    .param p1, "startView"    # Lme/android/browser/UI$ComboViews;

    .prologue
    .line 1223
    iget-object v1, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1}, Lme/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1235
    :goto_0
    return-void

    .line 1227
    :cond_0
    invoke-virtual {p0}, Lme/android/browser/Controller;->isInCustomActionMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1228
    invoke-virtual {p0}, Lme/android/browser/Controller;->endActionMode()V

    .line 1230
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1232
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "disable_new_window"

    .line 1233
    iget-object v1, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1}, Lme/android/browser/TabControl;->canCreateNewTab()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 1232
    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1234
    iget-object v1, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v1, p1, v0}, Lme/android/browser/UI;->showComboView(Lme/android/browser/UI$ComboViews;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1233
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public closeCurrentTab()V
    .locals 1

    .prologue
    .line 2473
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lme/android/browser/Controller;->closeCurrentTab(Z)V

    .line 2474
    return-void
.end method

.method protected closeCurrentTab(Z)V
    .locals 5
    .param p1, "andQuit"    # Z

    .prologue
    .line 2477
    iget-object v3, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v3}, Lme/android/browser/TabControl;->getTabCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2478
    iget-object v3, p0, Lme/android/browser/Controller;->mCrashRecoveryHandler:Lme/android/browser/CrashRecoveryHandler;

    invoke-virtual {v3}, Lme/android/browser/CrashRecoveryHandler;->clearState()V

    .line 2479
    iget-object v3, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v4

    invoke-virtual {v3, v4}, Lme/android/browser/TabControl;->removeTab(Lme/android/browser/Tab;)Z

    .line 2480
    iget-object v3, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 2499
    :cond_0
    :goto_0
    return-void

    .line 2483
    :cond_1
    iget-object v3, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v3}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v0

    .line 2484
    .local v0, "current":Lme/android/browser/Tab;
    iget-object v3, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v3}, Lme/android/browser/TabControl;->getCurrentPosition()I

    move-result v2

    .line 2485
    .local v2, "pos":I
    invoke-virtual {v0}, Lme/android/browser/Tab;->getParent()Lme/android/browser/Tab;

    move-result-object v1

    .line 2486
    .local v1, "newTab":Lme/android/browser/Tab;
    if-nez v1, :cond_2

    .line 2487
    iget-object v3, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lme/android/browser/TabControl;->getTab(I)Lme/android/browser/Tab;

    move-result-object v1

    .line 2488
    if-nez v1, :cond_2

    .line 2489
    iget-object v3, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Lme/android/browser/TabControl;->getTab(I)Lme/android/browser/Tab;

    move-result-object v1

    .line 2492
    :cond_2
    if-eqz p1, :cond_3

    .line 2493
    iget-object v3, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v3, v1}, Lme/android/browser/TabControl;->setCurrentTab(Lme/android/browser/Tab;)Z

    .line 2494
    invoke-virtual {p0, v0}, Lme/android/browser/Controller;->closeTab(Lme/android/browser/Tab;)V

    goto :goto_0

    .line 2495
    :cond_3
    invoke-virtual {p0, v1}, Lme/android/browser/Controller;->switchToTab(Lme/android/browser/Tab;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2497
    invoke-virtual {p0, v0}, Lme/android/browser/Controller;->closeTab(Lme/android/browser/Tab;)V

    goto :goto_0
.end method

.method protected closeEmptyTab()V
    .locals 2

    .prologue
    .line 2282
    iget-object v1, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v0

    .line 2283
    .local v0, "current":Lme/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 2284
    invoke-virtual {v0}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v1

    if-nez v1, :cond_0

    .line 2285
    invoke-virtual {p0}, Lme/android/browser/Controller;->closeCurrentTab()V

    .line 2287
    :cond_0
    return-void
.end method

.method public closeTab(Lme/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 2507
    iget-object v0, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v0}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2508
    invoke-virtual {p0}, Lme/android/browser/Controller;->closeCurrentTab()V

    .line 2512
    :goto_0
    return-void

    .line 2510
    :cond_0
    invoke-virtual {p0, p1}, Lme/android/browser/Controller;->removeTab(Lme/android/browser/Tab;)V

    goto :goto_0
.end method

.method public createBookmarkCurrentPageIntent(Z)Landroid/content/Intent;
    .locals 7
    .param p1, "editExisting"    # Z

    .prologue
    .line 1983
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 1984
    .local v3, "w":Landroid/webkit/WebView;
    if-nez v3, :cond_0

    .line 1985
    const/4 v0, 0x0

    .line 2010
    :goto_0
    return-object v0

    .line 1987
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    .line 1988
    const-class v5, Lme/android/browser/AddBookmarkPage;

    .line 1987
    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1989
    .local v0, "i":Landroid/content/Intent;
    const-string v4, "url"

    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1990
    const-string v4, "title"

    invoke-virtual {v3}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1991
    invoke-virtual {v3}, Landroid/webkit/WebView;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v2

    .line 1992
    .local v2, "touchIconUrl":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1993
    const-string v4, "touch_icon_url"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1994
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 1995
    .local v1, "settings":Landroid/webkit/WebSettings;
    if-eqz v1, :cond_1

    .line 1996
    const-string v4, "user_agent"

    .line 1997
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    .line 1996
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2000
    .end local v1    # "settings":Landroid/webkit/WebSettings;
    :cond_1
    const-string v4, "thumbnail"

    .line 2001
    iget-object v5, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lme/android/browser/Controller;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v5

    .line 2002
    iget-object v6, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lme/android/browser/Controller;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v6

    .line 2001
    invoke-static {v3, v5, v6}, Lme/android/browser/Controller;->createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2000
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2003
    const-string v4, "favicon"

    invoke-virtual {v3}, Landroid/webkit/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2004
    if-eqz p1, :cond_2

    .line 2005
    const-string v4, "check_for_dupe"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2009
    :cond_2
    const-string v4, "gravity"

    const/16 v5, 0x35

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public createNewSnapshotTab(JZ)Lme/android/browser/SnapshotTab;
    .locals 2
    .param p1, "snapshotId"    # J
    .param p3, "setActive"    # Z

    .prologue
    .line 2442
    const/4 v0, 0x0

    .line 2443
    .local v0, "tab":Lme/android/browser/SnapshotTab;
    iget-object v1, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1}, Lme/android/browser/TabControl;->canCreateNewTab()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2444
    iget-object v1, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1, p1, p2}, Lme/android/browser/TabControl;->createSnapshotTab(J)Lme/android/browser/SnapshotTab;

    move-result-object v0

    .line 2445
    invoke-virtual {p0, v0}, Lme/android/browser/Controller;->addTab(Lme/android/browser/Tab;)V

    .line 2446
    if-eqz p3, :cond_0

    .line 2447
    invoke-virtual {p0, v0}, Lme/android/browser/Controller;->setActiveTab(Lme/android/browser/Tab;)V

    .line 2452
    :cond_0
    :goto_0
    return-object v0

    .line 2450
    :cond_1
    iget-object v1, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v1}, Lme/android/browser/UI;->showMaxTabsWarning()V

    goto :goto_0
.end method

.method createSaveState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 679
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 680
    .local v0, "saveState":Landroid/os/Bundle;
    iget-object v1, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1, v0}, Lme/android/browser/TabControl;->saveState(Landroid/os/Bundle;)V

    .line 681
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 683
    const-string v1, "lastActiveDate"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 685
    :cond_0
    return-object v0
.end method

.method public createSubWindow(Lme/android/browser/Tab;)V
    .locals 4
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 410
    invoke-virtual {p0}, Lme/android/browser/Controller;->endActionMode()V

    .line 411
    invoke-virtual {p1}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 412
    .local v0, "mainView":Landroid/webkit/WebView;
    iget-object v3, p0, Lme/android/browser/Controller;->mFactory:Lme/android/browser/WebViewFactory;

    if-nez v0, :cond_0

    .line 413
    const/4 v2, 0x0

    .line 412
    :goto_0
    invoke-interface {v3, v2}, Lme/android/browser/WebViewFactory;->createWebView(Z)Landroid/webkit/WebView;

    move-result-object v1

    .line 415
    .local v1, "subView":Landroid/webkit/WebView;
    iget-object v2, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v2, p1, v1}, Lme/android/browser/UI;->createSubWindow(Lme/android/browser/Tab;Landroid/webkit/WebView;)V

    .line 416
    return-void

    .line 414
    .end local v1    # "subView":Landroid/webkit/WebView;
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v2

    goto :goto_0
.end method

.method didUserStopLoading()Z
    .locals 1

    .prologue
    .line 812
    iget-boolean v0, p0, Lme/android/browser/Controller;->mLoadStopped:Z

    return v0
.end method

.method public dismissSubWindow(Lme/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 2314
    invoke-virtual {p0, p1}, Lme/android/browser/Controller;->removeSubWindow(Lme/android/browser/Tab;)V

    .line 2316
    invoke-virtual {p1}, Lme/android/browser/Tab;->dismissSubWindow()V

    .line 2317
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 2318
    .local v0, "wv":Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 2319
    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 2321
    :cond_0
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2867
    iget-boolean v0, p0, Lme/android/browser/Controller;->mBlockEvents:Z

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2847
    iget-boolean v0, p0, Lme/android/browser/Controller;->mBlockEvents:Z

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2852
    iget-boolean v0, p0, Lme/android/browser/Controller;->mBlockEvents:Z

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2857
    iget-boolean v0, p0, Lme/android/browser/Controller;->mBlockEvents:Z

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2862
    iget-boolean v0, p0, Lme/android/browser/Controller;->mBlockEvents:Z

    return v0
.end method

.method doStart(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 270
    if-eqz p1, :cond_2

    .line 271
    const-string v0, "lastActiveDate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    move-object v7, v0

    .line 272
    .local v7, "lastActiveDate":Ljava/util/Calendar;
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 273
    .local v8, "today":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 274
    .local v9, "yesterday":Ljava/util/Calendar;
    const/4 v0, 0x5

    const/4 v1, -0x1

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 276
    if-eqz v7, :cond_0

    .line 277
    invoke-virtual {v7, v9}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    .line 276
    if-eqz v0, :cond_3

    :cond_0
    const/4 v6, 0x0

    .line 282
    .local v6, "restoreIncognitoTabs":Z
    :goto_1
    iget-object v0, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v0, p1, v6}, Lme/android/browser/TabControl;->canRestoreState(Landroid/os/Bundle;Z)J

    move-result-wide v4

    .line 284
    .local v4, "currentTabId":J
    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-nez v0, :cond_1

    .line 288
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 291
    :cond_1
    iget-object v10, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    .line 292
    new-instance v0, Lme/android/browser/Controller$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lme/android/browser/Controller$2;-><init>(Lme/android/browser/Controller;Landroid/os/Bundle;Landroid/content/Intent;JZ)V

    .line 291
    invoke-static {v10, v0}, Lme/android/browser/GoogleAccountLogin;->startLoginIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 298
    return-void

    .line 271
    .end local v4    # "currentTabId":J
    .end local v6    # "restoreIncognitoTabs":Z
    .end local v7    # "lastActiveDate":Ljava/util/Calendar;
    .end local v8    # "today":Ljava/util/Calendar;
    .end local v9    # "yesterday":Ljava/util/Calendar;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 276
    .restart local v7    # "lastActiveDate":Ljava/util/Calendar;
    .restart local v8    # "today":Ljava/util/Calendar;
    .restart local v9    # "yesterday":Ljava/util/Calendar;
    :cond_3
    const/4 v6, 0x1

    goto :goto_1
.end method

.method public doUpdateVisitedHistory(Lme/android/browser/Tab;Z)V
    .locals 6
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "isReload"    # Z

    .prologue
    const/4 v2, 0x0

    .line 977
    invoke-virtual {p1}, Lme/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 986
    :cond_0
    :goto_0
    return-void

    .line 978
    :cond_1
    invoke-virtual {p1}, Lme/android/browser/Tab;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 980
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 981
    const/4 v1, 0x1

    const-string v3, "about:"

    const/4 v5, 0x6

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 984
    iget-object v1, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lme/android/browser/DataController;->getInstance(Landroid/content/Context;)Lme/android/browser/DataController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lme/android/browser/DataController;->updateVisitedHistory(Ljava/lang/String;)V

    .line 985
    iget-object v1, p0, Lme/android/browser/Controller;->mCrashRecoveryHandler:Lme/android/browser/CrashRecoveryHandler;

    invoke-virtual {v1}, Lme/android/browser/CrashRecoveryHandler;->backupState()V

    goto :goto_0
.end method

.method public editUrl()V
    .locals 3

    .prologue
    .line 1117
    iget-boolean v0, p0, Lme/android/browser/Controller;->mOptionsMenuOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 1118
    :cond_0
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lme/android/browser/UI;->editUrl(ZZ)V

    .line 1119
    return-void
.end method

.method public endActionMode()V
    .locals 1

    .prologue
    .line 1950
    iget-object v0, p0, Lme/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1951
    iget-object v0, p0, Lme/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1953
    :cond_0
    return-void
.end method

.method public findOnPage()V
    .locals 3

    .prologue
    .line 1783
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->showFindDialog(Ljava/lang/String;Z)Z

    .line 1784
    return-void
.end method

.method getActionModeHeight()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1922
    iget-object v2, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    .line 1923
    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x10102eb

    aput v4, v3, v5

    .line 1922
    invoke-virtual {v2, v3}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1924
    .local v0, "actionBarSizeTypedArray":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v1, v2

    .line 1925
    .local v1, "size":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1926
    return v1
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getCurrentTab()Lme/android/browser/Tab;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v0}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTopWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1903
    iget-object v0, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v0}, Lme/android/browser/TabControl;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1908
    iget-object v0, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v0}, Lme/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0}, Lme/android/browser/UI;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getIntentHandler()Lme/android/browser/IntentHandler;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lme/android/browser/Controller;->mIntentHandler:Lme/android/browser/IntentHandler;

    return-object v0
.end method

.method getMaxTabs()I
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getSettings()Lme/android/browser/BrowserSettings;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lme/android/browser/Controller;->mSettings:Lme/android/browser/BrowserSettings;

    return-object v0
.end method

.method public getTabControl()Lme/android/browser/TabControl;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    return-object v0
.end method

.method public getTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lme/android/browser/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    iget-object v0, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v0}, Lme/android/browser/TabControl;->getTabs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUi()Lme/android/browser/UI;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0}, Lme/android/browser/UI;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 991
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    new-instance v0, Lme/android/browser/Controller$5;

    invoke-direct {v0, p0, p1}, Lme/android/browser/Controller$5;-><init>(Lme/android/browser/Controller;Landroid/webkit/ValueCallback;)V

    .line 1001
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;[Ljava/lang/String;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1002
    return-void
.end method

.method public getWebViewFactory()Lme/android/browser/WebViewFactory;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lme/android/browser/Controller;->mFactory:Lme/android/browser/WebViewFactory;

    return-object v0
.end method

.method goBackOnePageOrQuit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2575
    iget-object v2, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v2}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v0

    .line 2576
    .local v0, "current":Lme/android/browser/Tab;
    if-nez v0, :cond_0

    .line 2584
    iget-object v2, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 2611
    :goto_0
    return-void

    .line 2587
    :cond_0
    invoke-virtual {v0}, Lme/android/browser/Tab;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2588
    invoke-virtual {v0}, Lme/android/browser/Tab;->goBack()V

    goto :goto_0

    .line 2592
    :cond_1
    invoke-virtual {v0}, Lme/android/browser/Tab;->getParent()Lme/android/browser/Tab;

    move-result-object v1

    .line 2593
    .local v1, "parent":Lme/android/browser/Tab;
    if-eqz v1, :cond_2

    .line 2594
    invoke-virtual {p0, v1}, Lme/android/browser/Controller;->switchToTab(Lme/android/browser/Tab;)Z

    .line 2596
    invoke-virtual {p0, v0}, Lme/android/browser/Controller;->closeTab(Lme/android/browser/Tab;)V

    goto :goto_0

    .line 2598
    :cond_2
    invoke-virtual {v0}, Lme/android/browser/Tab;->getAppId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lme/android/browser/Tab;->closeOnBack()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2599
    :cond_3
    invoke-virtual {p0, v3}, Lme/android/browser/Controller;->closeCurrentTab(Z)V

    .line 2608
    :cond_4
    iget-object v2, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method public handleNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 622
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0}, Lme/android/browser/UI;->isWebShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lme/android/browser/UI;->showWeb(Z)V

    .line 625
    :cond_0
    iget-object v0, p0, Lme/android/browser/Controller;->mIntentHandler:Lme/android/browser/IntentHandler;

    invoke-virtual {v0, p1}, Lme/android/browser/IntentHandler;->onNewIntent(Landroid/content/Intent;)V

    .line 626
    return-void
.end method

.method public hideAutoLogin(Lme/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 1077
    sget-boolean v0, Lme/android/browser/Controller;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lme/android/browser/Tab;->inForeground()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1078
    :cond_0
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0, p1}, Lme/android/browser/UI;->hideAutoLogin(Lme/android/browser/Tab;)V

    .line 1079
    return-void
.end method

.method public hideCustomView()V
    .locals 1

    .prologue
    .line 1140
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0}, Lme/android/browser/UI;->isCustomViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0}, Lme/android/browser/UI;->onHideCustomView()V

    .line 1143
    iget v0, p0, Lme/android/browser/Controller;->mOldMenuState:I

    iput v0, p0, Lme/android/browser/Controller;->mMenuState:I

    .line 1144
    const/4 v0, -0x1

    iput v0, p0, Lme/android/browser/Controller;->mOldMenuState:I

    .line 1145
    iget-object v0, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1147
    :cond_0
    return-void
.end method

.method protected isActivityPaused()Z
    .locals 1

    .prologue
    .line 773
    iget-boolean v0, p0, Lme/android/browser/Controller;->mActivityPaused:Z

    return v0
.end method

.method public isInCustomActionMode()Z
    .locals 1

    .prologue
    .line 1942
    iget-object v0, p0, Lme/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInLoad()Z
    .locals 2

    .prologue
    .line 1967
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v0

    .line 1968
    .local v0, "tab":Lme/android/browser/Tab;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lme/android/browser/Tab;->inPageLoad()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMenuDown()Z
    .locals 1

    .prologue
    .line 2797
    iget-boolean v0, p0, Lme/android/browser/Controller;->mMenuIsDown:Z

    return v0
.end method

.method isMenuOrCtrlKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 2638
    const/16 v0, 0x52

    if-eq v0, p1, :cond_0

    .line 2639
    const/16 v0, 0x71

    if-eq v0, p1, :cond_0

    .line 2640
    const/16 v0, 0x72

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 2638
    goto :goto_0
.end method

.method public loadUrl(Lme/android/browser/Tab;Ljava/lang/String;)V
    .locals 1
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 2537
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lme/android/browser/Controller;->loadUrl(Lme/android/browser/Tab;Ljava/lang/String;Ljava/util/Map;)V

    .line 2538
    return-void
.end method

.method protected loadUrl(Lme/android/browser/Tab;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/android/browser/Tab;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2541
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 2542
    invoke-virtual {p0, p1}, Lme/android/browser/Controller;->dismissSubWindow(Lme/android/browser/Tab;)V

    .line 2543
    invoke-virtual {p1, p2, p3}, Lme/android/browser/Tab;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 2544
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0, p1}, Lme/android/browser/UI;->onProgressChanged(Lme/android/browser/Tab;)V

    .line 2546
    :cond_0
    return-void
.end method

.method protected loadUrlDataIn(Lme/android/browser/Tab;Lme/android/browser/IntentHandler$UrlData;)V
    .locals 2
    .param p1, "t"    # Lme/android/browser/Tab;
    .param p2, "data"    # Lme/android/browser/IntentHandler$UrlData;

    .prologue
    .line 2555
    if-eqz p2, :cond_0

    .line 2556
    invoke-virtual {p2}, Lme/android/browser/IntentHandler$UrlData;->isPreloaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2559
    iget-object v0, p2, Lme/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    iget-object v1, p2, Lme/android/browser/IntentHandler$UrlData;->mHeaders:Ljava/util/Map;

    invoke-virtual {p0, p1, v0, v1}, Lme/android/browser/Controller;->loadUrl(Lme/android/browser/Tab;Ljava/lang/String;Ljava/util/Map;)V

    .line 2562
    :cond_0
    return-void
.end method

.method protected loadUrlFromContext(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 2516
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v0

    .line 2517
    .local v0, "tab":Lme/android/browser/Tab;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 2519
    .local v1, "view":Landroid/webkit/WebView;
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 2520
    invoke-static {p1}, Lme/android/browser/UrlUtils;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2521
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->fromWebView(Landroid/webkit/WebView;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v2

    .line 2522
    invoke-virtual {v2, v1, p1}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2523
    invoke-virtual {p0, v0, p1}, Lme/android/browser/Controller;->loadUrl(Lme/android/browser/Tab;Ljava/lang/String;)V

    .line 2526
    :cond_0
    return-void

    .line 2517
    .end local v1    # "view":Landroid/webkit/WebView;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1961
    invoke-virtual {p0}, Lme/android/browser/Controller;->isInCustomActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1964
    :goto_0
    return-void

    .line 1962
    :cond_0
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-virtual {p0}, Lme/android/browser/Controller;->isInLoad()Z

    move-result v1

    invoke-interface {v0, v1}, Lme/android/browser/UI;->onActionModeFinished(Z)V

    .line 1963
    const/4 v0, 0x0

    iput-object v0, p0, Lme/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1933
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0, p1}, Lme/android/browser/UI;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 1934
    iput-object p1, p0, Lme/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    .line 1935
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1152
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v11

    if-nez v11, :cond_0

    .line 1214
    :goto_0
    return-void

    .line 1153
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1213
    :cond_1
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/WebView;->requestFocus()Z

    goto :goto_0

    .line 1155
    :pswitch_1
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_1

    if-eqz p3, :cond_1

    .line 1156
    const-string v11, "android.intent.extra.TEXT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1157
    .local v2, "action":Ljava/lang/String;
    const-string v11, "privacy_clear_history"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1158
    iget-object v11, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v11}, Lme/android/browser/TabControl;->removeParentChildRelationShips()V

    goto :goto_1

    .line 1164
    .end local v2    # "action":Ljava/lang/String;
    :pswitch_2
    iget-object v11, p0, Lme/android/browser/Controller;->mUploadHandler:Lme/android/browser/UploadHandler;

    if-eqz v11, :cond_1

    .line 1165
    iget-object v11, p0, Lme/android/browser/Controller;->mUploadHandler:Lme/android/browser/UploadHandler;

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v11, v0, v1}, Lme/android/browser/UploadHandler;->onResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 1171
    :pswitch_3
    invoke-virtual {p0}, Lme/android/browser/Controller;->getSettings()Lme/android/browser/BrowserSettings;

    move-result-object v11

    invoke-virtual {v11}, Lme/android/browser/BrowserSettings;->getAutoFillProfile()Landroid/webkit/WebSettingsClassic$AutoFillProfile;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 1172
    iget-object v11, p0, Lme/android/browser/Controller;->mAutoFillSetupMessage:Landroid/os/Message;

    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    .line 1173
    const/4 v11, 0x0

    iput-object v11, p0, Lme/android/browser/Controller;->mAutoFillSetupMessage:Landroid/os/Message;

    goto :goto_1

    .line 1177
    :pswitch_4
    if-eqz p3, :cond_1

    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_1

    .line 1180
    iget-object v11, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lme/android/browser/UI;->showWeb(Z)V

    .line 1181
    const-string v11, "android.intent.action.VIEW"

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1182
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v7

    .line 1183
    .local v7, "t":Lme/android/browser/Tab;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 1184
    .local v8, "uri":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v7, v11}, Lme/android/browser/Controller;->loadUrl(Lme/android/browser/Tab;Ljava/lang/String;)V

    goto :goto_1

    .line 1185
    .end local v7    # "t":Lme/android/browser/Tab;
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_2
    const-string v11, "open_all"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1187
    const-string v11, "open_all"

    .line 1186
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1188
    .local v10, "urls":[Ljava/lang/String;
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v5

    .line 1189
    .local v5, "parent":Lme/android/browser/Tab;
    array-length v13, v10

    const/4 v11, 0x0

    move v12, v11

    :goto_2
    if-ge v12, v13, :cond_1

    aget-object v9, v10, v12

    .line 1191
    .local v9, "url":Ljava/lang/String;
    iget-object v11, p0, Lme/android/browser/Controller;->mSettings:Lme/android/browser/BrowserSettings;

    invoke-virtual {v11}, Lme/android/browser/BrowserSettings;->openInBackground()Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    :goto_3
    const/4 v14, 0x1

    .line 1190
    invoke-virtual {p0, v9, v5, v11, v14}, Lme/android/browser/Controller;->openTab(Ljava/lang/String;Lme/android/browser/Tab;ZZ)Lme/android/browser/Tab;

    move-result-object v5

    .line 1189
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto :goto_2

    .line 1191
    :cond_3
    const/4 v11, 0x1

    goto :goto_3

    .line 1193
    .end local v5    # "parent":Lme/android/browser/Tab;
    .end local v9    # "url":Ljava/lang/String;
    .end local v10    # "urls":[Ljava/lang/String;
    :cond_4
    const-string v11, "snapshot_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1195
    const-string v11, "snapshot_id"

    const-wide/16 v12, -0x1

    .line 1194
    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1196
    .local v3, "id":J
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-ltz v11, :cond_1

    .line 1197
    const/4 v11, 0x1

    invoke-virtual {p0, v3, v4, v11}, Lme/android/browser/Controller;->createNewSnapshotTab(JZ)Lme/android/browser/SnapshotTab;

    goto/16 :goto_1

    .line 1202
    .end local v3    # "id":J
    :pswitch_5
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_1

    if-eqz p3, :cond_1

    .line 1204
    const-string v11, "android.speech.extra.RESULTS"

    .line 1203
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1205
    .local v6, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-lt v11, v12, :cond_1

    .line 1206
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, p0, Lme/android/browser/Controller;->mVoiceResult:Ljava/lang/String;

    goto/16 :goto_1

    .line 1153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method protected onBackKey()V
    .locals 2

    .prologue
    .line 1241
    iget-object v1, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v1}, Lme/android/browser/UI;->onBackKey()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1242
    iget-object v1, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1}, Lme/android/browser/TabControl;->getCurrentSubWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 1243
    .local v0, "subwindow":Landroid/webkit/WebView;
    if-eqz v0, :cond_2

    .line 1244
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1245
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 1253
    .end local v0    # "subwindow":Landroid/webkit/WebView;
    :cond_0
    :goto_0
    return-void

    .line 1247
    .restart local v0    # "subwindow":Landroid/webkit/WebView;
    :cond_1
    iget-object v1, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/android/browser/Controller;->dismissSubWindow(Lme/android/browser/Tab;)V

    goto :goto_0

    .line 1250
    :cond_2
    invoke-virtual {p0}, Lme/android/browser/Controller;->goBackOnePageOrQuit()V

    goto :goto_0
.end method

.method public onConfgurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/android/browser/Controller;->mConfigChanged:Z

    .line 613
    iget-object v0, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 614
    iget-object v0, p0, Lme/android/browser/Controller;->mPageDialogsHandler:Lme/android/browser/PageDialogsHandler;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lme/android/browser/Controller;->mPageDialogsHandler:Lme/android/browser/PageDialogsHandler;

    invoke-virtual {v0, p1}, Lme/android/browser/PageDialogsHandler;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 617
    :cond_0
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0, p1}, Lme/android/browser/UI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 618
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    .line 1815
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v6

    const v7, 0x7f0d00dc

    if-ne v6, v7, :cond_0

    move v3, v5

    .line 1843
    :goto_0
    return v3

    .line 1819
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 1820
    .local v1, "id":I
    const/4 v3, 0x1

    .line 1821
    .local v3, "result":Z
    sparse-switch v1, :sswitch_data_0

    .line 1841
    invoke-virtual {p0, p1}, Lme/android/browser/Controller;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_0

    .line 1826
    :sswitch_0
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v4

    .line 1827
    .local v4, "webView":Landroid/webkit/WebView;
    if-nez v4, :cond_1

    .line 1828
    const/4 v3, 0x0

    .line 1829
    goto :goto_0

    .line 1832
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1833
    .local v0, "hrefMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/webkit/WebView;>;"
    const-string v6, "webview"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1834
    iget-object v6, p0, Lme/android/browser/Controller;->mHandler:Landroid/os/Handler;

    .line 1835
    const/16 v7, 0x66

    .line 1834
    invoke-virtual {v6, v7, v1, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1836
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v4, v2}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    goto :goto_0

    .line 1821
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0021 -> :sswitch_0
        0x7f0d00d3 -> :sswitch_0
        0x7f0d00d4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1897
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-virtual {p0}, Lme/android/browser/Controller;->isInLoad()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lme/android/browser/UI;->onContextMenuClosed(Landroid/view/Menu;Z)V

    .line 1898
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 16
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 1275
    move-object/from16 v0, p2

    instance-of v11, v0, Lme/android/browser/TitleBar;

    if-eqz v11, :cond_1

    .line 1450
    :cond_0
    :goto_0
    return-void

    .line 1278
    :cond_1
    move-object/from16 v0, p2

    instance-of v11, v0, Landroid/webkit/WebView;

    if-eqz v11, :cond_0

    move-object/from16 v10, p2

    .line 1281
    check-cast v10, Landroid/webkit/WebView;

    .line 1282
    .local v10, "webview":Landroid/webkit/WebView;
    invoke-virtual {v10}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v6

    .line 1283
    .local v6, "result":Landroid/webkit/WebView$HitTestResult;
    if-eqz v6, :cond_0

    .line 1287
    invoke-virtual {v6}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v9

    .line 1288
    .local v9, "type":I
    sget v11, Landroid/webkit/WebView$HitTestResult;->UNKNOWN_TYPE:I

    if-ne v9, v11, :cond_2

    .line 1289
    const-string v11, "Controller"

    .line 1290
    const-string v12, "We should not show context menu when nothing is touched"

    .line 1289
    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1293
    :cond_2
    const/16 v11, 0x9

    if-eq v9, v11, :cond_0

    .line 1301
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    .line 1302
    .local v4, "inflater":Landroid/view/MenuInflater;
    const v11, 0x7f100003

    move-object/from16 v0, p1

    invoke-virtual {v4, v11, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1305
    invoke-virtual {v6}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v2

    .line 1306
    .local v2, "extra":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1307
    const v12, 0x7f0d00c7

    .line 1308
    const/4 v11, 0x2

    if-ne v9, v11, :cond_5

    const/4 v11, 0x1

    .line 1307
    :goto_1
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v11}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1309
    const v12, 0x7f0d00cb

    .line 1310
    const/4 v11, 0x4

    if-ne v9, v11, :cond_6

    const/4 v11, 0x1

    .line 1309
    :goto_2
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v11}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1311
    const v12, 0x7f0d00ce

    .line 1312
    const/4 v11, 0x3

    if-ne v9, v11, :cond_7

    const/4 v11, 0x1

    .line 1311
    :goto_3
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v11}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1313
    const v12, 0x7f0d00d5

    .line 1314
    const/4 v11, 0x5

    if-eq v9, v11, :cond_8

    .line 1315
    const/16 v11, 0x8

    if-eq v9, v11, :cond_8

    const/4 v11, 0x0

    .line 1313
    :goto_4
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v11}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1316
    const v12, 0x7f0d00d1

    .line 1317
    const/4 v11, 0x7

    if-eq v9, v11, :cond_9

    .line 1318
    const/16 v11, 0x8

    if-eq v9, v11, :cond_9

    const/4 v11, 0x0

    .line 1316
    :goto_5
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v11}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1319
    const/4 v11, 0x7

    if-eq v9, v11, :cond_a

    .line 1320
    const/4 v11, 0x2

    if-eq v9, v11, :cond_a

    .line 1321
    const/4 v11, 0x4

    if-eq v9, v11, :cond_a

    .line 1322
    const/4 v11, 0x3

    if-eq v9, v11, :cond_a

    const/4 v3, 0x0

    .line 1323
    .local v3, "hitText":Z
    :goto_6
    const v11, 0x7f0d00d9

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1324
    if-eqz v3, :cond_3

    .line 1325
    const v11, 0x7f0d00da

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 1326
    new-instance v12, Lme/android/browser/Controller$SelectText;

    invoke-direct {v12, v10}, Lme/android/browser/Controller$SelectText;-><init>(Landroid/webkit/WebView;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1329
    :cond_3
    packed-switch v9, :pswitch_data_0

    .line 1445
    :pswitch_0
    const-string v11, "Controller"

    const-string v12, "We should not get here."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :cond_4
    :goto_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Lme/android/browser/UI;->onContextMenuCreated(Landroid/view/Menu;)V

    goto/16 :goto_0

    .line 1308
    .end local v3    # "hitText":Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    .line 1310
    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    .line 1312
    :cond_7
    const/4 v11, 0x0

    goto :goto_3

    .line 1315
    :cond_8
    const/4 v11, 0x1

    goto :goto_4

    .line 1318
    :cond_9
    const/4 v11, 0x1

    goto :goto_5

    .line 1322
    :cond_a
    const/4 v3, 0x1

    goto :goto_6

    .line 1331
    .restart local v3    # "hitText":Z
    :pswitch_1
    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1332
    const v11, 0x7f0d00c8

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 1333
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    .line 1334
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "tel:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 1333
    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1332
    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1335
    new-instance v1, Landroid/content/Intent;

    const-string v11, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1336
    .local v1, "addIntent":Landroid/content/Intent;
    const-string v11, "phone"

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1337
    const-string v11, "vnd.android.cursor.item/contact"

    invoke-virtual {v1, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1338
    const v11, 0x7f0d00c9

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1340
    const v11, 0x7f0d00ca

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 1342
    new-instance v12, Lme/android/browser/Controller$Copy;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Lme/android/browser/Controller$Copy;-><init>(Lme/android/browser/Controller;Ljava/lang/CharSequence;)V

    .line 1341
    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_7

    .line 1346
    .end local v1    # "addIntent":Landroid/content/Intent;
    :pswitch_2
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1347
    const v11, 0x7f0d00cc

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 1348
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    .line 1349
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "mailto:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 1348
    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1347
    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1350
    const v11, 0x7f0d00cd

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 1352
    new-instance v12, Lme/android/browser/Controller$Copy;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Lme/android/browser/Controller$Copy;-><init>(Lme/android/browser/Controller;Ljava/lang/CharSequence;)V

    .line 1351
    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 1356
    :pswitch_3
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1357
    const v11, 0x7f0d00cf

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 1358
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    .line 1359
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "geo:0,0?q="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1360
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1359
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 1358
    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1357
    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1361
    const v11, 0x7f0d00d0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 1363
    new-instance v12, Lme/android/browser/Controller$Copy;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Lme/android/browser/Controller$Copy;-><init>(Lme/android/browser/Controller;Ljava/lang/CharSequence;)V

    .line 1362
    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 1368
    :pswitch_4
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1370
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v11}, Lme/android/browser/TabControl;->canCreateNewTab()Z

    move-result v8

    .line 1372
    .local v8, "showNewTab":Z
    const v11, 0x7f0d00d2

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1373
    .local v5, "newTabItem":Landroid/view/MenuItem;
    invoke-virtual/range {p0 .. p0}, Lme/android/browser/Controller;->getSettings()Lme/android/browser/BrowserSettings;

    move-result-object v11

    invoke-virtual {v11}, Lme/android/browser/BrowserSettings;->openInBackground()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1374
    const v11, 0x7f08005e

    .line 1373
    :goto_8
    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1376
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1377
    if-eqz v8, :cond_b

    .line 1378
    const/16 v11, 0x8

    if-ne v11, v9, :cond_e

    .line 1380
    new-instance v11, Lme/android/browser/Controller$6;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v10}, Lme/android/browser/Controller$6;-><init>(Lme/android/browser/Controller;Landroid/webkit/WebView;)V

    .line 1379
    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1408
    :cond_b
    :goto_9
    const/4 v11, 0x7

    if-eq v9, v11, :cond_4

    .line 1413
    .end local v5    # "newTabItem":Landroid/view/MenuItem;
    .end local v8    # "showNewTab":Z
    :pswitch_5
    const v11, 0x7f0d009b

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 1414
    .local v7, "shareItem":Landroid/view/MenuItem;
    const/4 v11, 0x5

    if-ne v9, v11, :cond_f

    const/4 v11, 0x1

    :goto_a
    invoke-interface {v7, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1415
    const/4 v11, 0x5

    if-ne v9, v11, :cond_c

    .line 1416
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1418
    new-instance v11, Lme/android/browser/Controller$8;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2}, Lme/android/browser/Controller$8;-><init>(Lme/android/browser/Controller;Ljava/lang/String;)V

    .line 1417
    invoke-interface {v7, v11}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1428
    :cond_c
    const v11, 0x7f0d00d7

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 1429
    new-instance v12, Lme/android/browser/Controller$9;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Lme/android/browser/Controller$9;-><init>(Lme/android/browser/Controller;Ljava/lang/String;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1436
    const v11, 0x7f0d00d6

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 1438
    new-instance v12, Lme/android/browser/Controller$Download;

    move-object/from16 v0, p0

    iget-object v13, v0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v14

    invoke-direct {v12, v13, v2, v14}, Lme/android/browser/Controller$Download;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 1437
    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1439
    const v11, 0x7f0d00d8

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 1440
    new-instance v12, Lme/android/browser/WallpaperHandler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v12, v13, v2}, Lme/android/browser/WallpaperHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 1375
    .end local v7    # "shareItem":Landroid/view/MenuItem;
    .restart local v5    # "newTabItem":Landroid/view/MenuItem;
    .restart local v8    # "showNewTab":Z
    :cond_d
    const v11, 0x7f08005d

    goto/16 :goto_8

    .line 1396
    :cond_e
    new-instance v11, Lme/android/browser/Controller$7;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2}, Lme/android/browser/Controller$7;-><init>(Lme/android/browser/Controller;Ljava/lang/String;)V

    .line 1395
    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_9

    .line 1414
    .end local v5    # "newTabItem":Landroid/view/MenuItem;
    .end local v8    # "showNewTab":Z
    .restart local v7    # "shareItem":Landroid/view/MenuItem;
    :cond_f
    const/4 v11, 0x0

    goto :goto_a

    .line 1329
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1264
    iget v1, p0, Lme/android/browser/Controller;->mMenuState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1265
    const/4 v1, 0x0

    .line 1269
    :goto_0
    return v1

    .line 1267
    :cond_0
    iget-object v1, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1268
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f100002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1269
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 751
    iget-object v1, p0, Lme/android/browser/Controller;->mUploadHandler:Lme/android/browser/UploadHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lme/android/browser/Controller;->mUploadHandler:Lme/android/browser/UploadHandler;

    invoke-virtual {v1}, Lme/android/browser/UploadHandler;->handled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 752
    iget-object v1, p0, Lme/android/browser/Controller;->mUploadHandler:Lme/android/browser/UploadHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lme/android/browser/UploadHandler;->onResult(ILandroid/content/Intent;)V

    .line 753
    iput-object v3, p0, Lme/android/browser/Controller;->mUploadHandler:Lme/android/browser/UploadHandler;

    .line 755
    :cond_0
    iget-object v1, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    if-nez v1, :cond_1

    .line 770
    :goto_0
    return-void

    .line 756
    :cond_1
    iget-object v1, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v1}, Lme/android/browser/UI;->onDestroy()V

    .line 758
    iget-object v1, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v0

    .line 759
    .local v0, "t":Lme/android/browser/Tab;
    if-eqz v0, :cond_2

    .line 760
    invoke-virtual {p0, v0}, Lme/android/browser/Controller;->dismissSubWindow(Lme/android/browser/Tab;)V

    .line 761
    invoke-virtual {p0, v0}, Lme/android/browser/Controller;->removeTab(Lme/android/browser/Tab;)V

    .line 763
    :cond_2
    iget-object v1, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lme/android/browser/Controller;->mBookmarksObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 765
    iget-object v1, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1}, Lme/android/browser/TabControl;->destroy()V

    .line 766
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebIconDatabase;->close()V

    .line 768
    iget-object v1, p0, Lme/android/browser/Controller;->mSystemAllowGeolocationOrigins:Lme/android/browser/SystemAllowGeolocationOrigins;

    invoke-virtual {v1}, Lme/android/browser/SystemAllowGeolocationOrigins;->stop()V

    .line 769
    iput-object v3, p0, Lme/android/browser/Controller;->mSystemAllowGeolocationOrigins:Lme/android/browser/SystemAllowGeolocationOrigins;

    goto :goto_0
.end method

.method public onDownloadStart(Lme/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "contentDisposition"    # Ljava/lang/String;
    .param p5, "mimetype"    # Ljava/lang/String;
    .param p6, "contentLength"    # J

    .prologue
    .line 1036
    invoke-virtual {p1}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    .line 1037
    .local v6, "w":Landroid/webkit/WebView;
    iget-object v0, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    .line 1038
    invoke-virtual {v6}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v5

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 1037
    invoke-static/range {v0 .. v5}, Lme/android/browser/DownloadHandler;->onDownloadStart(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1039
    invoke-virtual {v6}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 1042
    iget-object v0, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v0}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1044
    invoke-virtual {p0}, Lme/android/browser/Controller;->goBackOnePageOrQuit()V

    .line 1050
    :cond_0
    :goto_0
    return-void

    .line 1047
    :cond_1
    invoke-virtual {p0, p1}, Lme/android/browser/Controller;->closeTab(Lme/android/browser/Tab;)V

    goto :goto_0
.end method

.method public onFavicon(Lme/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "view"    # Landroid/webkit/WebView;
    .param p3, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 942
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0, p1}, Lme/android/browser/UI;->onTabDataChanged(Lme/android/browser/Tab;)V

    .line 943
    invoke-virtual {p2}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p3}, Lme/android/browser/Controller;->maybeUpdateFavicon(Lme/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 944
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 2652
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    .line 2655
    .local v1, "noModifiers":Z
    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lme/android/browser/Controller;->isMenuOrCtrlKey(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2656
    iput-boolean v6, p0, Lme/android/browser/Controller;->mMenuIsDown:Z

    .line 2759
    :cond_0
    :goto_0
    return v5

    .line 2660
    :cond_1
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v4

    .line 2661
    .local v4, "webView":Landroid/webkit/WebView;
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v3

    .line 2662
    .local v3, "tab":Lme/android/browser/Tab;
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 2664
    const/16 v5, 0x1000

    invoke-virtual {p2, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    .line 2665
    .local v0, "ctrl":Z
    invoke-virtual {p2, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    .line 2667
    .local v2, "shift":Z
    sparse-switch p1, :sswitch_data_0

    .line 2759
    :cond_2
    iget-object v5, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v5, p1, p2}, Lme/android/browser/UI;->dispatchKey(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_0

    .line 2669
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2670
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2672
    invoke-direct {p0}, Lme/android/browser/Controller;->getPrevTab()Lme/android/browser/Tab;

    move-result-object v5

    invoke-virtual {p0, v5}, Lme/android/browser/Controller;->switchToTab(Lme/android/browser/Tab;)Z

    :goto_1
    move v5, v6

    .line 2677
    goto :goto_0

    .line 2675
    :cond_3
    invoke-direct {p0}, Lme/android/browser/Controller;->getNextTab()Lme/android/browser/Tab;

    move-result-object v5

    invoke-virtual {p0, v5}, Lme/android/browser/Controller;->switchToTab(Lme/android/browser/Tab;)Z

    goto :goto_1

    .line 2684
    :sswitch_1
    if-eqz v2, :cond_5

    .line 2685
    invoke-virtual {p0}, Lme/android/browser/Controller;->pageUp()V

    :cond_4
    :goto_2
    move v5, v6

    .line 2689
    goto :goto_0

    .line 2686
    :cond_5
    if-eqz v1, :cond_4

    .line 2687
    invoke-virtual {p0}, Lme/android/browser/Controller;->pageDown()V

    goto :goto_2

    .line 2691
    :sswitch_2
    if-eqz v1, :cond_2

    .line 2692
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    move v5, v6

    .line 2693
    goto :goto_0

    .line 2695
    :sswitch_3
    if-eqz v1, :cond_2

    .line 2696
    invoke-virtual {v3}, Lme/android/browser/Tab;->goForward()V

    move v5, v6

    .line 2697
    goto :goto_0

    .line 2699
    :sswitch_4
    if-eqz v0, :cond_2

    .line 2700
    invoke-virtual {v3}, Lme/android/browser/Tab;->goBack()V

    move v5, v6

    .line 2701
    goto :goto_0

    .line 2705
    :sswitch_5
    if-eqz v0, :cond_2

    .line 2706
    invoke-virtual {v3}, Lme/android/browser/Tab;->goForward()V

    move v5, v6

    .line 2707
    goto :goto_0

    .line 2711
    :sswitch_6
    if-eqz v0, :cond_2

    .line 2712
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->fromWebView(Landroid/webkit/WebView;)Landroid/webkit/WebViewClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->selectAll()V

    move v5, v6

    .line 2713
    goto :goto_0

    .line 2718
    :sswitch_7
    if-eqz v0, :cond_2

    .line 2719
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->fromWebView(Landroid/webkit/WebView;)Landroid/webkit/WebViewClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->copySelection()Z

    move v5, v6

    .line 2720
    goto :goto_0

    .line 2742
    :sswitch_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2743
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2744
    invoke-virtual {p0}, Lme/android/browser/Controller;->openIncognitoTab()Lme/android/browser/Tab;

    :goto_3
    move v5, v6

    .line 2748
    goto/16 :goto_0

    .line 2746
    :cond_6
    invoke-virtual {p0}, Lme/android/browser/Controller;->openTabToHomePage()Lme/android/browser/Tab;

    goto :goto_3

    .line 2667
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x1d -> :sswitch_6
        0x1f -> :sswitch_7
        0x30 -> :sswitch_8
        0x3d -> :sswitch_0
        0x3e -> :sswitch_1
        0x7d -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2764
    packed-switch p1, :pswitch_data_0

    .line 2772
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2766
    :pswitch_0
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0}, Lme/android/browser/UI;->isWebShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2767
    sget-object v0, Lme/android/browser/UI$ComboViews;->History:Lme/android/browser/UI$ComboViews;

    invoke-virtual {p0, v0}, Lme/android/browser/Controller;->bookmarksOrHistoryPicker(Lme/android/browser/UI$ComboViews;)V

    .line 2768
    const/4 v0, 0x1

    goto :goto_0

    .line 2764
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 2777
    invoke-virtual {p0, p1}, Lme/android/browser/Controller;->isMenuOrCtrlKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2778
    iput-boolean v0, p0, Lme/android/browser/Controller;->mMenuIsDown:Z

    .line 2779
    const/16 v1, 0x52

    if-ne v1, p1, :cond_1

    .line 2780
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2781
    invoke-virtual {p0}, Lme/android/browser/Controller;->onMenuKey()Z

    move-result v0

    .line 2793
    :cond_0
    :goto_0
    return v0

    .line 2784
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2785
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2787
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2788
    invoke-virtual {p0}, Lme/android/browser/Controller;->onBackKey()V

    .line 2789
    const/4 v0, 0x1

    goto :goto_0

    .line 2785
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v0}, Lme/android/browser/TabControl;->freeMemory()V

    .line 779
    return-void
.end method

.method protected onMenuKey()Z
    .locals 1

    .prologue
    .line 1256
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0}, Lme/android/browser/UI;->onMenuKey()Z

    move-result v0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1862
    iget-boolean v0, p0, Lme/android/browser/Controller;->mOptionsMenuOpen:Z

    if-eqz v0, :cond_2

    .line 1863
    iget-boolean v0, p0, Lme/android/browser/Controller;->mConfigChanged:Z

    if-eqz v0, :cond_0

    .line 1867
    iput-boolean v1, p0, Lme/android/browser/Controller;->mConfigChanged:Z

    .line 1886
    :goto_0
    return v2

    .line 1869
    :cond_0
    iget-boolean v0, p0, Lme/android/browser/Controller;->mExtendedMenuOpen:Z

    if-nez v0, :cond_1

    .line 1870
    iput-boolean v2, p0, Lme/android/browser/Controller;->mExtendedMenuOpen:Z

    .line 1871
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0}, Lme/android/browser/UI;->onExtendedMenuOpened()V

    goto :goto_0

    .line 1875
    :cond_1
    iput-boolean v1, p0, Lme/android/browser/Controller;->mExtendedMenuOpen:Z

    .line 1876
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-virtual {p0}, Lme/android/browser/Controller;->isInLoad()Z

    move-result v1

    invoke-interface {v0, v1}, Lme/android/browser/UI;->onExtendedMenuClosed(Z)V

    goto :goto_0

    .line 1881
    :cond_2
    iput-boolean v2, p0, Lme/android/browser/Controller;->mOptionsMenuOpen:Z

    .line 1882
    iput-boolean v1, p0, Lme/android/browser/Controller;->mConfigChanged:Z

    .line 1883
    iput-boolean v1, p0, Lme/android/browser/Controller;->mExtendedMenuOpen:Z

    .line 1884
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0}, Lme/android/browser/UI;->onOptionsMenuOpened()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1558
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v8

    if-nez v8, :cond_1

    .line 1708
    :cond_0
    :goto_0
    return v6

    .line 1561
    :cond_1
    iget-boolean v8, p0, Lme/android/browser/Controller;->mMenuIsDown:Z

    if-eqz v8, :cond_2

    .line 1566
    iput-boolean v6, p0, Lme/android/browser/Controller;->mMenuIsDown:Z

    .line 1568
    :cond_2
    iget-object v8, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v8, p1}, Lme/android/browser/UI;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v6, v7

    .line 1570
    goto :goto_0

    .line 1572
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1603
    :pswitch_1
    invoke-virtual {p0}, Lme/android/browser/Controller;->isInLoad()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1604
    invoke-virtual {p0}, Lme/android/browser/Controller;->stopLoading()V

    :cond_4
    :goto_1
    move v6, v7

    .line 1708
    goto :goto_0

    .line 1575
    :pswitch_2
    invoke-virtual {p0}, Lme/android/browser/Controller;->openTabToHomePage()Lme/android/browser/Tab;

    goto :goto_1

    .line 1579
    :pswitch_3
    invoke-virtual {p0}, Lme/android/browser/Controller;->openIncognitoTab()Lme/android/browser/Tab;

    goto :goto_1

    .line 1583
    :pswitch_4
    invoke-virtual {p0}, Lme/android/browser/Controller;->editUrl()V

    goto :goto_1

    .line 1587
    :pswitch_5
    sget-object v6, Lme/android/browser/UI$ComboViews;->Bookmarks:Lme/android/browser/UI$ComboViews;

    invoke-virtual {p0, v6}, Lme/android/browser/Controller;->bookmarksOrHistoryPicker(Lme/android/browser/UI$ComboViews;)V

    goto :goto_1

    .line 1591
    :pswitch_6
    sget-object v6, Lme/android/browser/UI$ComboViews;->History:Lme/android/browser/UI$ComboViews;

    invoke-virtual {p0, v6}, Lme/android/browser/Controller;->bookmarksOrHistoryPicker(Lme/android/browser/UI$ComboViews;)V

    goto :goto_1

    .line 1595
    :pswitch_7
    sget-object v6, Lme/android/browser/UI$ComboViews;->Snapshots:Lme/android/browser/UI$ComboViews;

    invoke-virtual {p0, v6}, Lme/android/browser/Controller;->bookmarksOrHistoryPicker(Lme/android/browser/UI$ComboViews;)V

    goto :goto_1

    .line 1599
    :pswitch_8
    invoke-virtual {p0}, Lme/android/browser/Controller;->bookmarkCurrentPage()V

    goto :goto_1

    .line 1606
    :cond_5
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->reload()V

    goto :goto_1

    .line 1611
    :pswitch_9
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v6

    invoke-virtual {v6}, Lme/android/browser/Tab;->goBack()V

    goto :goto_1

    .line 1615
    :pswitch_a
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v6

    invoke-virtual {v6}, Lme/android/browser/Tab;->goForward()V

    goto :goto_1

    .line 1620
    :pswitch_b
    iget-object v6, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v6}, Lme/android/browser/TabControl;->getCurrentSubWindow()Landroid/webkit/WebView;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 1621
    iget-object v6, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v6}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v6

    invoke-virtual {p0, v6}, Lme/android/browser/Controller;->dismissSubWindow(Lme/android/browser/Tab;)V

    goto :goto_1

    .line 1624
    :cond_6
    invoke-virtual {p0}, Lme/android/browser/Controller;->closeCurrentTab()V

    goto :goto_1

    .line 1628
    :pswitch_c
    iget-object v6, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v6}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v0

    .line 1629
    .local v0, "current":Lme/android/browser/Tab;
    iget-object v6, p0, Lme/android/browser/Controller;->mSettings:Lme/android/browser/BrowserSettings;

    invoke-virtual {v6}, Lme/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lme/android/browser/Controller;->loadUrl(Lme/android/browser/Tab;Ljava/lang/String;)V

    goto :goto_1

    .line 1633
    .end local v0    # "current":Lme/android/browser/Tab;
    :pswitch_d
    invoke-virtual {p0}, Lme/android/browser/Controller;->openPreferences()V

    goto :goto_1

    .line 1637
    :pswitch_e
    invoke-virtual {p0}, Lme/android/browser/Controller;->findOnPage()V

    goto :goto_1

    .line 1641
    :pswitch_f
    invoke-virtual {p0}, Lme/android/browser/Controller;->getTabControl()Lme/android/browser/TabControl;

    move-result-object v8

    invoke-virtual {v8}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v5

    .line 1642
    .local v5, "source":Lme/android/browser/Tab;
    if-eqz v5, :cond_4

    .line 1643
    new-instance v8, Lme/android/browser/Controller$SaveSnapshotTask;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v5, v9}, Lme/android/browser/Controller$SaveSnapshotTask;-><init>(Lme/android/browser/Controller;Lme/android/browser/Tab;Lme/android/browser/Controller$SaveSnapshotTask;)V

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v8, v6}, Lme/android/browser/Controller$SaveSnapshotTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 1647
    .end local v5    # "source":Lme/android/browser/Tab;
    :pswitch_10
    invoke-virtual {p0}, Lme/android/browser/Controller;->showPageInfo()V

    goto/16 :goto_1

    .line 1651
    :pswitch_11
    invoke-direct {p0}, Lme/android/browser/Controller;->goLive()V

    move v6, v7

    .line 1652
    goto/16 :goto_0

    .line 1655
    :pswitch_12
    iget-object v8, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v8}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v1

    .line 1656
    .local v1, "currentTab":Lme/android/browser/Tab;
    if-eqz v1, :cond_0

    .line 1659
    invoke-direct {p0, v1}, Lme/android/browser/Controller;->shareCurrentPage(Lme/android/browser/Tab;)V

    goto/16 :goto_1

    .line 1663
    .end local v1    # "currentTab":Lme/android/browser/Tab;
    :pswitch_13
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->debugDump()V

    goto/16 :goto_1

    .line 1667
    :pswitch_14
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->zoomIn()Z

    goto/16 :goto_1

    .line 1671
    :pswitch_15
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->zoomOut()Z

    goto/16 :goto_1

    .line 1675
    :pswitch_16
    invoke-virtual {p0}, Lme/android/browser/Controller;->viewDownloads()V

    goto/16 :goto_1

    .line 1679
    :pswitch_17
    invoke-virtual {p0}, Lme/android/browser/Controller;->toggleUserAgent()V

    goto/16 :goto_1

    .line 1691
    :pswitch_18
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 1692
    .local v4, "menuid":I
    const/4 v3, 0x0

    .local v3, "id":I
    :goto_2
    sget-object v6, Lme/android/browser/Controller;->WINDOW_SHORTCUT_ID_ARRAY:[I

    array-length v6, v6

    if-ge v3, v6, :cond_4

    .line 1693
    sget-object v6, Lme/android/browser/Controller;->WINDOW_SHORTCUT_ID_ARRAY:[I

    aget v6, v6, v3

    if-ne v6, v4, :cond_7

    .line 1694
    iget-object v6, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v6, v3}, Lme/android/browser/TabControl;->getTab(I)Lme/android/browser/Tab;

    move-result-object v2

    .line 1695
    .local v2, "desiredTab":Lme/android/browser/Tab;
    if-eqz v2, :cond_4

    .line 1696
    iget-object v6, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v6}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v6

    if-eq v2, v6, :cond_4

    .line 1697
    invoke-virtual {p0, v2}, Lme/android/browser/Controller;->switchToTab(Lme/android/browser/Tab;)Z

    goto/16 :goto_1

    .line 1692
    .end local v2    # "desiredTab":Lme/android/browser/Tab;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1572
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d00a2
        :pswitch_1
        :pswitch_a
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_12
        :pswitch_e
        :pswitch_17
        :pswitch_f
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_10
        :pswitch_d
        :pswitch_13
        :pswitch_0
        :pswitch_16
        :pswitch_c
        :pswitch_14
        :pswitch_15
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_9
        :pswitch_4
        :pswitch_b
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1891
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/android/browser/Controller;->mOptionsMenuOpen:Z

    .line 1892
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-virtual {p0}, Lme/android/browser/Controller;->isInLoad()Z

    move-result v1

    invoke-interface {v0, v1}, Lme/android/browser/UI;->onOptionsMenuClosed(Z)V

    .line 1893
    return-void
.end method

.method public onPageFinished(Lme/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 861
    iget-object v0, p0, Lme/android/browser/Controller;->mCrashRecoveryHandler:Lme/android/browser/CrashRecoveryHandler;

    invoke-virtual {v0}, Lme/android/browser/CrashRecoveryHandler;->backupState()V

    .line 862
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0, p1}, Lme/android/browser/UI;->onTabDataChanged(Lme/android/browser/Tab;)V

    .line 865
    iget-boolean v0, p0, Lme/android/browser/Controller;->mActivityPaused:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lme/android/browser/Controller;->pauseWebViewTimers(Lme/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    invoke-direct {p0}, Lme/android/browser/Controller;->releaseWakeLock()V

    .line 874
    :cond_0
    invoke-static {}, Lme/android/browser/Performance;->tracePageFinished()V

    .line 875
    return-void
.end method

.method public onPageStarted(Lme/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "view"    # Landroid/webkit/WebView;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 824
    iget-object v1, p0, Lme/android/browser/Controller;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 828
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->resetSync()V

    .line 830
    iget-object v1, p0, Lme/android/browser/Controller;->mNetworkHandler:Lme/android/browser/NetworkStateHandler;

    invoke-virtual {v1}, Lme/android/browser/NetworkStateHandler;->isNetworkUp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 831
    invoke-virtual {p2, v3}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    .line 838
    :cond_0
    iget-boolean v1, p0, Lme/android/browser/Controller;->mActivityPaused:Z

    if-eqz v1, :cond_1

    .line 839
    invoke-direct {p0, p1}, Lme/android/browser/Controller;->resumeWebViewTimers(Lme/android/browser/Tab;)V

    .line 841
    :cond_1
    iput-boolean v3, p0, Lme/android/browser/Controller;->mLoadStopped:Z

    .line 842
    invoke-virtual {p0}, Lme/android/browser/Controller;->endActionMode()V

    .line 844
    iget-object v1, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v1, p1}, Lme/android/browser/UI;->onTabDataChanged(Lme/android/browser/Tab;)V

    .line 846
    invoke-virtual {p1}, Lme/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 848
    .local v0, "url":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p3}, Lme/android/browser/Controller;->maybeUpdateFavicon(Lme/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 850
    invoke-static {v0}, Lme/android/browser/Performance;->tracePageStart(Ljava/lang/String;)V

    .line 857
    return-void
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 630
    iget-object v2, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v2}, Lme/android/browser/UI;->isCustomViewShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 631
    invoke-virtual {p0}, Lme/android/browser/Controller;->hideCustomView()V

    .line 633
    :cond_0
    iget-boolean v2, p0, Lme/android/browser/Controller;->mActivityPaused:Z

    if-eqz v2, :cond_2

    .line 634
    const-string v2, "Controller"

    const-string v3, "BrowserActivity is already paused."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_1
    :goto_0
    return-void

    .line 637
    :cond_2
    iput-boolean v4, p0, Lme/android/browser/Controller;->mActivityPaused:Z

    .line 638
    iget-object v2, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v2}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v1

    .line 639
    .local v1, "tab":Lme/android/browser/Tab;
    if-eqz v1, :cond_4

    .line 640
    invoke-virtual {v1}, Lme/android/browser/Tab;->pause()V

    .line 641
    invoke-direct {p0, v1}, Lme/android/browser/Controller;->pauseWebViewTimers(Lme/android/browser/Tab;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 642
    iget-object v2, p0, Lme/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_3

    .line 643
    iget-object v2, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    .line 644
    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 643
    check-cast v0, Landroid/os/PowerManager;

    .line 645
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v2, "Browser"

    invoke-virtual {v0, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lme/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 647
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_3
    iget-object v2, p0, Lme/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 648
    iget-object v2, p0, Lme/android/browser/Controller;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lme/android/browser/Controller;->mHandler:Landroid/os/Handler;

    .line 649
    const/16 v4, 0x6b

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x493e0

    .line 648
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 652
    :cond_4
    iget-object v2, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v2}, Lme/android/browser/UI;->onPause()V

    .line 653
    iget-object v2, p0, Lme/android/browser/Controller;->mNetworkHandler:Lme/android/browser/NetworkStateHandler;

    invoke-virtual {v2}, Lme/android/browser/NetworkStateHandler;->onPause()V

    .line 655
    invoke-static {}, Landroid/webkit/WebView;->disablePlatformNotifications()V

    .line 656
    iget-object v2, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lme/android/browser/NfcHandler;->unregister(Landroid/app/Activity;)V

    .line 657
    sget-object v2, Lme/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 658
    sget-object v2, Lme/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 659
    const/4 v2, 0x0

    sput-object v2, Lme/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v5, 0x7f0d00b5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f0d00a0

    .line 1473
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lme/android/browser/Controller;->updateInLoadMenuItems(Landroid/view/Menu;Lme/android/browser/Tab;)V

    .line 1476
    iput-object p1, p0, Lme/android/browser/Controller;->mCachedMenu:Landroid/view/Menu;

    .line 1480
    iget v0, p0, Lme/android/browser/Controller;->mMenuState:I

    packed-switch v0, :pswitch_data_0

    .line 1489
    iget v0, p0, Lme/android/browser/Controller;->mCurrentMenuState:I

    iget v1, p0, Lme/android/browser/Controller;->mMenuState:I

    if-eq v0, v1, :cond_0

    .line 1490
    invoke-interface {p1, v2, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1491
    invoke-interface {p1, v2, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1492
    invoke-interface {p1, v5, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1494
    :cond_0
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lme/android/browser/Controller;->updateMenuState(Lme/android/browser/Tab;Landroid/view/Menu;)V

    .line 1497
    :cond_1
    :goto_0
    iget v0, p0, Lme/android/browser/Controller;->mMenuState:I

    iput v0, p0, Lme/android/browser/Controller;->mCurrentMenuState:I

    .line 1498
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0, p1}, Lme/android/browser/UI;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 1482
    :pswitch_0
    iget v0, p0, Lme/android/browser/Controller;->mCurrentMenuState:I

    iget v1, p0, Lme/android/browser/Controller;->mMenuState:I

    if-eq v0, v1, :cond_1

    .line 1483
    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1484
    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1485
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_0

    .line 1480
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressChanged(Lme/android/browser/Tab;)V
    .locals 5
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    const/16 v4, 0x6c

    const/4 v3, 0x0

    .line 879
    invoke-virtual {p1}, Lme/android/browser/Tab;->getLoadProgress()I

    move-result v0

    .line 881
    .local v0, "newProgress":I
    const/16 v1, 0x64

    if-ne v0, v1, :cond_4

    .line 882
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 890
    invoke-virtual {p1}, Lme/android/browser/Tab;->inPageLoad()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 891
    iget-object v1, p0, Lme/android/browser/Controller;->mCachedMenu:Landroid/view/Menu;

    invoke-direct {p0, v1, p1}, Lme/android/browser/Controller;->updateInLoadMenuItems(Landroid/view/Menu;Lme/android/browser/Tab;)V

    .line 893
    :cond_0
    invoke-virtual {p1}, Lme/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 894
    invoke-virtual {p1}, Lme/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 895
    invoke-virtual {p1}, Lme/android/browser/Tab;->isSnapshot()Z

    move-result v1

    if-nez v1, :cond_3

    .line 899
    invoke-virtual {p1}, Lme/android/browser/Tab;->shouldUpdateThumbnail()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 900
    invoke-virtual {p1}, Lme/android/browser/Tab;->inForeground()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lme/android/browser/Controller;->didUserStopLoading()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 901
    :cond_1
    invoke-virtual {p1}, Lme/android/browser/Tab;->inForeground()Z

    move-result v1

    if-nez v1, :cond_3

    .line 902
    :cond_2
    iget-object v1, p0, Lme/android/browser/Controller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 903
    iget-object v1, p0, Lme/android/browser/Controller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lme/android/browser/Controller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v3, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 905
    const-wide/16 v3, 0x1f4

    .line 903
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 918
    :cond_3
    :goto_0
    iget-object v1, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v1, p1}, Lme/android/browser/UI;->onProgressChanged(Lme/android/browser/Tab;)V

    .line 919
    return-void

    .line 910
    :cond_4
    invoke-virtual {p1}, Lme/android/browser/Tab;->inPageLoad()Z

    move-result v1

    if-nez v1, :cond_3

    .line 915
    iget-object v1, p0, Lme/android/browser/Controller;->mCachedMenu:Landroid/view/Menu;

    invoke-direct {p0, v1, p1}, Lme/android/browser/Controller;->updateInLoadMenuItems(Landroid/view/Menu;Lme/android/browser/Tab;)V

    goto :goto_0
.end method

.method public onReceivedHttpAuthRequest(Lme/android/browser/Tab;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "view"    # Landroid/webkit/WebView;
    .param p3, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "realm"    # Ljava/lang/String;

    .prologue
    .line 1008
    const/4 v3, 0x0

    .line 1009
    .local v3, "username":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1012
    .local v1, "password":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/webkit/HttpAuthHandler;->useHttpAuthUsernamePassword()Z

    move-result v2

    .line 1014
    .local v2, "reuseHttpAuthUsernamePassword":Z
    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 1015
    invoke-virtual {p2, p4, p5}, Landroid/webkit/WebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1016
    .local v0, "credentials":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1017
    const/4 v4, 0x0

    aget-object v3, v0, v4

    .line 1018
    const/4 v4, 0x1

    aget-object v1, v0, v4

    .line 1022
    .end local v0    # "credentials":[Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 1023
    invoke-virtual {p3, v3, v1}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    :goto_0
    return-void

    .line 1025
    :cond_1
    invoke-virtual {p1}, Lme/android/browser/Tab;->inForeground()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p3}, Landroid/webkit/HttpAuthHandler;->suppressDialog()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1026
    iget-object v4, p0, Lme/android/browser/Controller;->mPageDialogsHandler:Lme/android/browser/PageDialogsHandler;

    invoke-virtual {v4, p1, p3, p4, p5}, Lme/android/browser/PageDialogsHandler;->showHttpAuthentication(Lme/android/browser/Tab;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1028
    :cond_2
    invoke-virtual {p3}, Landroid/webkit/HttpAuthHandler;->cancel()V

    goto :goto_0
.end method

.method public onReceivedTitle(Lme/android/browser/Tab;Ljava/lang/String;)V
    .locals 3
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 928
    iget-object v1, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v1, p1}, Lme/android/browser/UI;->onTabDataChanged(Lme/android/browser/Tab;)V

    .line 929
    invoke-virtual {p1}, Lme/android/browser/Tab;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 930
    .local v0, "pageUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 931
    const v2, 0xc350

    if-lt v1, v2, :cond_1

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 935
    :cond_1
    invoke-virtual {p1}, Lme/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 936
    iget-object v1, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lme/android/browser/DataController;->getInstance(Landroid/content/Context;)Lme/android/browser/DataController;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lme/android/browser/DataController;->updateHistoryTitle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 690
    iget-boolean v1, p0, Lme/android/browser/Controller;->mActivityPaused:Z

    if-nez v1, :cond_1

    .line 691
    const-string v1, "Controller"

    const-string v2, "BrowserActivity is already resumed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    iget-object v1, p0, Lme/android/browser/Controller;->mSettings:Lme/android/browser/BrowserSettings;

    invoke-virtual {v1, v2}, Lme/android/browser/BrowserSettings;->setLastRunPaused(Z)V

    .line 695
    iput-boolean v2, p0, Lme/android/browser/Controller;->mActivityPaused:Z

    .line 696
    iget-object v1, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v0

    .line 697
    .local v0, "current":Lme/android/browser/Tab;
    if-eqz v0, :cond_2

    .line 698
    invoke-virtual {v0}, Lme/android/browser/Tab;->resume()V

    .line 699
    invoke-direct {p0, v0}, Lme/android/browser/Controller;->resumeWebViewTimers(Lme/android/browser/Tab;)V

    .line 701
    :cond_2
    invoke-direct {p0}, Lme/android/browser/Controller;->releaseWakeLock()V

    .line 703
    iget-object v1, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v1}, Lme/android/browser/UI;->onResume()V

    .line 704
    iget-object v1, p0, Lme/android/browser/Controller;->mNetworkHandler:Lme/android/browser/NetworkStateHandler;

    invoke-virtual {v1}, Lme/android/browser/NetworkStateHandler;->onResume()V

    .line 705
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    .line 706
    iget-object v1, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p0}, Lme/android/browser/NfcHandler;->register(Landroid/app/Activity;Lme/android/browser/Controller;)V

    .line 707
    iget-object v1, p0, Lme/android/browser/Controller;->mVoiceResult:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 708
    iget-object v1, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    iget-object v2, p0, Lme/android/browser/Controller;->mVoiceResult:Ljava/lang/String;

    invoke-interface {v1, v2}, Lme/android/browser/UI;->onVoiceResult(Ljava/lang/String;)V

    .line 709
    const/4 v1, 0x0

    iput-object v1, p0, Lme/android/browser/Controller;->mVoiceResult:Ljava/lang/String;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 666
    invoke-virtual {p0}, Lme/android/browser/Controller;->createSaveState()Landroid/os/Bundle;

    move-result-object v0

    .line 669
    .local v0, "saveState":Landroid/os/Bundle;
    iget-object v1, p0, Lme/android/browser/Controller;->mCrashRecoveryHandler:Lme/android/browser/CrashRecoveryHandler;

    invoke-virtual {v1, v0}, Lme/android/browser/CrashRecoveryHandler;->writeState(Landroid/os/Bundle;)V

    .line 670
    iget-object v1, p0, Lme/android/browser/Controller;->mSettings:Lme/android/browser/BrowserSettings;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lme/android/browser/BrowserSettings;->setLastRunPaused(Z)V

    .line 671
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2814
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lme/android/browser/UI;->editUrl(ZZ)V

    .line 2815
    return v2
.end method

.method public onSetWebView(Lme/android/browser/Tab;Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 405
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0, p1, p2}, Lme/android/browser/UI;->onSetWebView(Lme/android/browser/Tab;Landroid/webkit/WebView;)V

    .line 406
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 964
    invoke-virtual {p0}, Lme/android/browser/Controller;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 965
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 966
    iget-object v0, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 971
    :goto_0
    return v0

    .line 968
    :cond_0
    iget-object v0, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 971
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUpdatedSecurityState(Lme/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 923
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0, p1}, Lme/android/browser/UI;->onTabDataChanged(Lme/android/browser/Tab;)V

    .line 924
    return-void
.end method

.method public onUserCanceledSsl(Lme/android/browser/Tab;)V
    .locals 2
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 2567
    invoke-virtual {p1}, Lme/android/browser/Tab;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2568
    invoke-virtual {p1}, Lme/android/browser/Tab;->goBack()V

    .line 2572
    :goto_0
    return-void

    .line 2570
    :cond_0
    iget-object v0, p0, Lme/android/browser/Controller;->mSettings:Lme/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lme/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lme/android/browser/Tab;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public openContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1850
    iget-object v0, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->openContextMenu(Landroid/view/View;)V

    .line 1851
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2016
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    new-instance v0, Lme/android/browser/UploadHandler;

    invoke-direct {v0, p0}, Lme/android/browser/UploadHandler;-><init>(Lme/android/browser/Controller;)V

    iput-object v0, p0, Lme/android/browser/Controller;->mUploadHandler:Lme/android/browser/UploadHandler;

    .line 2017
    iget-object v0, p0, Lme/android/browser/Controller;->mUploadHandler:Lme/android/browser/UploadHandler;

    invoke-virtual {v0, p1, p2, p3}, Lme/android/browser/UploadHandler;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    return-void
.end method

.method public openIncognitoTab()Lme/android/browser/Tab;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2386
    const-string v0, "browser:incognito"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v2, v1}, Lme/android/browser/Controller;->openTab(Ljava/lang/String;ZZZ)Lme/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public openOptionsMenu()V
    .locals 1

    .prologue
    .line 1857
    iget-object v0, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->openOptionsMenu()V

    .line 1858
    return-void
.end method

.method public openPreferences()V
    .locals 3

    .prologue
    .line 1788
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const-class v2, Lme/android/browser/BrowserPreferencesPage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1789
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "currentPage"

    .line 1790
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 1789
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1791
    iget-object v1, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1792
    return-void
.end method

.method public openTab(Ljava/lang/String;Lme/android/browser/Tab;ZZ)Lme/android/browser/Tab;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "parent"    # Lme/android/browser/Tab;
    .param p3, "setActive"    # Z
    .param p4, "useCurrent"    # Z

    .prologue
    .line 2398
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lme/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lme/android/browser/Controller;->openTab(Ljava/lang/String;ZZZLme/android/browser/Tab;)Lme/android/browser/Tab;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public openTab(Ljava/lang/String;ZZZ)Lme/android/browser/Tab;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "incognito"    # Z
    .param p3, "setActive"    # Z
    .param p4, "useCurrent"    # Z

    .prologue
    .line 2392
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lme/android/browser/Controller;->openTab(Ljava/lang/String;ZZZLme/android/browser/Tab;)Lme/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public openTab(Ljava/lang/String;ZZZLme/android/browser/Tab;)Lme/android/browser/Tab;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "incognito"    # Z
    .param p3, "setActive"    # Z
    .param p4, "useCurrent"    # Z
    .param p5, "parent"    # Lme/android/browser/Tab;

    .prologue
    .line 2404
    invoke-direct {p0, p2, p3, p4}, Lme/android/browser/Controller;->createNewTab(ZZZ)Lme/android/browser/Tab;

    move-result-object v0

    .line 2405
    .local v0, "tab":Lme/android/browser/Tab;
    if-eqz v0, :cond_1

    .line 2406
    if-eqz p5, :cond_0

    if-eq p5, v0, :cond_0

    .line 2407
    invoke-virtual {p5, v0}, Lme/android/browser/Tab;->addChildTab(Lme/android/browser/Tab;)V

    .line 2409
    :cond_0
    if-eqz p1, :cond_1

    .line 2410
    invoke-virtual {p0, v0, p1}, Lme/android/browser/Controller;->loadUrl(Lme/android/browser/Tab;Ljava/lang/String;)V

    .line 2413
    :cond_1
    return-object v0
.end method

.method public openTab(Lme/android/browser/IntentHandler$UrlData;)Lme/android/browser/Tab;
    .locals 3
    .param p1, "urlData"    # Lme/android/browser/IntentHandler$UrlData;

    .prologue
    const/4 v2, 0x1

    .line 2369
    invoke-direct {p0, p1}, Lme/android/browser/Controller;->showPreloadedTab(Lme/android/browser/IntentHandler$UrlData;)Lme/android/browser/Tab;

    move-result-object v0

    .line 2370
    .local v0, "tab":Lme/android/browser/Tab;
    if-nez v0, :cond_0

    .line 2371
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2, v2}, Lme/android/browser/Controller;->createNewTab(ZZZ)Lme/android/browser/Tab;

    move-result-object v0

    .line 2372
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lme/android/browser/IntentHandler$UrlData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2373
    invoke-virtual {p0, v0, p1}, Lme/android/browser/Controller;->loadUrlDataIn(Lme/android/browser/Tab;Lme/android/browser/IntentHandler$UrlData;)V

    .line 2376
    :cond_0
    return-object v0
.end method

.method public openTabToHomePage()Lme/android/browser/Tab;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2381
    iget-object v0, p0, Lme/android/browser/Controller;->mSettings:Lme/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lme/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1, v2}, Lme/android/browser/Controller;->openTab(Ljava/lang/String;ZZZ)Lme/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method protected pageDown()V
    .locals 2

    .prologue
    .line 1111
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->pageDown(Z)Z

    .line 1112
    return-void
.end method

.method protected pageUp()V
    .locals 2

    .prologue
    .line 1107
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->pageUp(Z)Z

    .line 1108
    return-void
.end method

.method public removeSubWindow(Lme/android/browser/Tab;)V
    .locals 2
    .param p1, "t"    # Lme/android/browser/Tab;

    .prologue
    .line 2325
    invoke-virtual {p1}, Lme/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2326
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-virtual {p1}, Lme/android/browser/Tab;->getSubViewContainer()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lme/android/browser/UI;->removeSubWindow(Landroid/view/View;)V

    .line 2328
    :cond_0
    return-void
.end method

.method protected removeTab(Lme/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 2266
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0, p1}, Lme/android/browser/UI;->removeTab(Lme/android/browser/Tab;)V

    .line 2267
    iget-object v0, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lme/android/browser/TabControl;->removeTab(Lme/android/browser/Tab;)Z

    .line 2268
    iget-object v0, p0, Lme/android/browser/Controller;->mCrashRecoveryHandler:Lme/android/browser/CrashRecoveryHandler;

    invoke-virtual {v0}, Lme/android/browser/CrashRecoveryHandler;->backupState()V

    .line 2269
    return-void
.end method

.method protected reuseTab(Lme/android/browser/Tab;Lme/android/browser/IntentHandler$UrlData;)V
    .locals 1
    .param p1, "appTab"    # Lme/android/browser/Tab;
    .param p2, "urlData"    # Lme/android/browser/IntentHandler$UrlData;

    .prologue
    .line 2291
    invoke-virtual {p0, p1}, Lme/android/browser/Controller;->dismissSubWindow(Lme/android/browser/Tab;)V

    .line 2294
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0, p1}, Lme/android/browser/UI;->detachTab(Lme/android/browser/Tab;)V

    .line 2296
    iget-object v0, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lme/android/browser/TabControl;->recreateWebView(Lme/android/browser/Tab;)V

    .line 2298
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0, p1}, Lme/android/browser/UI;->attachTab(Lme/android/browser/Tab;)V

    .line 2299
    iget-object v0, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v0}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2300
    invoke-virtual {p0, p1}, Lme/android/browser/Controller;->switchToTab(Lme/android/browser/Tab;)Z

    .line 2301
    invoke-virtual {p0, p1, p2}, Lme/android/browser/Controller;->loadUrlDataIn(Lme/android/browser/Tab;Lme/android/browser/IntentHandler$UrlData;)V

    .line 2308
    :goto_0
    return-void

    .line 2305
    :cond_0
    invoke-virtual {p0, p1}, Lme/android/browser/Controller;->setActiveTab(Lme/android/browser/Tab;)V

    .line 2306
    invoke-virtual {p0, p1, p2}, Lme/android/browser/Controller;->loadUrlDataIn(Lme/android/browser/Tab;Lme/android/browser/IntentHandler$UrlData;)V

    goto :goto_0
.end method

.method public setActiveTab(Lme/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 2274
    if-eqz p1, :cond_0

    .line 2275
    iget-object v0, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lme/android/browser/TabControl;->setCurrentTab(Lme/android/browser/Tab;)Z

    .line 2277
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0, p1}, Lme/android/browser/UI;->setActiveTab(Lme/android/browser/Tab;)V

    .line 2279
    :cond_0
    return-void
.end method

.method public setBlockEvents(Z)V
    .locals 0
    .param p1, "block"    # Z

    .prologue
    .line 2842
    iput-boolean p1, p0, Lme/android/browser/Controller;->mBlockEvents:Z

    .line 2843
    return-void
.end method

.method protected setShouldShowErrorConsole(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 787
    iget-boolean v1, p0, Lme/android/browser/Controller;->mShouldShowErrorConsole:Z

    if-ne p1, v1, :cond_1

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    iput-boolean p1, p0, Lme/android/browser/Controller;->mShouldShowErrorConsole:Z

    .line 792
    iget-object v1, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v0

    .line 793
    .local v0, "t":Lme/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 797
    iget-object v1, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v1, v0, p1}, Lme/android/browser/UI;->setShouldShowErrorConsole(Lme/android/browser/Tab;Z)V

    goto :goto_0
.end method

.method setUi(Lme/android/browser/UI;)V
    .locals 0
    .param p1, "ui"    # Lme/android/browser/UI;

    .prologue
    .line 429
    iput-object p1, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    .line 430
    return-void
.end method

.method public setupAutoFill(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 2805
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const-class v2, Lme/android/browser/BrowserPreferencesPage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2806
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, ":android:show_fragment"

    .line 2807
    const-class v2, Lme/android/browser/AutoFillSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2806
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2808
    iput-object p1, p0, Lme/android/browser/Controller;->mAutoFillSetupMessage:Landroid/os/Message;

    .line 2809
    iget-object v1, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2810
    return-void
.end method

.method public shareCurrentPage()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v0}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/android/browser/Controller;->shareCurrentPage(Lme/android/browser/Tab;)V

    .line 560
    return-void
.end method

.method public shouldCaptureThumbnails()Z
    .locals 1

    .prologue
    .line 2820
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0}, Lme/android/browser/UI;->shouldCaptureThumbnails()Z

    move-result v0

    return v0
.end method

.method public shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 953
    iget-boolean v0, p0, Lme/android/browser/Controller;->mMenuIsDown:Z

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 958
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Lme/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "view"    # Landroid/webkit/WebView;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 948
    iget-object v0, p0, Lme/android/browser/Controller;->mUrlHandler:Lme/android/browser/UrlHandler;

    invoke-virtual {v0, p1, p2, p3}, Lme/android/browser/UrlHandler;->shouldOverrideUrlLoading(Lme/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldShowErrorConsole()Z
    .locals 1

    .prologue
    .line 783
    iget-boolean v0, p0, Lme/android/browser/Controller;->mShouldShowErrorConsole:Z

    return v0
.end method

.method public showAutoLogin(Lme/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 1070
    sget-boolean v0, Lme/android/browser/Controller;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lme/android/browser/Tab;->inForeground()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1072
    :cond_0
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0, p1}, Lme/android/browser/UI;->showAutoLogin(Lme/android/browser/Tab;)V

    .line 1073
    return-void
.end method

.method public showCustomView(Lme/android/browser/Tab;Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "requestedOrientation"    # I
    .param p4, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 1124
    invoke-virtual {p1}, Lme/android/browser/Tab;->inForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0}, Lme/android/browser/UI;->isCustomViewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1126
    invoke-interface {p4}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 1136
    :cond_0
    :goto_0
    return-void

    .line 1129
    :cond_1
    iget-object v0, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v0, p2, p3, p4}, Lme/android/browser/UI;->showCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 1132
    iget v0, p0, Lme/android/browser/Controller;->mMenuState:I

    iput v0, p0, Lme/android/browser/Controller;->mOldMenuState:I

    .line 1133
    const/4 v0, -0x1

    iput v0, p0, Lme/android/browser/Controller;->mMenuState:I

    .line 1134
    iget-object v0, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public showPageInfo()V
    .locals 4

    .prologue
    .line 1809
    iget-object v0, p0, Lme/android/browser/Controller;->mPageDialogsHandler:Lme/android/browser/PageDialogsHandler;

    iget-object v1, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lme/android/browser/PageDialogsHandler;->showPageInfo(Lme/android/browser/Tab;ZLjava/lang/String;)V

    .line 1810
    return-void
.end method

.method public showSslCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 1065
    iget-object v0, p0, Lme/android/browser/Controller;->mPageDialogsHandler:Lme/android/browser/PageDialogsHandler;

    invoke-virtual {v0, p1, p2, p3}, Lme/android/browser/PageDialogsHandler;->showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 1066
    return-void
.end method

.method public start(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 261
    invoke-static {}, Landroid/webkit/WebViewClassic;->setShouldMonitorWebCoreThread()V

    .line 263
    iget-object v0, p0, Lme/android/browser/Controller;->mCrashRecoveryHandler:Lme/android/browser/CrashRecoveryHandler;

    invoke-virtual {v0, p1}, Lme/android/browser/CrashRecoveryHandler;->startRecovery(Landroid/content/Intent;)V

    .line 264
    return-void
.end method

.method public startVoiceRecognizer()V
    .locals 3

    .prologue
    .line 2833
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2834
    .local v0, "voice":Landroid/content/Intent;
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    .line 2835
    const-string v2, "free_form"

    .line 2834
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2836
    const-string v1, "android.speech.extra.MAX_RESULTS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2837
    iget-object v1, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2838
    return-void
.end method

.method public stopLoading()V
    .locals 3

    .prologue
    .line 802
    const/4 v2, 0x1

    iput-boolean v2, p0, Lme/android/browser/Controller;->mLoadStopped:Z

    .line 803
    iget-object v2, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v2}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v0

    .line 804
    .local v0, "tab":Lme/android/browser/Tab;
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 805
    .local v1, "w":Landroid/webkit/WebView;
    if-eqz v1, :cond_0

    .line 806
    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 807
    iget-object v2, p0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    invoke-interface {v2, v0}, Lme/android/browser/UI;->onPageStopped(Lme/android/browser/Tab;)V

    .line 809
    :cond_0
    return-void
.end method

.method public supportsVoice()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2825
    iget-object v3, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2826
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    .line 2827
    const-string v4, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2826
    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2828
    .local v0, "activities":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public switchToTab(Lme/android/browser/Tab;)Z
    .locals 2
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 2463
    iget-object v1, p0, Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v0

    .line 2464
    .local v0, "currentTab":Lme/android/browser/Tab;
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    .line 2465
    :cond_0
    const/4 v1, 0x0

    .line 2468
    :goto_0
    return v1

    .line 2467
    :cond_1
    invoke-virtual {p0, p1}, Lme/android/browser/Controller;->setActiveTab(Lme/android/browser/Tab;)V

    .line 2468
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toggleUserAgent()V
    .locals 2

    .prologue
    .line 1776
    invoke-virtual {p0}, Lme/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 1777
    .local v0, "web":Landroid/webkit/WebView;
    iget-object v1, p0, Lme/android/browser/Controller;->mSettings:Lme/android/browser/BrowserSettings;

    invoke-virtual {v1, v0}, Lme/android/browser/BrowserSettings;->toggleDesktopUseragent(Landroid/webkit/WebView;)V

    .line 1778
    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1779
    return-void
.end method

.method public updateMenuState(Lme/android/browser/Tab;Landroid/view/Menu;)V
    .locals 22
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1503
    const/4 v4, 0x0

    .line 1504
    .local v4, "canGoBack":Z
    const/4 v5, 0x0

    .line 1505
    .local v5, "canGoForward":Z
    const/4 v10, 0x0

    .line 1506
    .local v10, "isHome":Z
    const/4 v9, 0x0

    .line 1507
    .local v9, "isDesktopUa":Z
    const/4 v11, 0x0

    .line 1508
    .local v11, "isLive":Z
    if-eqz p1, :cond_0

    .line 1509
    invoke-virtual/range {p1 .. p1}, Lme/android/browser/Tab;->canGoBack()Z

    move-result v4

    .line 1510
    invoke-virtual/range {p1 .. p1}, Lme/android/browser/Tab;->canGoForward()Z

    move-result v5

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/Controller;->mSettings:Lme/android/browser/BrowserSettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lme/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lme/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/Controller;->mSettings:Lme/android/browser/BrowserSettings;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lme/android/browser/BrowserSettings;->hasDesktopUseragent(Landroid/webkit/WebView;)Z

    move-result v9

    .line 1513
    invoke-virtual/range {p1 .. p1}, Lme/android/browser/Tab;->isSnapshot()Z

    move-result v20

    if-eqz v20, :cond_2

    const/4 v11, 0x0

    .line 1515
    :cond_0
    :goto_0
    const v20, 0x7f0d00c2

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1516
    .local v3, "back":Landroid/view/MenuItem;
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1518
    const v20, 0x7f0d00b7

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 1519
    .local v8, "home":Landroid/view/MenuItem;
    if-eqz v10, :cond_3

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1521
    const v20, 0x7f0d00a3

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 1522
    .local v7, "forward":Landroid/view/MenuItem;
    invoke-interface {v7, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1524
    invoke-virtual/range {p0 .. p0}, Lme/android/browser/Controller;->isInLoad()Z

    move-result v20

    if-eqz v20, :cond_4

    const v20, 0x7f0d00c5

    :goto_2
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    .line 1526
    .local v18, "source":Landroid/view/MenuItem;
    const v20, 0x7f0d00a2

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 1527
    .local v6, "dest":Landroid/view/MenuItem;
    if-eqz v18, :cond_1

    if-eqz v6, :cond_1

    .line 1528
    invoke-interface/range {v18 .. v18}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1529
    invoke-interface/range {v18 .. v18}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1531
    :cond_1
    const v20, 0x7f0d00a1

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1, v11}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 1535
    .local v14, "pm":Landroid/content/pm/PackageManager;
    new-instance v16, Landroid/content/Intent;

    const-string v20, "android.intent.action.SEND"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1536
    .local v16, "send":Landroid/content/Intent;
    const-string v20, "text/plain"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1538
    const/high16 v20, 0x10000

    .line 1537
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 1539
    .local v15, "ri":Landroid/content/pm/ResolveInfo;
    const v20, 0x7f0d00a9

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v21

    if-eqz v15, :cond_5

    const/16 v20, 0x1

    :goto_3
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/Controller;->mSettings:Lme/android/browser/BrowserSettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lme/android/browser/BrowserSettings;->enableNavDump()Z

    move-result v12

    .line 1542
    .local v12, "isNavDump":Z
    const v20, 0x7f0d00b4

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    .line 1543
    .local v13, "nav":Landroid/view/MenuItem;
    invoke-interface {v13, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1544
    invoke-interface {v13, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/Controller;->mSettings:Lme/android/browser/BrowserSettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lme/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v17

    .line 1547
    .local v17, "showDebugSettings":Z
    const v20, 0x7f0d00ab

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    .line 1548
    .local v19, "uaSwitcher":Landroid/view/MenuItem;
    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1549
    const v20, 0x7f0d00a8

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1, v11}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1550
    const v21, 0x7f0d00ad

    if-eqz v11, :cond_6

    const/16 v20, 0x0

    :goto_4
    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1551
    const v20, 0x7f0d00af

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1553
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/Controller;->mUi:Lme/android/browser/UI;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lme/android/browser/UI;->updateMenuState(Lme/android/browser/Tab;Landroid/view/Menu;)V

    .line 1554
    return-void

    .line 1513
    .end local v3    # "back":Landroid/view/MenuItem;
    .end local v6    # "dest":Landroid/view/MenuItem;
    .end local v7    # "forward":Landroid/view/MenuItem;
    .end local v8    # "home":Landroid/view/MenuItem;
    .end local v12    # "isNavDump":Z
    .end local v13    # "nav":Landroid/view/MenuItem;
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    .end local v15    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v16    # "send":Landroid/content/Intent;
    .end local v17    # "showDebugSettings":Z
    .end local v18    # "source":Landroid/view/MenuItem;
    .end local v19    # "uaSwitcher":Landroid/view/MenuItem;
    :cond_2
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1519
    .restart local v3    # "back":Landroid/view/MenuItem;
    .restart local v8    # "home":Landroid/view/MenuItem;
    :cond_3
    const/16 v20, 0x1

    goto/16 :goto_1

    .line 1525
    .restart local v7    # "forward":Landroid/view/MenuItem;
    :cond_4
    const v20, 0x7f0d00c6

    goto/16 :goto_2

    .line 1539
    .restart local v6    # "dest":Landroid/view/MenuItem;
    .restart local v14    # "pm":Landroid/content/pm/PackageManager;
    .restart local v15    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v16    # "send":Landroid/content/Intent;
    .restart local v18    # "source":Landroid/view/MenuItem;
    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 1550
    .restart local v12    # "isNavDump":Z
    .restart local v13    # "nav":Landroid/view/MenuItem;
    .restart local v17    # "showDebugSettings":Z
    .restart local v19    # "uaSwitcher":Landroid/view/MenuItem;
    :cond_6
    const/16 v20, 0x1

    goto :goto_4
.end method

.method viewDownloads()V
    .locals 2

    .prologue
    .line 1917
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1918
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1919
    return-void
.end method
