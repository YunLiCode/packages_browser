.class public Lcom/android/browser/Controller;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Lcom/android/browser/ActivityController;
.implements Lcom/android/browser/UiController;
.implements Lcom/android/browser/WebViewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/Controller$SelectText;,
        Lcom/android/browser/Controller$Download;,
        Lcom/android/browser/Controller$Copy;,
        Lcom/android/browser/Controller$SaveSnapshotTask;,
        Lcom/android/browser/Controller$PruneThumbnails;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

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

.field private mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

.field private mCurrentMenuState:I

.field private mExtendedMenuOpen:Z

.field private mFactory:Lcom/android/browser/WebViewFactory;

.field private mHandler:Landroid/os/Handler;

.field private mIntentHandler:Lcom/android/browser/IntentHandler;

.field private mLoadStopped:Z

.field private mMenuIsDown:Z

.field private mMenuState:I

.field private mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

.field private mOldMenuState:I

.field private mOptionsMenuOpen:Z

.field private mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

.field private mSettings:Lcom/android/browser/BrowserSettings;

.field private mShouldShowErrorConsole:Z

.field private mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

.field private mTabControl:Lcom/android/browser/TabControl;

.field private mUi:Lcom/android/browser/UI;

.field private mUploadHandler:Lcom/android/browser/UploadHandler;

.field private mUrlHandler:Lcom/android/browser/UrlHandler;

.field private mVoiceResult:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const-class v0, Lcom/android/browser/Controller;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/browser/Controller;->$assertionsDisabled:Z

    .line 140
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/browser/Controller;->WINDOW_SHORTCUT_ID_ARRAY:[I

    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 140
    nop

    :array_0
    .array-data 4
        0x7f0d00bb
        0x7f0d00bc
        0x7f0d00bd
        0x7f0d00be
        0x7f0d00bf
        0x7f0d00c0
        0x7f0d00c1
        0x7f0d00c2
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "browser"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/Controller;->mCurrentMenuState:I

    .line 180
    const v0, 0x7f0d00a0

    iput v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    .line 181
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/Controller;->mOldMenuState:I

    .line 211
    iput-boolean v3, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    .line 225
    iput-object p1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    .line 226
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    .line 227
    new-instance v0, Lcom/android/browser/TabControl;

    invoke-direct {v0, p0}, Lcom/android/browser/TabControl;-><init>(Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    .line 228
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0, p0}, Lcom/android/browser/BrowserSettings;->setController(Lcom/android/browser/Controller;)V

    .line 229
    invoke-static {p0}, Lcom/android/browser/CrashRecoveryHandler;->initialize(Lcom/android/browser/Controller;)Lcom/android/browser/CrashRecoveryHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    .line 230
    iget-object v0, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    invoke-virtual {v0}, Lcom/android/browser/CrashRecoveryHandler;->preloadCrashState()V

    .line 231
    new-instance v0, Lcom/android/browser/BrowserWebViewFactory;

    invoke-direct {v0, p1}, Lcom/android/browser/BrowserWebViewFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mFactory:Lcom/android/browser/WebViewFactory;

    .line 233
    new-instance v0, Lcom/android/browser/UrlHandler;

    invoke-direct {v0, p0}, Lcom/android/browser/UrlHandler;-><init>(Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mUrlHandler:Lcom/android/browser/UrlHandler;

    .line 234
    new-instance v0, Lcom/android/browser/IntentHandler;

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/browser/IntentHandler;-><init>(Landroid/app/Activity;Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mIntentHandler:Lcom/android/browser/IntentHandler;

    .line 235
    new-instance v0, Lcom/android/browser/PageDialogsHandler;

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/browser/PageDialogsHandler;-><init>(Landroid/content/Context;Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    .line 237
    invoke-direct {p0}, Lcom/android/browser/Controller;->startHandler()V

    .line 238
    new-instance v0, Lcom/android/browser/Controller$1;

    iget-object v1, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/browser/Controller$1;-><init>(Lcom/android/browser/Controller;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mBookmarksObserver:Landroid/database/ContentObserver;

    .line 248
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/browser/Controller;->mBookmarksObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 251
    new-instance v0, Lcom/android/browser/NetworkStateHandler;

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/browser/NetworkStateHandler;-><init>(Landroid/app/Activity;Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

    .line 253
    new-instance v0, Lcom/android/browser/SystemAllowGeolocationOrigins;

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/browser/SystemAllowGeolocationOrigins;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    .line 255
    iget-object v0, p0, Lcom/android/browser/Controller;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    invoke-virtual {v0}, Lcom/android/browser/SystemAllowGeolocationOrigins;->start()V

    .line 257
    invoke-direct {p0}, Lcom/android/browser/Controller;->openIconDatabase()V

    .line 258
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/Controller;)Lcom/android/browser/TabControl;
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/Controller;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/Controller;Landroid/os/Bundle;Landroid/content/Intent;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/Controller;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Landroid/content/Intent;
    .param p3, "x3"    # J
    .param p5, "x4"    # Z

    .prologue
    .line 106
    invoke-direct/range {p0 .. p5}, Lcom/android/browser/Controller;->onPreloginFinished(Landroid/os/Bundle;Landroid/content/Intent;JZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/browser/Controller;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/Controller;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/Controller;)Lcom/android/browser/BrowserSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/Controller;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/Controller;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/Controller;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/browser/Controller;->copy(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/browser/Controller;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/Controller;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/Controller;Lcom/android/browser/Tab;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/Controller;
    .param p1, "x1"    # Lcom/android/browser/Tab;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/browser/Controller;->updateScreenshot(Lcom/android/browser/Tab;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/browser/Controller;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/Controller;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/browser/Controller;)Lcom/android/browser/UI;
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/Controller;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    return-object v0
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 603
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 605
    .local v0, "cm":Landroid/content/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 606
    return-void
.end method

.method private createNewTab(ZZZ)Lcom/android/browser/Tab;
    .locals 2
    .param p1, "incognito"    # Z
    .param p2, "setActive"    # Z
    .param p3, "useCurrent"    # Z

    .prologue
    .line 2434
    const/4 v0, 0x0

    .line 2435
    .local v0, "tab":Lcom/android/browser/Tab;
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2436
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1, p1}, Lcom/android/browser/TabControl;->createNewTab(Z)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2437
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->addTab(Lcom/android/browser/Tab;)V

    .line 2438
    if-eqz p2, :cond_0

    .line 2439
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 2449
    :cond_0
    :goto_0
    return-object v0

    .line 2442
    :cond_1
    if-eqz p3, :cond_2

    .line 2443
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2444
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/Controller;->reuseTab(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    goto :goto_0

    .line 2446
    :cond_2
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1}, Lcom/android/browser/UI;->showMaxTabsWarning()V

    goto :goto_0
.end method

.method static createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "view"    # Landroid/webkit/WebView;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v9, 0x0

    .line 2050
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move-object v5, v9

    .line 2087
    .end local p0    # "view":Landroid/webkit/WebView;
    :goto_0
    return-object v5

    .line 2057
    .restart local p0    # "view":Landroid/webkit/WebView;
    :cond_1
    const/4 v3, 0x2

    .line 2058
    .local v3, "filter_scale":I
    mul-int/lit8 v7, p1, 0x2

    .line 2059
    .local v7, "scaledWidth":I
    mul-int/lit8 v6, p2, 0x2

    .line 2060
    .local v6, "scaledHeight":I
    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ne v8, v7, :cond_2

    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-eq v8, v6, :cond_4

    .line 2062
    :cond_2
    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_3

    .line 2063
    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 2064
    sput-object v9, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 2066
    :cond_3
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    sput-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 2069
    :cond_4
    new-instance v0, Landroid/graphics/Canvas;

    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2070
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v1

    .line 2071
    .local v1, "contentWidth":I
    int-to-float v8, v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScale()F

    move-result v10

    int-to-float v11, v1

    mul-float/2addr v10, v11

    div-float v4, v8, v10

    .line 2072
    .local v4, "overviewScale":F
    instance-of v8, p0, Lcom/android/browser/BrowserWebView;

    if-eqz v8, :cond_5

    move-object v8, p0

    .line 2073
    check-cast v8, Lcom/android/browser/BrowserWebView;

    invoke-virtual {v8}, Lcom/android/browser/BrowserWebView;->getTitleHeight()I

    move-result v8

    neg-int v2, v8

    .line 2074
    .local v2, "dy":I
    const/4 v8, 0x0

    int-to-float v10, v2

    mul-float/2addr v10, v4

    invoke-virtual {v0, v8, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2077
    .end local v2    # "dy":I
    :cond_5
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2079
    instance-of v8, p0, Lcom/android/browser/BrowserWebView;

    if-eqz v8, :cond_6

    .line 2080
    check-cast p0, Lcom/android/browser/BrowserWebView;

    .end local p0    # "view":Landroid/webkit/WebView;
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserWebView;->drawContent(Landroid/graphics/Canvas;)V

    .line 2084
    :goto_1
    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x1

    invoke-static {v8, p1, p2, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2086
    .local v5, "ret":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2082
    .end local v5    # "ret":Landroid/graphics/Bitmap;
    .restart local p0    # "view":Landroid/webkit/WebView;
    :cond_6
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method static getDesiredThumbnailHeight(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 2045
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method static getDesiredThumbnailWidth(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 2034
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method private getNextTab()Lcom/android/browser/Tab;
    .locals 2

    .prologue
    .line 2647
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 2648
    .local v0, "pos":I
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 2649
    const/4 v0, 0x0

    .line 2651
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v1

    return-object v1
.end method

.method private getPrevTab()Lcom/android/browser/Tab;
    .locals 2

    .prologue
    .line 2659
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 2660
    .local v0, "pos":I
    if-gez v0, :cond_0

    .line 2661
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 2663
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v1

    return-object v1
.end method

.method private goLive()V
    .locals 3

    .prologue
    .line 1808
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1809
    .local v0, "t":Lcom/android/browser/Tab;
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/Tab;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 1810
    return-void
.end method

.method private maybeUpdateFavicon(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "tab"    # Lcom/android/browser/Tab;
    .param p2, "originalUrl"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1090
    if-nez p4, :cond_1

    .line 1097
    :cond_0
    :goto_0
    return-void

    .line 1093
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/android/browser/Bookmarks;->updateFavicon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private onPreloginFinished(Landroid/os/Bundle;Landroid/content/Intent;JZ)V
    .locals 16
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "currentTabId"    # J
    .param p5, "restoreIncognitoTabs"    # Z

    .prologue
    .line 303
    const-wide/16 v1, -0x1

    cmp-long v1, p3, v1

    if-nez v1, :cond_7

    .line 304
    new-instance v1, Lcom/android/browser/Controller$PruneThumbnails;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/browser/Controller$PruneThumbnails;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v1}, Lcom/android/browser/BackgroundHandler;->execute(Ljava/lang/Runnable;)V

    .line 305
    if-nez p2, :cond_4

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/Controller;->openTabToHomePage()Lcom/android/browser/Tab;

    .line 333
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getTabs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/browser/UI;->updateTabs(Ljava/util/List;)V

    .line 357
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/Controller;->getSettings()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getJsEngineFlags()Ljava/lang/String;

    move-result-object v9

    .line 358
    .local v9, "jsFlags":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/WebViewClassic;->fromWebView(Landroid/webkit/WebView;)Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/webkit/WebViewClassic;->setJsFlags(Ljava/lang/String;)V

    .line 361
    :cond_2
    if-eqz p2, :cond_3

    const-string v1, "show_bookmarks"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 363
    sget-object v1, Lcom/android/browser/UI$ComboViews;->Bookmarks:Lcom/android/browser/UI$ComboViews;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Lcom/android/browser/UI$ComboViews;)V

    .line 365
    :cond_3
    return-void

    .line 310
    .end local v9    # "jsFlags":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 315
    .local v7, "extra":Landroid/os/Bundle;
    invoke-static/range {p2 .. p2}, Lcom/android/browser/IntentHandler;->getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/IntentHandler$UrlData;

    move-result-object v14

    .line 316
    .local v14, "urlData":Lcom/android/browser/IntentHandler$UrlData;
    const/4 v12, 0x0

    .line 317
    .local v12, "t":Lcom/android/browser/Tab;
    invoke-virtual {v14}, Lcom/android/browser/IntentHandler$UrlData;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/Controller;->openTabToHomePage()Lcom/android/browser/Tab;

    move-result-object v12

    .line 322
    :goto_2
    if-eqz v12, :cond_5

    .line 323
    const-string v1, "com.android.browser.application_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/android/browser/Tab;->setAppId(Ljava/lang/String;)V

    .line 325
    :cond_5
    invoke-virtual {v12}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v15

    .line 326
    .local v15, "webView":Landroid/webkit/WebView;
    if-eqz v7, :cond_0

    .line 327
    const-string v1, "browser.initialZoomLevel"

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 328
    .local v11, "scale":I
    if-lez v11, :cond_0

    const/16 v1, 0x3e8

    if-gt v11, v1, :cond_0

    .line 329
    invoke-virtual {v15, v11}, Landroid/webkit/WebView;->setInitialScale(I)V

    goto :goto_0

    .line 320
    .end local v11    # "scale":I
    .end local v15    # "webView":Landroid/webkit/WebView;
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/browser/Controller;->openTab(Lcom/android/browser/IntentHandler$UrlData;)Lcom/android/browser/Tab;

    move-result-object v12

    goto :goto_2

    .line 335
    .end local v7    # "extra":Landroid/os/Bundle;
    .end local v12    # "t":Lcom/android/browser/Tab;
    .end local v14    # "urlData":Lcom/android/browser/IntentHandler$UrlData;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v2}, Lcom/android/browser/UI;->needsRestoreAllTabs()Z

    move-result v6

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/browser/TabControl;->restoreState(Landroid/os/Bundle;JZZ)V

    .line 337
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabs()Ljava/util/List;

    move-result-object v13

    .line 338
    .local v13, "tabs":Ljava/util/List;, "Ljava/util/List<Lcom/android/browser/Tab;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 339
    .local v10, "restoredTabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/browser/Tab;

    .line 340
    .restart local v12    # "t":Lcom/android/browser/Tab;
    invoke-virtual {v12}, Lcom/android/browser/Tab;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 342
    .end local v12    # "t":Lcom/android/browser/Tab;
    :cond_8
    new-instance v1, Lcom/android/browser/Controller$PruneThumbnails;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v10}, Lcom/android/browser/Controller$PruneThumbnails;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v1}, Lcom/android/browser/BackgroundHandler;->execute(Ljava/lang/Runnable;)V

    .line 343
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/Controller;->openTabToHomePage()Lcom/android/browser/Tab;

    .line 346
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1, v13}, Lcom/android/browser/UI;->updateTabs(Ljava/util/List;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 352
    if-eqz p2, :cond_1

    .line 353
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller;->mIntentHandler:Lcom/android/browser/IntentHandler;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/android/browser/IntentHandler;->onNewIntent(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method private openIconDatabase()V
    .locals 2

    .prologue
    .line 464
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    .line 465
    .local v0, "instance":Landroid/webkit/WebIconDatabase;
    new-instance v1, Lcom/android/browser/Controller$3;

    invoke-direct {v1, p0, v0}, Lcom/android/browser/Controller$3;-><init>(Lcom/android/browser/Controller;Landroid/webkit/WebIconDatabase;)V

    invoke-static {v1}, Lcom/android/browser/BackgroundHandler;->execute(Ljava/lang/Runnable;)V

    .line 472
    return-void
.end method

.method private pauseWebViewTimers(Lcom/android/browser/Tab;)Z
    .locals 3
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    const/4 v0, 0x1

    .line 740
    if-nez p1, :cond_0

    .line 747
    :goto_0
    return v0

    .line 742
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inPageLoad()Z

    move-result v1

    if-nez v1, :cond_1

    .line 743
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 744
    invoke-static {}, Lcom/android/browser/WebViewTimersControl;->getInstance()Lcom/android/browser/WebViewTimersControl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/browser/WebViewTimersControl;->onBrowserActivityPause(Landroid/webkit/WebView;)V

    goto :goto_0

    .line 747
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 717
    iget-object v0, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 719
    :cond_0
    return-void
.end method

.method private resumeWebViewTimers(Lcom/android/browser/Tab;)V
    .locals 3
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 726
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inPageLoad()Z

    move-result v0

    .line 727
    .local v0, "inLoad":Z
    iget-boolean v2, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 728
    :cond_1
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 729
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 730
    .local v1, "w":Landroid/webkit/WebView;
    invoke-static {}, Lcom/android/browser/WebViewTimersControl;->getInstance()Lcom/android/browser/WebViewTimersControl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/browser/WebViewTimersControl;->onBrowserActivityResume(Landroid/webkit/WebView;)V

    .line 732
    .end local v1    # "w":Landroid/webkit/WebView;
    :cond_2
    return-void
.end method

.method private shareCurrentPage(Lcom/android/browser/Tab;)V
    .locals 7
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 564
    if-eqz p1, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/browser/Controller;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v5

    iget-object v6, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/android/browser/Controller;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/browser/Controller;->createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/browser/Controller;->sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 571
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
    .line 588
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 589
    .local v0, "send":Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    const-string v1, "share_favicon"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 593
    const-string v1, "share_screenshot"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 595
    const v1, 0x7f0c006a

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :goto_0
    return-void

    .line 597
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showPreloadedTab(Lcom/android/browser/IntentHandler$UrlData;)Lcom/android/browser/Tab;
    .locals 6
    .param p1, "urlData"    # Lcom/android/browser/IntentHandler$UrlData;

    .prologue
    const/4 v2, 0x0

    .line 2351
    invoke-virtual {p1}, Lcom/android/browser/IntentHandler$UrlData;->isPreloaded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2375
    :goto_0
    return-object v2

    .line 2354
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/IntentHandler$UrlData;->getPreloadedTab()Lcom/android/browser/PreloadedTabControl;

    move-result-object v3

    .line 2355
    .local v3, "tabControl":Lcom/android/browser/PreloadedTabControl;
    invoke-virtual {p1}, Lcom/android/browser/IntentHandler$UrlData;->getSearchBoxQueryToSubmit()Ljava/lang/String;

    move-result-object v1

    .line 2356
    .local v1, "sbQuery":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2357
    iget-object v4, p1, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/browser/IntentHandler$UrlData;->mHeaders:Ljava/util/Map;

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/browser/PreloadedTabControl;->searchBoxSubmit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2359
    invoke-virtual {v3}, Lcom/android/browser/PreloadedTabControl;->destroy()V

    goto :goto_0

    .line 2364
    :cond_1
    iget-object v4, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2365
    iget-object v4, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/browser/TabControl;->getLeastUsedTab(Lcom/android/browser/Tab;)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2366
    .local v0, "leastUsed":Lcom/android/browser/Tab;
    if-eqz v0, :cond_2

    .line 2367
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    .line 2370
    .end local v0    # "leastUsed":Lcom/android/browser/Tab;
    :cond_2
    invoke-virtual {v3}, Lcom/android/browser/PreloadedTabControl;->getTab()Lcom/android/browser/Tab;

    move-result-object v2

    .line 2371
    .local v2, "t":Lcom/android/browser/Tab;
    invoke-virtual {v2}, Lcom/android/browser/Tab;->refreshIdAfterPreload()V

    .line 2372
    iget-object v4, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4, v2}, Lcom/android/browser/TabControl;->addPreloadedTab(Lcom/android/browser/Tab;)V

    .line 2373
    invoke-virtual {p0, v2}, Lcom/android/browser/Controller;->addTab(Lcom/android/browser/Tab;)V

    .line 2374
    invoke-virtual {p0, v2}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    goto :goto_0
.end method

.method private startHandler()V
    .locals 1

    .prologue
    .line 475
    new-instance v0, Lcom/android/browser/Controller$4;

    invoke-direct {v0, p0}, Lcom/android/browser/Controller$4;-><init>(Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    .line 551
    return-void
.end method

.method private updateInLoadMenuItems(Landroid/view/Menu;Lcom/android/browser/Tab;)V
    .locals 3

    .prologue
    .line 1459
    if-nez p1, :cond_1

    .line 1470
    :cond_0
    :goto_0
    return-void

    .line 1462
    :cond_1
    const v0, 0x7f0d00a2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1463
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/browser/Tab;->inPageLoad()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0d00c6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1466
    :goto_1
    if-eqz v0, :cond_0

    .line 1467
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1468
    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 1463
    :cond_2
    const v0, 0x7f0d00c7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_1
.end method

.method private updateScreenshot(Lcom/android/browser/Tab;)V
    .locals 7
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 2096
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    .line 2097
    .local v6, "view":Landroid/webkit/WebView;
    if-nez v6, :cond_1

    .line 2153
    :cond_0
    :goto_0
    return-void

    .line 2101
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 2102
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    .line 2103
    .local v3, "originalUrl":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2110
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/browser/Tab;->isBookmarkedSite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2114
    :cond_2
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/browser/Controller;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/browser/Controller;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v1

    invoke-static {v6, v0, v1}, Lcom/android/browser/Controller;->createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2116
    .local v5, "bm":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    .line 2120
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2121
    .local v2, "cr":Landroid/content/ContentResolver;
    new-instance v0, Lcom/android/browser/Controller$10;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/Controller$10;-><init>(Lcom/android/browser/Controller;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller$10;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected addTab(Lcom/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 2274
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->addTab(Lcom/android/browser/Tab;)V

    .line 2275
    return-void
.end method

.method public attachSubWindow(Lcom/android/browser/Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 2344
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2345
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSubViewContainer()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->attachSubWindow(Landroid/view/View;)V

    .line 2346
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 2348
    :cond_0
    return-void
.end method

.method public bookmarkCurrentPage()V
    .locals 2

    .prologue
    .line 1801
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/browser/Controller;->createBookmarkCurrentPageIntent(Z)Landroid/content/Intent;

    move-result-object v0

    .line 1802
    .local v0, "bookmarkIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1803
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1805
    :cond_0
    return-void
.end method

.method public bookmarkedStatusHasChanged(Lcom/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->bookmarkedStatusHasChanged(Lcom/android/browser/Tab;)V

    .line 1103
    return-void
.end method

.method public bookmarksOrHistoryPicker(Lcom/android/browser/UI$ComboViews;)V
    .locals 3

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1236
    :goto_0
    return-void

    .line 1228
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/Controller;->isInCustomActionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1229
    invoke-virtual {p0}, Lcom/android/browser/Controller;->endActionMode()V

    .line 1231
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1233
    const-string v2, "disable_new_window"

    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1235
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1, v1}, Lcom/android/browser/UI;->showComboView(Lcom/android/browser/UI$ComboViews;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1233
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public closeCurrentTab()V
    .locals 1

    .prologue
    .line 2485
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->closeCurrentTab(Z)V

    .line 2486
    return-void
.end method

.method protected closeCurrentTab(Z)V
    .locals 5
    .param p1, "andQuit"    # Z

    .prologue
    .line 2489
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2490
    iget-object v3, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    invoke-virtual {v3}, Lcom/android/browser/CrashRecoveryHandler;->clearState()V

    .line 2491
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/browser/TabControl;->removeTab(Lcom/android/browser/Tab;)Z

    .line 2492
    iget-object v3, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 2511
    :cond_0
    :goto_0
    return-void

    .line 2495
    :cond_1
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2496
    .local v0, "current":Lcom/android/browser/Tab;
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v2

    .line 2497
    .local v2, "pos":I
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getParent()Lcom/android/browser/Tab;

    move-result-object v1

    .line 2498
    .local v1, "newTab":Lcom/android/browser/Tab;
    if-nez v1, :cond_2

    .line 2499
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v1

    .line 2500
    if-nez v1, :cond_2

    .line 2501
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v1

    .line 2504
    :cond_2
    if-eqz p1, :cond_3

    .line 2505
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3, v1}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 2506
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 2507
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2509
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0
.end method

.method protected closeEmptyTab()V
    .locals 2

    .prologue
    .line 2294
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2295
    .local v0, "current":Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v1

    if-nez v1, :cond_0

    .line 2297
    invoke-virtual {p0}, Lcom/android/browser/Controller;->closeCurrentTab()V

    .line 2299
    :cond_0
    return-void
.end method

.method public closeOtherTabs()V
    .locals 4

    .prologue
    .line 2531
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 2532
    .local v1, "inactiveTabs":I
    move v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2533
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v2

    .line 2534
    .local v2, "tab":Lcom/android/browser/Tab;
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 2535
    invoke-virtual {p0, v2}, Lcom/android/browser/Controller;->removeTab(Lcom/android/browser/Tab;)V

    .line 2532
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2538
    .end local v2    # "tab":Lcom/android/browser/Tab;
    :cond_1
    return-void
.end method

.method public closeTab(Lcom/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 2519
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2520
    invoke-virtual {p0}, Lcom/android/browser/Controller;->closeCurrentTab()V

    .line 2524
    :goto_0
    return-void

    .line 2522
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->removeTab(Lcom/android/browser/Tab;)V

    goto :goto_0
.end method

.method public createBookmarkCurrentPageIntent(Z)Landroid/content/Intent;
    .locals 5

    .prologue
    .line 1988
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 1989
    if-nez v1, :cond_0

    .line 1990
    const/4 v0, 0x0

    .line 2015
    :goto_0
    return-object v0

    .line 1992
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/browser/AddBookmarkPage;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1994
    const-string v2, "url"

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1995
    const-string v2, "title"

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1996
    invoke-virtual {v1}, Landroid/webkit/WebView;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v2

    .line 1997
    if-eqz v2, :cond_1

    .line 1998
    const-string v3, "touch_icon_url"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1999
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 2000
    if-eqz v2, :cond_1

    .line 2001
    const-string v3, "user_agent"

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2005
    :cond_1
    const-string v2, "thumbnail"

    iget-object v3, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/browser/Controller;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/browser/Controller;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/android/browser/Controller;->createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2008
    const-string v2, "favicon"

    invoke-virtual {v1}, Landroid/webkit/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2009
    if-eqz p1, :cond_2

    .line 2010
    const-string v1, "check_for_dupe"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2014
    :cond_2
    const-string v1, "gravity"

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public createNewSnapshotTab(JZ)Lcom/android/browser/SnapshotTab;
    .locals 2
    .param p1, "snapshotId"    # J
    .param p3, "setActive"    # Z

    .prologue
    .line 2454
    const/4 v0, 0x0

    .line 2455
    .local v0, "tab":Lcom/android/browser/SnapshotTab;
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2456
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1, p1, p2}, Lcom/android/browser/TabControl;->createSnapshotTab(J)Lcom/android/browser/SnapshotTab;

    move-result-object v0

    .line 2457
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->addTab(Lcom/android/browser/Tab;)V

    .line 2458
    if-eqz p3, :cond_0

    .line 2459
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 2464
    :cond_0
    :goto_0
    return-object v0

    .line 2462
    :cond_1
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1}, Lcom/android/browser/UI;->showMaxTabsWarning()V

    goto :goto_0
.end method

.method createSaveState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 680
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 681
    .local v0, "saveState":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1, v0}, Lcom/android/browser/TabControl;->saveState(Landroid/os/Bundle;)V

    .line 682
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 684
    const-string v1, "lastActiveDate"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 686
    :cond_0
    return-object v0
.end method

.method public createSubWindow(Lcom/android/browser/Tab;)V
    .locals 4
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/android/browser/Controller;->endActionMode()V

    .line 412
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 413
    .local v0, "mainView":Landroid/webkit/WebView;
    iget-object v3, p0, Lcom/android/browser/Controller;->mFactory:Lcom/android/browser/WebViewFactory;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v3, v2}, Lcom/android/browser/WebViewFactory;->createWebView(Z)Landroid/webkit/WebView;

    move-result-object v1

    .line 416
    .local v1, "subView":Landroid/webkit/WebView;
    iget-object v2, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v2, p1, v1}, Lcom/android/browser/UI;->createSubWindow(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V

    .line 417
    return-void

    .line 413
    .end local v1    # "subView":Landroid/webkit/WebView;
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v2

    goto :goto_0
.end method

.method didUserStopLoading()Z
    .locals 1

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mLoadStopped:Z

    return v0
.end method

.method public dismissSubWindow(Lcom/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 2326
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->removeSubWindow(Lcom/android/browser/Tab;)V

    .line 2328
    invoke-virtual {p1}, Lcom/android/browser/Tab;->dismissSubWindow()V

    .line 2329
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 2330
    .local v0, "wv":Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 2331
    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 2333
    :cond_0
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2896
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mBlockEvents:Z

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2876
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mBlockEvents:Z

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2881
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mBlockEvents:Z

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2886
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mBlockEvents:Z

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2891
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mBlockEvents:Z

    return v0
.end method

.method doStart(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 271
    if-eqz p1, :cond_1

    const-string v0, "lastActiveDate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    move-object v7, v0

    .line 273
    .local v7, "lastActiveDate":Ljava/util/Calendar;
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 274
    .local v8, "today":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 275
    .local v9, "yesterday":Ljava/util/Calendar;
    const/4 v0, 0x5

    const/4 v1, -0x1

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 277
    if-eqz v7, :cond_2

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v6, 0x1

    .line 282
    .local v6, "restoreIncognitoTabs":Z
    :goto_1
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1, v6}, Lcom/android/browser/TabControl;->canRestoreState(Landroid/os/Bundle;Z)J

    move-result-wide v4

    .line 285
    .local v4, "currentTabId":J
    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    .line 289
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 292
    :cond_0
    iget-object v10, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/android/browser/Controller$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/browser/Controller$2;-><init>(Lcom/android/browser/Controller;Landroid/os/Bundle;Landroid/content/Intent;JZ)V

    invoke-static {v10, v0}, Lcom/android/browser/GoogleAccountLogin;->startLoginIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 299
    return-void

    .line 271
    .end local v4    # "currentTabId":J
    .end local v6    # "restoreIncognitoTabs":Z
    .end local v7    # "lastActiveDate":Ljava/util/Calendar;
    .end local v8    # "today":Ljava/util/Calendar;
    .end local v9    # "yesterday":Ljava/util/Calendar;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 277
    .restart local v7    # "lastActiveDate":Ljava/util/Calendar;
    .restart local v8    # "today":Ljava/util/Calendar;
    .restart local v9    # "yesterday":Ljava/util/Calendar;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public doUpdateVisitedHistory(Lcom/android/browser/Tab;Z)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 977
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 986
    :cond_0
    :goto_0
    return-void

    .line 978
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 980
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const-string v3, "about:"

    const/4 v5, 0x6

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 984
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/browser/DataController;->getInstance(Landroid/content/Context;)Lcom/android/browser/DataController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/DataController;->updateVisitedHistory(Ljava/lang/String;)V

    .line 985
    iget-object v0, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    invoke-virtual {v0}, Lcom/android/browser/CrashRecoveryHandler;->backupState()V

    goto :goto_0
.end method

.method public editUrl()V
    .locals 3

    .prologue
    .line 1118
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mOptionsMenuOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/browser/UI;->editUrl(ZZ)V

    .line 1120
    return-void
.end method

.method public endActionMode()V
    .locals 1

    .prologue
    .line 1955
    iget-object v0, p0, Lcom/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1956
    iget-object v0, p0, Lcom/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1958
    :cond_0
    return-void
.end method

.method public findOnPage()V
    .locals 3

    .prologue
    .line 1788
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->showFindDialog(Ljava/lang/String;Z)Z

    .line 1789
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getCurrentTab()Lcom/android/browser/Tab;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTopWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getMaxTabs()I
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getSettings()Lcom/android/browser/BrowserSettings;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method

.method public getTabControl()Lcom/android/browser/TabControl;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    return-object v0
.end method

.method public getTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getTabs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUi()Lcom/android/browser/UI;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->getVideoLoadingProgressView()Landroid/view/View;

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
    .line 990
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    new-instance v0, Lcom/android/browser/Controller$5;

    invoke-direct {v0, p0, p1}, Lcom/android/browser/Controller$5;-><init>(Lcom/android/browser/Controller;Landroid/webkit/ValueCallback;)V

    .line 1001
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;[Ljava/lang/String;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1002
    return-void
.end method

.method public getWebViewFactory()Lcom/android/browser/WebViewFactory;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/browser/Controller;->mFactory:Lcom/android/browser/WebViewFactory;

    return-object v0
.end method

.method goBackOnePageOrQuit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2604
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2605
    .local v0, "current":Lcom/android/browser/Tab;
    if-nez v0, :cond_0

    .line 2613
    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 2640
    :goto_0
    return-void

    .line 2616
    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/Tab;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2617
    invoke-virtual {v0}, Lcom/android/browser/Tab;->goBack()V

    goto :goto_0

    .line 2621
    :cond_1
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getParent()Lcom/android/browser/Tab;

    move-result-object v1

    .line 2622
    .local v1, "parent":Lcom/android/browser/Tab;
    if-eqz v1, :cond_2

    .line 2623
    invoke-virtual {p0, v1}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    .line 2625
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 2627
    :cond_2
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getAppId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/android/browser/Tab;->closeOnBack()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2628
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/browser/Controller;->closeCurrentTab(Z)V

    .line 2637
    :cond_4
    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method public handleNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->isWebShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->showWeb(Z)V

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mIntentHandler:Lcom/android/browser/IntentHandler;

    invoke-virtual {v0, p1}, Lcom/android/browser/IntentHandler;->onNewIntent(Landroid/content/Intent;)V

    .line 627
    return-void
.end method

.method public hideAutoLogin(Lcom/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 1078
    sget-boolean v0, Lcom/android/browser/Controller;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->hideAutoLogin(Lcom/android/browser/Tab;)V

    .line 1080
    return-void
.end method

.method public hideCustomView()V
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->isCustomViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->onHideCustomView()V

    .line 1144
    iget v0, p0, Lcom/android/browser/Controller;->mOldMenuState:I

    iput v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    .line 1145
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/Controller;->mOldMenuState:I

    .line 1146
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1148
    :cond_0
    return-void
.end method

.method protected isActivityPaused()Z
    .locals 1

    .prologue
    .line 774
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    return v0
.end method

.method public isInCustomActionMode()Z
    .locals 1

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

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
    .line 1972
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1973
    .local v0, "tab":Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->inPageLoad()Z

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
    .line 2826
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    return v0
.end method

.method isMenuOrCtrlKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 2667
    const/16 v0, 0x52

    if-eq v0, p1, :cond_0

    const/16 v0, 0x71

    if-eq v0, p1, :cond_0

    const/16 v0, 0x72

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V
    .locals 1
    .param p1, "tab"    # Lcom/android/browser/Tab;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 2563
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/browser/Controller;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/util/Map;)V

    .line 2564
    return-void
.end method

.method protected loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "tab"    # Lcom/android/browser/Tab;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/browser/Tab;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2567
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 2568
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 2569
    invoke-virtual {p1, p2, p3}, Lcom/android/browser/Tab;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 2570
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onProgressChanged(Lcom/android/browser/Tab;)V

    .line 2572
    :cond_0
    return-void
.end method

.method protected loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V
    .locals 2
    .param p1, "t"    # Lcom/android/browser/Tab;
    .param p2, "data"    # Lcom/android/browser/IntentHandler$UrlData;

    .prologue
    .line 2581
    if-eqz p2, :cond_0

    .line 2582
    invoke-virtual {p2}, Lcom/android/browser/IntentHandler$UrlData;->isPreloaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2591
    :cond_0
    :goto_0
    return-void

    .line 2585
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v0, p2, Lcom/android/browser/IntentHandler$UrlData;->mDisableUrlOverride:Z

    if-eqz v0, :cond_2

    .line 2586
    invoke-virtual {p1}, Lcom/android/browser/Tab;->disableUrlOverridingForLoad()V

    .line 2588
    :cond_2
    iget-object v0, p2, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/browser/IntentHandler$UrlData;->mHeaders:Ljava/util/Map;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/browser/Controller;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected loadUrlFromContext(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 2542
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2543
    .local v0, "tab":Lcom/android/browser/Tab;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 2545
    .local v1, "view":Landroid/webkit/WebView;
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 2546
    invoke-static {p1}, Lcom/android/browser/UrlUtils;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2547
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->fromWebView(Landroid/webkit/WebView;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2549
    invoke-virtual {p0, v0, p1}, Lcom/android/browser/Controller;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V

    .line 2552
    :cond_0
    return-void

    .line 2543
    .end local v1    # "view":Landroid/webkit/WebView;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1966
    invoke-virtual {p0}, Lcom/android/browser/Controller;->isInCustomActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1969
    :goto_0
    return-void

    .line 1967
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-virtual {p0}, Lcom/android/browser/Controller;->isInLoad()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->onActionModeFinished(Z)V

    .line 1968
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 1939
    iput-object p1, p0, Lcom/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    .line 1940
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1153
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1215
    :goto_0
    return-void

    .line 1154
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1214
    :cond_1
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    goto :goto_0

    .line 1156
    :pswitch_1
    if-ne p2, v3, :cond_1

    if-eqz p3, :cond_1

    .line 1157
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1158
    const-string v1, "privacy_clear_history"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1159
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->removeParentChildRelationShips()V

    goto :goto_1

    .line 1165
    :pswitch_2
    iget-object v0, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    if-eqz v0, :cond_1

    .line 1166
    iget-object v0, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    invoke-virtual {v0, p2, p3}, Lcom/android/browser/UploadHandler;->onResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 1172
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getSettings()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getAutoFillProfile()Landroid/webkit/WebSettingsClassic$AutoFillProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1173
    iget-object v0, p0, Lcom/android/browser/Controller;->mAutoFillSetupMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/Controller;->mAutoFillSetupMessage:Landroid/os/Message;

    goto :goto_1

    .line 1178
    :pswitch_4
    if-eqz p3, :cond_1

    if-ne p2, v3, :cond_1

    .line 1181
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, v2}, Lcom/android/browser/UI;->showWeb(Z)V

    .line 1182
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1183
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1184
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1185
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/Controller;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V

    goto :goto_1

    .line 1186
    :cond_2
    const-string v0, "open_all"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1187
    const-string v0, "open_all"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1189
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1190
    array-length v6, v5

    move v3, v2

    move-object v4, v0

    :goto_2
    if-ge v3, v6, :cond_1

    aget-object v7, v5, v3

    .line 1191
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->openInBackground()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p0, v7, v4, v0, v1}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;Lcom/android/browser/Tab;ZZ)Lcom/android/browser/Tab;

    move-result-object v4

    .line 1190
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_3
    move v0, v2

    .line 1191
    goto :goto_3

    .line 1194
    :cond_4
    const-string v0, "snapshot_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1195
    const-string v0, "snapshot_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1197
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 1198
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/browser/Controller;->createNewSnapshotTab(JZ)Lcom/android/browser/SnapshotTab;

    goto/16 :goto_1

    .line 1203
    :pswitch_5
    if-ne p2, v3, :cond_1

    if-eqz p3, :cond_1

    .line 1204
    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1206
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v1, :cond_1

    .line 1207
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/browser/Controller;->mVoiceResult:Ljava/lang/String;

    goto/16 :goto_1

    .line 1154
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
    .line 1242
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1}, Lcom/android/browser/UI;->onBackKey()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1243
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentSubWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 1244
    .local v0, "subwindow":Landroid/webkit/WebView;
    if-eqz v0, :cond_2

    .line 1245
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1246
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 1254
    .end local v0    # "subwindow":Landroid/webkit/WebView;
    :cond_0
    :goto_0
    return-void

    .line 1248
    .restart local v0    # "subwindow":Landroid/webkit/WebView;
    :cond_1
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 1251
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/Controller;->goBackOnePageOrQuit()V

    goto :goto_0
.end method

.method public onConfgurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 612
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/Controller;->mConfigChanged:Z

    .line 614
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 615
    iget-object v0, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    invoke-virtual {v0, p1}, Lcom/android/browser/PageDialogsHandler;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 619
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1820
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    const v2, 0x7f0d00dd

    if-ne v1, v2, :cond_1

    .line 1848
    :cond_0
    :goto_0
    return v0

    .line 1824
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 1825
    const/4 v1, 0x1

    .line 1826
    sparse-switch v2, :sswitch_data_0

    .line 1846
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 1831
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 1832
    if-eqz v3, :cond_0

    .line 1836
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1838
    const-string v5, "webview"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1839
    iget-object v5, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x66

    invoke-virtual {v5, v6, v2, v0, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1841
    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    move v0, v1

    .line 1842
    goto :goto_0

    .line 1826
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0021 -> :sswitch_0
        0x7f0d00d4 -> :sswitch_0
        0x7f0d00d5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-virtual {p0}, Lcom/android/browser/Controller;->isInLoad()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/browser/UI;->onContextMenuClosed(Landroid/view/Menu;Z)V

    .line 1903
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x7

    const/4 v7, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1276
    instance-of v0, p2, Lcom/android/browser/TitleBar;

    if-eqz v0, :cond_1

    .line 1451
    :cond_0
    :goto_0
    return-void

    .line 1279
    :cond_1
    instance-of v0, p2, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1282
    check-cast p2, Landroid/webkit/WebView;

    .line 1283
    invoke-virtual {p2}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 1284
    if-eqz v0, :cond_0

    .line 1288
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v3

    .line 1289
    if-nez v3, :cond_2

    .line 1290
    const-string v0, "Controller"

    const-string v1, "We should not show context menu when nothing is touched"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1294
    :cond_2
    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    .line 1302
    iget-object v4, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    .line 1303
    const v5, 0x7f100003

    invoke-virtual {v4, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1306
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v4

    .line 1307
    if-eqz v4, :cond_0

    .line 1308
    const v5, 0x7f0d00c8

    const/4 v0, 0x2

    if-ne v3, v0, :cond_8

    move v0, v1

    :goto_1
    invoke-interface {p1, v5, v0}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1310
    const v5, 0x7f0d00cc

    const/4 v0, 0x4

    if-ne v3, v0, :cond_9

    move v0, v1

    :goto_2
    invoke-interface {p1, v5, v0}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1312
    const v5, 0x7f0d00cf

    const/4 v0, 0x3

    if-ne v3, v0, :cond_a

    move v0, v1

    :goto_3
    invoke-interface {p1, v5, v0}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1314
    const v5, 0x7f0d00d6

    if-eq v3, v7, :cond_3

    if-ne v3, v9, :cond_b

    :cond_3
    move v0, v1

    :goto_4
    invoke-interface {p1, v5, v0}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1317
    const v5, 0x7f0d00d2

    if-eq v3, v8, :cond_4

    if-ne v3, v9, :cond_c

    :cond_4
    move v0, v1

    :goto_5
    invoke-interface {p1, v5, v0}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1320
    if-eq v3, v8, :cond_5

    const/4 v0, 0x2

    if-eq v3, v0, :cond_5

    const/4 v0, 0x4

    if-eq v3, v0, :cond_5

    const/4 v0, 0x3

    if-ne v3, v0, :cond_d

    :cond_5
    move v0, v1

    .line 1324
    :goto_6
    const v5, 0x7f0d00da

    invoke-interface {p1, v5, v0}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1325
    if-eqz v0, :cond_6

    .line 1326
    const v0, 0x7f0d00db

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v5, Lcom/android/browser/Controller$SelectText;

    invoke-direct {v5, p2}, Lcom/android/browser/Controller$SelectText;-><init>(Landroid/webkit/WebView;)V

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1330
    :cond_6
    packed-switch v3, :pswitch_data_0

    .line 1446
    :pswitch_0
    const-string v0, "Controller"

    const-string v1, "We should not get here."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :cond_7
    :goto_7
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onContextMenuCreated(Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 1308
    goto :goto_1

    :cond_9
    move v0, v2

    .line 1310
    goto :goto_2

    :cond_a
    move v0, v2

    .line 1312
    goto :goto_3

    :cond_b
    move v0, v2

    .line 1314
    goto :goto_4

    :cond_c
    move v0, v2

    .line 1317
    goto :goto_5

    :cond_d
    move v0, v2

    .line 1320
    goto :goto_6

    .line 1332
    :pswitch_1
    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1333
    const v0, 0x7f0d00c9

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1336
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1337
    const-string v1, "phone"

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1338
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1339
    const v1, 0x7f0d00ca

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1341
    const v0, 0x7f0d00cb

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/Controller$Copy;

    invoke-direct {v1, p0, v4}, Lcom/android/browser/Controller$Copy;-><init>(Lcom/android/browser/Controller;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_7

    .line 1347
    :pswitch_2
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1348
    const v0, 0x7f0d00cd

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailto:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1351
    const v0, 0x7f0d00ce

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/Controller$Copy;

    invoke-direct {v1, p0, v4}, Lcom/android/browser/Controller$Copy;-><init>(Lcom/android/browser/Controller;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 1357
    :pswitch_3
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1358
    const v0, 0x7f0d00d0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "geo:0,0?q="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1362
    const v0, 0x7f0d00d1

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/Controller$Copy;

    invoke-direct {v1, p0, v4}, Lcom/android/browser/Controller$Copy;-><init>(Lcom/android/browser/Controller;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 1369
    :pswitch_4
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1371
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v5

    .line 1372
    const v0, 0x7f0d00d3

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 1374
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getSettings()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->openInBackground()Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f0c005e

    :goto_8
    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1377
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1378
    if-eqz v5, :cond_e

    .line 1379
    if-ne v9, v3, :cond_11

    .line 1380
    new-instance v0, Lcom/android/browser/Controller$6;

    invoke-direct {v0, p0, p2}, Lcom/android/browser/Controller$6;-><init>(Lcom/android/browser/Controller;Landroid/webkit/WebView;)V

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1409
    :cond_e
    :goto_9
    if-eq v3, v8, :cond_7

    .line 1414
    :pswitch_5
    const v0, 0x7f0d009b

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1415
    if-ne v3, v7, :cond_12

    :goto_a
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1416
    if-ne v3, v7, :cond_f

    .line 1417
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1418
    new-instance v1, Lcom/android/browser/Controller$8;

    invoke-direct {v1, p0, v4}, Lcom/android/browser/Controller$8;-><init>(Lcom/android/browser/Controller;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1429
    :cond_f
    const v0, 0x7f0d00d8

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/Controller$9;

    invoke-direct {v1, p0, v4}, Lcom/android/browser/Controller$9;-><init>(Lcom/android/browser/Controller;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1437
    const v0, 0x7f0d00d7

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/Controller$Download;

    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v3

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/android/browser/Controller$Download;-><init>(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1440
    const v0, 0x7f0d00d9

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/WallpaperHandler;

    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v4}, Lcom/android/browser/WallpaperHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 1374
    :cond_10
    const v0, 0x7f0c005d

    goto :goto_8

    .line 1396
    :cond_11
    new-instance v0, Lcom/android/browser/Controller$7;

    invoke-direct {v0, p0, v4}, Lcom/android/browser/Controller$7;-><init>(Lcom/android/browser/Controller;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_9

    :cond_12
    move v1, v2

    .line 1415
    goto :goto_a

    .line 1330
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
    .locals 2

    .prologue
    .line 1265
    iget v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1266
    const/4 v0, 0x0

    .line 1270
    :goto_0
    return v0

    .line 1268
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1269
    const v1, 0x7f100002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1270
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 752
    iget-object v1, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    invoke-virtual {v1}, Lcom/android/browser/UploadHandler;->handled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 753
    iget-object v1, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/browser/UploadHandler;->onResult(ILandroid/content/Intent;)V

    .line 754
    iput-object v3, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    .line 756
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    if-nez v1, :cond_1

    .line 771
    :goto_0
    return-void

    .line 757
    :cond_1
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1}, Lcom/android/browser/UI;->onDestroy()V

    .line 759
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 760
    .local v0, "t":Lcom/android/browser/Tab;
    if-eqz v0, :cond_2

    .line 761
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 762
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->removeTab(Lcom/android/browser/Tab;)V

    .line 764
    :cond_2
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Controller;->mBookmarksObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 766
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->destroy()V

    .line 767
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebIconDatabase;->close()V

    .line 769
    iget-object v1, p0, Lcom/android/browser/Controller;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    invoke-virtual {v1}, Lcom/android/browser/SystemAllowGeolocationOrigins;->stop()V

    .line 770
    iput-object v3, p0, Lcom/android/browser/Controller;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    goto :goto_0
.end method

.method public onDownloadStart(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .param p1, "tab"    # Lcom/android/browser/Tab;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "contentDisposition"    # Ljava/lang/String;
    .param p5, "mimetype"    # Ljava/lang/String;
    .param p6, "referer"    # Ljava/lang/String;
    .param p7, "contentLength"    # J

    .prologue
    .line 1037
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v7

    .line 1038
    .local v7, "w":Landroid/webkit/WebView;
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v6}, Lcom/android/browser/DownloadHandler;->onDownloadStart(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1040
    invoke-virtual {v7}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1045
    invoke-virtual {p0}, Lcom/android/browser/Controller;->goBackOnePageOrQuit()V

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0
.end method

.method public onFavicon(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "tab"    # Lcom/android/browser/Tab;
    .param p2, "view"    # Landroid/webkit/WebView;
    .param p3, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 943
    invoke-virtual {p2}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/android/browser/Controller;->maybeUpdateFavicon(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

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

    .line 2681
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    .line 2684
    .local v1, "noModifiers":Z
    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->isMenuOrCtrlKey(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2685
    iput-boolean v6, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    .line 2788
    :cond_0
    :goto_0
    return v5

    .line 2689
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v4

    .line 2690
    .local v4, "webView":Landroid/webkit/WebView;
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v3

    .line 2691
    .local v3, "tab":Lcom/android/browser/Tab;
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 2693
    const/16 v5, 0x1000

    invoke-virtual {p2, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    .line 2694
    .local v0, "ctrl":Z
    invoke-virtual {p2, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    .line 2696
    .local v2, "shift":Z
    sparse-switch p1, :sswitch_data_0

    .line 2788
    :cond_2
    iget-object v5, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v5, p1, p2}, Lcom/android/browser/UI;->dispatchKey(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_0

    .line 2698
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2699
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2701
    invoke-direct {p0}, Lcom/android/browser/Controller;->getPrevTab()Lcom/android/browser/Tab;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    :goto_1
    move v5, v6

    .line 2706
    goto :goto_0

    .line 2704
    :cond_3
    invoke-direct {p0}, Lcom/android/browser/Controller;->getNextTab()Lcom/android/browser/Tab;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    goto :goto_1

    .line 2713
    :sswitch_1
    if-eqz v2, :cond_5

    .line 2714
    invoke-virtual {p0}, Lcom/android/browser/Controller;->pageUp()V

    :cond_4
    :goto_2
    move v5, v6

    .line 2718
    goto :goto_0

    .line 2715
    :cond_5
    if-eqz v1, :cond_4

    .line 2716
    invoke-virtual {p0}, Lcom/android/browser/Controller;->pageDown()V

    goto :goto_2

    .line 2720
    :sswitch_2
    if-eqz v1, :cond_2

    .line 2721
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    move v5, v6

    .line 2722
    goto :goto_0

    .line 2724
    :sswitch_3
    if-eqz v1, :cond_2

    .line 2725
    invoke-virtual {v3}, Lcom/android/browser/Tab;->goForward()V

    move v5, v6

    .line 2726
    goto :goto_0

    .line 2728
    :sswitch_4
    if-eqz v0, :cond_2

    .line 2729
    invoke-virtual {v3}, Lcom/android/browser/Tab;->goBack()V

    move v5, v6

    .line 2730
    goto :goto_0

    .line 2734
    :sswitch_5
    if-eqz v0, :cond_2

    .line 2735
    invoke-virtual {v3}, Lcom/android/browser/Tab;->goForward()V

    move v5, v6

    .line 2736
    goto :goto_0

    .line 2740
    :sswitch_6
    if-eqz v0, :cond_2

    .line 2741
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->fromWebView(Landroid/webkit/WebView;)Landroid/webkit/WebViewClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->selectAll()V

    move v5, v6

    .line 2742
    goto :goto_0

    .line 2747
    :sswitch_7
    if-eqz v0, :cond_2

    .line 2748
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->fromWebView(Landroid/webkit/WebView;)Landroid/webkit/WebViewClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->copySelection()Z

    move v5, v6

    .line 2749
    goto :goto_0

    .line 2771
    :sswitch_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2772
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2773
    invoke-virtual {p0}, Lcom/android/browser/Controller;->openIncognitoTab()Lcom/android/browser/Tab;

    :goto_3
    move v5, v6

    .line 2777
    goto/16 :goto_0

    .line 2775
    :cond_6
    invoke-virtual {p0}, Lcom/android/browser/Controller;->openTabToHomePage()Lcom/android/browser/Tab;

    goto :goto_3

    .line 2696
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
    .line 2793
    packed-switch p1, :pswitch_data_0

    .line 2801
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2795
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->isWebShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2796
    sget-object v0, Lcom/android/browser/UI$ComboViews;->History:Lcom/android/browser/UI$ComboViews;

    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Lcom/android/browser/UI$ComboViews;)V

    .line 2797
    const/4 v0, 0x1

    goto :goto_0

    .line 2793
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

    .line 2806
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->isMenuOrCtrlKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2807
    iput-boolean v0, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    .line 2808
    const/16 v1, 0x52

    if-ne v1, p1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2810
    invoke-virtual {p0}, Lcom/android/browser/Controller;->onMenuKey()Z

    move-result v0

    .line 2822
    :cond_0
    :goto_0
    return v0

    .line 2813
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2814
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2816
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2817
    invoke-virtual {p0}, Lcom/android/browser/Controller;->onBackKey()V

    .line 2818
    const/4 v0, 0x1

    goto :goto_0

    .line 2814
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->freeMemory()V

    .line 780
    return-void
.end method

.method protected onMenuKey()Z
    .locals 1

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->onMenuKey()Z

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

    .line 1867
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mOptionsMenuOpen:Z

    if-eqz v0, :cond_2

    .line 1868
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mConfigChanged:Z

    if-eqz v0, :cond_0

    .line 1872
    iput-boolean v1, p0, Lcom/android/browser/Controller;->mConfigChanged:Z

    .line 1891
    :goto_0
    return v2

    .line 1874
    :cond_0
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mExtendedMenuOpen:Z

    if-nez v0, :cond_1

    .line 1875
    iput-boolean v2, p0, Lcom/android/browser/Controller;->mExtendedMenuOpen:Z

    .line 1876
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->onExtendedMenuOpened()V

    goto :goto_0

    .line 1880
    :cond_1
    iput-boolean v1, p0, Lcom/android/browser/Controller;->mExtendedMenuOpen:Z

    .line 1881
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-virtual {p0}, Lcom/android/browser/Controller;->isInLoad()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->onExtendedMenuClosed(Z)V

    goto :goto_0

    .line 1886
    :cond_2
    iput-boolean v2, p0, Lcom/android/browser/Controller;->mOptionsMenuOpen:Z

    .line 1887
    iput-boolean v1, p0, Lcom/android/browser/Controller;->mConfigChanged:Z

    .line 1888
    iput-boolean v1, p0, Lcom/android/browser/Controller;->mExtendedMenuOpen:Z

    .line 1889
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->onOptionsMenuOpened()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1559
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v8

    if-nez v8, :cond_1

    .line 1713
    :cond_0
    :goto_0
    return v6

    .line 1562
    :cond_1
    iget-boolean v8, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    if-eqz v8, :cond_2

    .line 1567
    iput-boolean v6, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    .line 1569
    :cond_2
    iget-object v8, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v8, p1}, Lcom/android/browser/UI;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v6, v7

    .line 1571
    goto :goto_0

    .line 1573
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1608
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/browser/Controller;->isInLoad()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1609
    invoke-virtual {p0}, Lcom/android/browser/Controller;->stopLoading()V

    :cond_4
    :goto_1
    move v6, v7

    .line 1713
    goto :goto_0

    .line 1576
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/browser/Controller;->openTabToHomePage()Lcom/android/browser/Tab;

    goto :goto_1

    .line 1580
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/browser/Controller;->openIncognitoTab()Lcom/android/browser/Tab;

    goto :goto_1

    .line 1584
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/browser/Controller;->closeOtherTabs()V

    goto :goto_1

    .line 1588
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/browser/Controller;->editUrl()V

    goto :goto_1

    .line 1592
    :pswitch_6
    sget-object v6, Lcom/android/browser/UI$ComboViews;->Bookmarks:Lcom/android/browser/UI$ComboViews;

    invoke-virtual {p0, v6}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Lcom/android/browser/UI$ComboViews;)V

    goto :goto_1

    .line 1596
    :pswitch_7
    sget-object v6, Lcom/android/browser/UI$ComboViews;->History:Lcom/android/browser/UI$ComboViews;

    invoke-virtual {p0, v6}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Lcom/android/browser/UI$ComboViews;)V

    goto :goto_1

    .line 1600
    :pswitch_8
    sget-object v6, Lcom/android/browser/UI$ComboViews;->Snapshots:Lcom/android/browser/UI$ComboViews;

    invoke-virtual {p0, v6}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Lcom/android/browser/UI$ComboViews;)V

    goto :goto_1

    .line 1604
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/browser/Controller;->bookmarkCurrentPage()V

    goto :goto_1

    .line 1611
    :cond_5
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->reload()V

    goto :goto_1

    .line 1616
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/browser/Tab;->goBack()V

    goto :goto_1

    .line 1620
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/browser/Tab;->goForward()V

    goto :goto_1

    .line 1625
    :pswitch_c
    iget-object v6, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v6}, Lcom/android/browser/TabControl;->getCurrentSubWindow()Landroid/webkit/WebView;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 1626
    iget-object v6, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v6}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    goto :goto_1

    .line 1629
    :cond_6
    invoke-virtual {p0}, Lcom/android/browser/Controller;->closeCurrentTab()V

    goto :goto_1

    .line 1633
    :pswitch_d
    iget-object v6, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v6}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1634
    .local v0, "current":Lcom/android/browser/Tab;
    iget-object v6, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v6}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lcom/android/browser/Controller;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V

    goto :goto_1

    .line 1638
    .end local v0    # "current":Lcom/android/browser/Tab;
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/browser/Controller;->openPreferences()V

    goto :goto_1

    .line 1642
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/browser/Controller;->findOnPage()V

    goto :goto_1

    .line 1646
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v5

    .line 1647
    .local v5, "source":Lcom/android/browser/Tab;
    if-eqz v5, :cond_4

    .line 1648
    new-instance v8, Lcom/android/browser/Controller$SaveSnapshotTask;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v5, v9}, Lcom/android/browser/Controller$SaveSnapshotTask;-><init>(Lcom/android/browser/Controller;Lcom/android/browser/Tab;Lcom/android/browser/Controller$1;)V

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v8, v6}, Lcom/android/browser/Controller$SaveSnapshotTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 1652
    .end local v5    # "source":Lcom/android/browser/Tab;
    :pswitch_11
    invoke-virtual {p0}, Lcom/android/browser/Controller;->showPageInfo()V

    goto/16 :goto_1

    .line 1656
    :pswitch_12
    invoke-direct {p0}, Lcom/android/browser/Controller;->goLive()V

    move v6, v7

    .line 1657
    goto/16 :goto_0

    .line 1660
    :pswitch_13
    iget-object v8, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v8}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 1661
    .local v1, "currentTab":Lcom/android/browser/Tab;
    if-eqz v1, :cond_0

    .line 1664
    invoke-direct {p0, v1}, Lcom/android/browser/Controller;->shareCurrentPage(Lcom/android/browser/Tab;)V

    goto/16 :goto_1

    .line 1668
    .end local v1    # "currentTab":Lcom/android/browser/Tab;
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->debugDump()V

    goto/16 :goto_1

    .line 1672
    :pswitch_15
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->zoomIn()Z

    goto/16 :goto_1

    .line 1676
    :pswitch_16
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->zoomOut()Z

    goto/16 :goto_1

    .line 1680
    :pswitch_17
    invoke-virtual {p0}, Lcom/android/browser/Controller;->viewDownloads()V

    goto/16 :goto_1

    .line 1684
    :pswitch_18
    invoke-virtual {p0}, Lcom/android/browser/Controller;->toggleUserAgent()V

    goto/16 :goto_1

    .line 1696
    :pswitch_19
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 1697
    .local v4, "menuid":I
    const/4 v3, 0x0

    .local v3, "id":I
    :goto_2
    sget-object v6, Lcom/android/browser/Controller;->WINDOW_SHORTCUT_ID_ARRAY:[I

    array-length v6, v6

    if-ge v3, v6, :cond_4

    .line 1698
    sget-object v6, Lcom/android/browser/Controller;->WINDOW_SHORTCUT_ID_ARRAY:[I

    aget v6, v6, v3

    if-ne v6, v4, :cond_7

    .line 1699
    iget-object v6, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v6, v3}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v2

    .line 1700
    .local v2, "desiredTab":Lcom/android/browser/Tab;
    if-eqz v2, :cond_4

    iget-object v6, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v6}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v6

    if-eq v2, v6, :cond_4

    .line 1702
    invoke-virtual {p0, v2}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    goto/16 :goto_1

    .line 1697
    .end local v2    # "desiredTab":Lcom/android/browser/Tab;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1573
    :pswitch_data_0
    .packed-switch 0x7f0d00a2
        :pswitch_1
        :pswitch_b
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_9
        :pswitch_0
        :pswitch_13
        :pswitch_f
        :pswitch_18
        :pswitch_10
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_11
        :pswitch_e
        :pswitch_14
        :pswitch_0
        :pswitch_17
        :pswitch_d
        :pswitch_15
        :pswitch_16
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_a
        :pswitch_5
        :pswitch_c
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1896
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/Controller;->mOptionsMenuOpen:Z

    .line 1897
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-virtual {p0}, Lcom/android/browser/Controller;->isInLoad()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->onOptionsMenuClosed(Z)V

    .line 1898
    return-void
.end method

.method public onPageFinished(Lcom/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    invoke-virtual {v0}, Lcom/android/browser/CrashRecoveryHandler;->backupState()V

    .line 863
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 870
    invoke-static {}, Lcom/android/browser/Performance;->tracePageFinished()V

    .line 871
    return-void
.end method

.method public onPageStarted(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "tab"    # Lcom/android/browser/Tab;
    .param p2, "view"    # Landroid/webkit/WebView;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 825
    iget-object v1, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 829
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->resetSync()V

    .line 831
    iget-object v1, p0, Lcom/android/browser/Controller;->mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

    invoke-virtual {v1}, Lcom/android/browser/NetworkStateHandler;->isNetworkUp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 832
    invoke-virtual {p2, v3}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    .line 839
    :cond_0
    iget-boolean v1, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-eqz v1, :cond_1

    .line 840
    invoke-direct {p0, p1}, Lcom/android/browser/Controller;->resumeWebViewTimers(Lcom/android/browser/Tab;)V

    .line 842
    :cond_1
    iput-boolean v3, p0, Lcom/android/browser/Controller;->mLoadStopped:Z

    .line 843
    invoke-virtual {p0}, Lcom/android/browser/Controller;->endActionMode()V

    .line 845
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1, p1}, Lcom/android/browser/UI;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 847
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 849
    .local v0, "url":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p3}, Lcom/android/browser/Controller;->maybeUpdateFavicon(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 851
    invoke-static {v0}, Lcom/android/browser/Performance;->tracePageStart(Ljava/lang/String;)V

    .line 858
    return-void
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 631
    iget-object v2, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v2}, Lcom/android/browser/UI;->isCustomViewShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 632
    invoke-virtual {p0}, Lcom/android/browser/Controller;->hideCustomView()V

    .line 634
    :cond_0
    iget-boolean v2, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-eqz v2, :cond_2

    .line 635
    const-string v2, "Controller"

    const-string v3, "BrowserActivity is already paused."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_1
    :goto_0
    return-void

    .line 638
    :cond_2
    iput-boolean v4, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    .line 639
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 640
    .local v1, "tab":Lcom/android/browser/Tab;
    if-eqz v1, :cond_4

    .line 641
    invoke-virtual {v1}, Lcom/android/browser/Tab;->pause()V

    .line 642
    invoke-direct {p0, v1}, Lcom/android/browser/Controller;->pauseWebViewTimers(Lcom/android/browser/Tab;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 643
    iget-object v2, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_3

    .line 644
    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 646
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v2, "Browser"

    invoke-virtual {v0, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 648
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_3
    iget-object v2, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 649
    iget-object v2, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6b

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x493e0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 653
    :cond_4
    iget-object v2, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v2}, Lcom/android/browser/UI;->onPause()V

    .line 654
    iget-object v2, p0, Lcom/android/browser/Controller;->mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

    invoke-virtual {v2}, Lcom/android/browser/NetworkStateHandler;->onPause()V

    .line 656
    invoke-static {}, Landroid/webkit/WebView;->disablePlatformNotifications()V

    .line 657
    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/browser/NfcHandler;->unregister(Landroid/app/Activity;)V

    .line 658
    sget-object v2, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 659
    sget-object v2, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 660
    const/4 v2, 0x0

    sput-object v2, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const v5, 0x7f0d00b6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f0d00a0

    .line 1474
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/Controller;->updateInLoadMenuItems(Landroid/view/Menu;Lcom/android/browser/Tab;)V

    .line 1477
    iput-object p1, p0, Lcom/android/browser/Controller;->mCachedMenu:Landroid/view/Menu;

    .line 1481
    iget v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    packed-switch v0, :pswitch_data_0

    .line 1490
    iget v0, p0, Lcom/android/browser/Controller;->mCurrentMenuState:I

    iget v1, p0, Lcom/android/browser/Controller;->mMenuState:I

    if-eq v0, v1, :cond_0

    .line 1491
    invoke-interface {p1, v2, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1492
    invoke-interface {p1, v2, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1493
    invoke-interface {p1, v5, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1495
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/browser/Controller;->updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V

    .line 1498
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    iput v0, p0, Lcom/android/browser/Controller;->mCurrentMenuState:I

    .line 1499
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 1483
    :pswitch_0
    iget v0, p0, Lcom/android/browser/Controller;->mCurrentMenuState:I

    iget v1, p0, Lcom/android/browser/Controller;->mMenuState:I

    if-eq v0, v1, :cond_1

    .line 1484
    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1485
    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1486
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_0

    .line 1481
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressChanged(Lcom/android/browser/Tab;)V
    .locals 5
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    const/16 v4, 0x6c

    const/4 v3, 0x0

    .line 875
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getLoadProgress()I

    move-result v0

    .line 877
    .local v0, "newProgress":I
    const/16 v1, 0x64

    if-ne v0, v1, :cond_5

    .line 878
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 886
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inPageLoad()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 887
    iget-object v1, p0, Lcom/android/browser/Controller;->mCachedMenu:Landroid/view/Menu;

    invoke-direct {p0, v1, p1}, Lcom/android/browser/Controller;->updateInLoadMenuItems(Landroid/view/Menu;Lcom/android/browser/Tab;)V

    .line 893
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/android/browser/Tab;->isSnapshot()Z

    move-result v1

    if-nez v1, :cond_3

    .line 899
    invoke-virtual {p1}, Lcom/android/browser/Tab;->shouldUpdateThumbnail()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/browser/Controller;->didUserStopLoading()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v1

    if-nez v1, :cond_3

    .line 902
    :cond_2
    iget-object v1, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 903
    iget-object v1, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v3, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 918
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1, p1}, Lcom/android/browser/UI;->onProgressChanged(Lcom/android/browser/Tab;)V

    .line 919
    return-void

    .line 888
    :cond_4
    iget-boolean v1, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/browser/Controller;->pauseWebViewTimers(Lcom/android/browser/Tab;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 891
    invoke-direct {p0}, Lcom/android/browser/Controller;->releaseWakeLock()V

    goto :goto_0

    .line 910
    :cond_5
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inPageLoad()Z

    move-result v1

    if-nez v1, :cond_3

    .line 915
    iget-object v1, p0, Lcom/android/browser/Controller;->mCachedMenu:Landroid/view/Menu;

    invoke-direct {p0, v1, p1}, Lcom/android/browser/Controller;->updateInLoadMenuItems(Landroid/view/Menu;Lcom/android/browser/Tab;)V

    goto :goto_1
.end method

.method public onReceivedHttpAuthRequest(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "tab"    # Lcom/android/browser/Tab;
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

    .line 1011
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
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p3}, Landroid/webkit/HttpAuthHandler;->suppressDialog()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1026
    iget-object v4, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    invoke-virtual {v4, p1, p3, p4, p5}, Lcom/android/browser/PageDialogsHandler;->showHttpAuthentication(Lcom/android/browser/Tab;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1028
    :cond_2
    invoke-virtual {p3}, Landroid/webkit/HttpAuthHandler;->cancel()V

    goto :goto_0
.end method

.method public onReceivedTitle(Lcom/android/browser/Tab;Ljava/lang/String;)V
    .locals 3
    .param p1, "tab"    # Lcom/android/browser/Tab;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 928
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1, p1}, Lcom/android/browser/UI;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 929
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 930
    .local v0, "pageUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0xc350

    if-lt v1, v2, :cond_1

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 935
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 936
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/browser/DataController;->getInstance(Landroid/content/Context;)Lcom/android/browser/DataController;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/browser/DataController;->updateHistoryTitle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 691
    iget-boolean v1, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-nez v1, :cond_1

    .line 692
    const-string v1, "Controller"

    const-string v2, "BrowserActivity is already resumed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    iget-object v1, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserSettings;->setLastRunPaused(Z)V

    .line 696
    iput-boolean v2, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    .line 697
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 698
    .local v0, "current":Lcom/android/browser/Tab;
    if-eqz v0, :cond_2

    .line 699
    invoke-virtual {v0}, Lcom/android/browser/Tab;->resume()V

    .line 700
    invoke-direct {p0, v0}, Lcom/android/browser/Controller;->resumeWebViewTimers(Lcom/android/browser/Tab;)V

    .line 702
    :cond_2
    invoke-direct {p0}, Lcom/android/browser/Controller;->releaseWakeLock()V

    .line 704
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1}, Lcom/android/browser/UI;->onResume()V

    .line 705
    iget-object v1, p0, Lcom/android/browser/Controller;->mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

    invoke-virtual {v1}, Lcom/android/browser/NetworkStateHandler;->onResume()V

    .line 706
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    .line 707
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p0}, Lcom/android/browser/NfcHandler;->register(Landroid/app/Activity;Lcom/android/browser/Controller;)V

    .line 708
    iget-object v1, p0, Lcom/android/browser/Controller;->mVoiceResult:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 709
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    iget-object v2, p0, Lcom/android/browser/Controller;->mVoiceResult:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/browser/UI;->onVoiceResult(Ljava/lang/String;)V

    .line 710
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/browser/Controller;->mVoiceResult:Ljava/lang/String;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/android/browser/Controller;->createSaveState()Landroid/os/Bundle;

    move-result-object v0

    .line 670
    .local v0, "saveState":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    invoke-virtual {v1, v0}, Lcom/android/browser/CrashRecoveryHandler;->writeState(Landroid/os/Bundle;)V

    .line 671
    iget-object v1, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserSettings;->setLastRunPaused(Z)V

    .line 672
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2843
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/browser/UI;->editUrl(ZZ)V

    .line 2844
    return v2
.end method

.method public onSetWebView(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "tab"    # Lcom/android/browser/Tab;
    .param p2, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1, p2}, Lcom/android/browser/UI;->onSetWebView(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V

    .line 407
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 964
    invoke-virtual {p0}, Lcom/android/browser/Controller;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 965
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 971
    :goto_0
    return v0

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

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

.method public onUpdatedSecurityState(Lcom/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 924
    return-void
.end method

.method public onUserCanceledSsl(Lcom/android/browser/Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 2596
    invoke-virtual {p1}, Lcom/android/browser/Tab;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2597
    invoke-virtual {p1}, Lcom/android/browser/Tab;->goBack()V

    .line 2601
    :goto_0
    return-void

    .line 2599
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/browser/Tab;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
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
    .line 2021
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    new-instance v0, Lcom/android/browser/UploadHandler;

    invoke-direct {v0, p0}, Lcom/android/browser/UploadHandler;-><init>(Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    .line 2022
    iget-object v0, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/browser/UploadHandler;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    return-void
.end method

.method public openIncognitoTab()Lcom/android/browser/Tab;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2398
    const-string v0, "browser:incognito"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;ZZZ)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public openPreferences()V
    .locals 3

    .prologue
    .line 1793
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/browser/BrowserPreferencesPage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1794
    const-string v1, "currentPage"

    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1796
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1797
    return-void
.end method

.method public openTab(Lcom/android/browser/IntentHandler$UrlData;)Lcom/android/browser/Tab;
    .locals 3
    .param p1, "urlData"    # Lcom/android/browser/IntentHandler$UrlData;

    .prologue
    const/4 v2, 0x1

    .line 2381
    invoke-direct {p0, p1}, Lcom/android/browser/Controller;->showPreloadedTab(Lcom/android/browser/IntentHandler$UrlData;)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2382
    .local v0, "tab":Lcom/android/browser/Tab;
    if-nez v0, :cond_0

    .line 2383
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2, v2}, Lcom/android/browser/Controller;->createNewTab(ZZZ)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2384
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/browser/IntentHandler$UrlData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2385
    invoke-virtual {p0, v0, p1}, Lcom/android/browser/Controller;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    .line 2388
    :cond_0
    return-object v0
.end method

.method public openTab(Ljava/lang/String;Lcom/android/browser/Tab;ZZ)Lcom/android/browser/Tab;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "parent"    # Lcom/android/browser/Tab;
    .param p3, "setActive"    # Z
    .param p4, "useCurrent"    # Z

    .prologue
    .line 2410
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;ZZZLcom/android/browser/Tab;)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public openTab(Ljava/lang/String;ZZZ)Lcom/android/browser/Tab;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "incognito"    # Z
    .param p3, "setActive"    # Z
    .param p4, "useCurrent"    # Z

    .prologue
    .line 2404
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;ZZZLcom/android/browser/Tab;)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public openTab(Ljava/lang/String;ZZZLcom/android/browser/Tab;)Lcom/android/browser/Tab;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "incognito"    # Z
    .param p3, "setActive"    # Z
    .param p4, "useCurrent"    # Z
    .param p5, "parent"    # Lcom/android/browser/Tab;

    .prologue
    .line 2416
    invoke-direct {p0, p2, p3, p4}, Lcom/android/browser/Controller;->createNewTab(ZZZ)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2417
    .local v0, "tab":Lcom/android/browser/Tab;
    if-eqz v0, :cond_1

    .line 2418
    if-eqz p5, :cond_0

    if-eq p5, v0, :cond_0

    .line 2419
    invoke-virtual {p5, v0}, Lcom/android/browser/Tab;->addChildTab(Lcom/android/browser/Tab;)V

    .line 2421
    :cond_0
    if-eqz p1, :cond_1

    .line 2422
    invoke-virtual {p0, v0, p1}, Lcom/android/browser/Controller;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V

    .line 2425
    :cond_1
    return-object v0
.end method

.method public openTabToHomePage()Lcom/android/browser/Tab;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2393
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;ZZZ)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method protected pageDown()V
    .locals 2

    .prologue
    .line 1112
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->pageDown(Z)Z

    .line 1113
    return-void
.end method

.method protected pageUp()V
    .locals 2

    .prologue
    .line 1108
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->pageUp(Z)Z

    .line 1109
    return-void
.end method

.method public removeSubWindow(Lcom/android/browser/Tab;)V
    .locals 2
    .param p1, "t"    # Lcom/android/browser/Tab;

    .prologue
    .line 2337
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2338
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSubViewContainer()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->removeSubWindow(Landroid/view/View;)V

    .line 2340
    :cond_0
    return-void
.end method

.method protected removeTab(Lcom/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 2278
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->removeTab(Lcom/android/browser/Tab;)V

    .line 2279
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->removeTab(Lcom/android/browser/Tab;)Z

    .line 2280
    iget-object v0, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    invoke-virtual {v0}, Lcom/android/browser/CrashRecoveryHandler;->backupState()V

    .line 2281
    return-void
.end method

.method protected reuseTab(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V
    .locals 1
    .param p1, "appTab"    # Lcom/android/browser/Tab;
    .param p2, "urlData"    # Lcom/android/browser/IntentHandler$UrlData;

    .prologue
    .line 2303
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 2306
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->detachTab(Lcom/android/browser/Tab;)V

    .line 2308
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->recreateWebView(Lcom/android/browser/Tab;)V

    .line 2310
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->attachTab(Lcom/android/browser/Tab;)V

    .line 2311
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2312
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    .line 2313
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/Controller;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    .line 2320
    :goto_0
    return-void

    .line 2317
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 2318
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/Controller;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    goto :goto_0
.end method

.method public setActiveTab(Lcom/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 2286
    if-eqz p1, :cond_0

    .line 2287
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 2289
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 2291
    :cond_0
    return-void
.end method

.method public setBlockEvents(Z)V
    .locals 0
    .param p1, "block"    # Z

    .prologue
    .line 2871
    iput-boolean p1, p0, Lcom/android/browser/Controller;->mBlockEvents:Z

    .line 2872
    return-void
.end method

.method protected setShouldShowErrorConsole(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 788
    iget-boolean v1, p0, Lcom/android/browser/Controller;->mShouldShowErrorConsole:Z

    if-ne p1, v1, :cond_1

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    iput-boolean p1, p0, Lcom/android/browser/Controller;->mShouldShowErrorConsole:Z

    .line 793
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 794
    .local v0, "t":Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 798
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1, v0, p1}, Lcom/android/browser/UI;->setShouldShowErrorConsole(Lcom/android/browser/Tab;Z)V

    goto :goto_0
.end method

.method setUi(Lcom/android/browser/UI;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/browser/UI;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    .line 431
    return-void
.end method

.method public setupAutoFill(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 2834
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/browser/BrowserPreferencesPage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2835
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/browser/AutoFillSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2837
    iput-object p1, p0, Lcom/android/browser/Controller;->mAutoFillSetupMessage:Landroid/os/Message;

    .line 2838
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2839
    return-void
.end method

.method public shareCurrentPage()V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/Controller;->shareCurrentPage(Lcom/android/browser/Tab;)V

    .line 561
    return-void
.end method

.method public shouldCaptureThumbnails()Z
    .locals 1

    .prologue
    .line 2849
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->shouldCaptureThumbnails()Z

    move-result v0

    return v0
.end method

.method public shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 953
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

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

.method public shouldOverrideUrlLoading(Lcom/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "tab"    # Lcom/android/browser/Tab;
    .param p2, "view"    # Landroid/webkit/WebView;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/browser/Controller;->mUrlHandler:Lcom/android/browser/UrlHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/browser/UrlHandler;->shouldOverrideUrlLoading(Lcom/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldShowErrorConsole()Z
    .locals 1

    .prologue
    .line 784
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mShouldShowErrorConsole:Z

    return v0
.end method

.method public showAutoLogin(Lcom/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 1071
    sget-boolean v0, Lcom/android/browser/Controller;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1073
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->showAutoLogin(Lcom/android/browser/Tab;)V

    .line 1074
    return-void
.end method

.method public showCustomView(Lcom/android/browser/Tab;Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .param p1, "tab"    # Lcom/android/browser/Tab;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "requestedOrientation"    # I
    .param p4, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 1125
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->isCustomViewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1127
    invoke-interface {p4}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 1137
    :cond_0
    :goto_0
    return-void

    .line 1130
    :cond_1
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p2, p3, p4}, Lcom/android/browser/UI;->showCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 1133
    iget v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    iput v0, p0, Lcom/android/browser/Controller;->mOldMenuState:I

    .line 1134
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    .line 1135
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public showPageInfo()V
    .locals 4

    .prologue
    .line 1814
    iget-object v0, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/PageDialogsHandler;->showPageInfo(Lcom/android/browser/Tab;ZLjava/lang/String;)V

    .line 1815
    return-void
.end method

.method public showSslCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/browser/PageDialogsHandler;->showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 1067
    return-void
.end method

.method public start(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 262
    invoke-static {}, Landroid/webkit/WebViewClassic;->setShouldMonitorWebCoreThread()V

    .line 264
    iget-object v0, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    invoke-virtual {v0, p1}, Lcom/android/browser/CrashRecoveryHandler;->startRecovery(Landroid/content/Intent;)V

    .line 265
    return-void
.end method

.method public startVoiceRecognizer()V
    .locals 3

    .prologue
    .line 2862
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2863
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2865
    const-string v1, "android.speech.extra.MAX_RESULTS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2866
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2867
    return-void
.end method

.method public stopLoading()V
    .locals 3

    .prologue
    .line 803
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/browser/Controller;->mLoadStopped:Z

    .line 804
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 805
    .local v0, "tab":Lcom/android/browser/Tab;
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 806
    .local v1, "w":Landroid/webkit/WebView;
    if-eqz v1, :cond_0

    .line 807
    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 808
    iget-object v2, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v2, v0}, Lcom/android/browser/UI;->onPageStopped(Lcom/android/browser/Tab;)V

    .line 810
    :cond_0
    return-void
.end method

.method public supportsVoice()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2854
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2855
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 2857
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public switchToTab(Lcom/android/browser/Tab;)Z
    .locals 2
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 2475
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2476
    .local v0, "currentTab":Lcom/android/browser/Tab;
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    .line 2477
    :cond_0
    const/4 v1, 0x0

    .line 2480
    :goto_0
    return v1

    .line 2479
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 2480
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toggleUserAgent()V
    .locals 2

    .prologue
    .line 1781
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 1782
    .local v0, "web":Landroid/webkit/WebView;
    iget-object v1, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserSettings;->toggleDesktopUseragent(Landroid/webkit/WebView;)V

    .line 1783
    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1784
    return-void
.end method

.method public updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1504
    .line 1509
    if-eqz p1, :cond_6

    .line 1510
    invoke-virtual {p1}, Lcom/android/browser/Tab;->canGoBack()Z

    move-result v6

    .line 1511
    invoke-virtual {p1}, Lcom/android/browser/Tab;->canGoForward()Z

    move-result v5

    .line 1512
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1513
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/browser/BrowserSettings;->hasDesktopUseragent(Landroid/webkit/WebView;)Z

    move-result v3

    .line 1514
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isSnapshot()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1516
    :goto_0
    const v7, 0x7f0d00c3

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 1517
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1519
    const v6, 0x7f0d00b8

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 1520
    if-nez v4, :cond_2

    move v4, v1

    :goto_1
    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1522
    const v4, 0x7f0d00a3

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1523
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1525
    invoke-virtual {p0}, Lcom/android/browser/Controller;->isInLoad()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f0d00c6

    :goto_2
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1527
    const v5, 0x7f0d00a2

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1528
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 1529
    invoke-interface {v4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1530
    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1532
    :cond_0
    const v4, 0x7f0d00a1

    invoke-interface {p2, v4, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1535
    iget-object v4, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1536
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1537
    const-string v6, "text/plain"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1538
    const/high16 v6, 0x10000

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 1540
    const v5, 0x7f0d00a9

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v4, :cond_4

    move v4, v1

    :goto_3
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1542
    iget-object v4, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->enableNavDump()Z

    move-result v4

    .line 1543
    const v5, 0x7f0d00b5

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1544
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1545
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1547
    iget-object v4, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    .line 1548
    const v4, 0x7f0d00ab

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1549
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1550
    const v3, 0x7f0d00a8

    invoke-interface {p2, v3, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1551
    const v3, 0x7f0d00ad

    if-nez v0, :cond_5

    :goto_4
    invoke-interface {p2, v3, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1552
    const v0, 0x7f0d00af

    invoke-interface {p2, v0, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1554
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1, p2}, Lcom/android/browser/UI;->updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V

    .line 1555
    return-void

    :cond_1
    move v0, v2

    .line 1514
    goto/16 :goto_0

    :cond_2
    move v4, v2

    .line 1520
    goto/16 :goto_1

    .line 1525
    :cond_3
    const v4, 0x7f0d00c7

    goto/16 :goto_2

    :cond_4
    move v4, v2

    .line 1540
    goto :goto_3

    :cond_5
    move v1, v2

    .line 1551
    goto :goto_4

    :cond_6
    move v0, v2

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    goto/16 :goto_0
.end method

.method viewDownloads()V
    .locals 2

    .prologue
    .line 1922
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1923
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1924
    return-void
.end method
