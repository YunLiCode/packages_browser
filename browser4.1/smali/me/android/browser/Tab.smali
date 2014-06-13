.class Lme/android/browser/Tab;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/android/browser/Tab$ErrorDialog;,
        Lme/android/browser/Tab$PageState;,
        Lme/android/browser/Tab$SaveCallback;,
        Lme/android/browser/Tab$SecurityState;,
        Lme/android/browser/Tab$SubWindowChromeClient;,
        Lme/android/browser/Tab$SubWindowClient;
    }
.end annotation


# static fields
.field static final APPID:Ljava/lang/String; = "appid"

.field private static final CAPTURE_DELAY:I = 0x64

.field static final CLOSEFLAG:Ljava/lang/String; = "closeOnBack"

.field private static final CONSOLE_LOGTAG:Ljava/lang/String; = "browser"

.field static final CURRTITLE:Ljava/lang/String; = "currentTitle"

.field static final CURRURL:Ljava/lang/String; = "currentUrl"

.field static final ID:Ljava/lang/String; = "ID"

.field static final INCOGNITO:Ljava/lang/String; = "privateBrowsingEnabled"

.field private static final INITIAL_PROGRESS:I = 0x5

.field private static final LOGD_ENABLED:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "Tab"

.field private static final MSG_CAPTURE:I = 0x2a

.field static final PARENTTAB:Ljava/lang/String; = "parentTab"

.field static final USERAGENT:Ljava/lang/String; = "useragent"

.field private static sAlphaPaint:Landroid/graphics/Paint;

.field private static sDefaultFavicon:Landroid/graphics/Bitmap;


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mCapture:Landroid/graphics/Bitmap;

.field private mCaptureHeight:I

.field private mCaptureWidth:I

.field private mChildren:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lme/android/browser/Tab;",
            ">;"
        }
    .end annotation
.end field

.field private mClearHistoryUrlPattern:Ljava/util/regex/Pattern;

.field private mCloseOnBack:Z

.field private mContainer:Landroid/view/View;

.field mContext:Landroid/content/Context;

.field protected mCurrentState:Lme/android/browser/Tab$PageState;

.field private mDataController:Lme/android/browser/DataController;

.field private mDeviceAccountLogin:Lme/android/browser/DeviceAccountLogin;

.field private mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final mDownloadListener:Landroid/webkit/DownloadListener;

.field private mErrorConsole:Lme/android/browser/ErrorConsoleView;

.field private mGeolocationPermissionsPrompt:Lme/android/browser/GeolocationPermissionsPrompt;

.field private mHandler:Landroid/os/Handler;

.field private mId:J

.field private mInForeground:Z

.field private mInPageLoad:Z

.field private mIsBookmarkCallback:Lme/android/browser/DataController$OnQueryUrlIsBookmark;

.field private mLoadStartTime:J

.field private mMainView:Landroid/webkit/WebView;

.field private mPageLoadProgress:I

.field private mParent:Lme/android/browser/Tab;

.field private mQueuedErrors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lme/android/browser/Tab$ErrorDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedState:Landroid/os/Bundle;

.field private mSettings:Lme/android/browser/BrowserSettings;

.field private mSubView:Landroid/webkit/WebView;

.field private mSubViewContainer:Landroid/view/View;

.field mTouchIconLoader:Lme/android/browser/DownloadTouchIcon;

.field private mUpdateThumbnail:Z

.field private final mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

.field private final mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private final mWebViewClient:Landroid/webkit/WebViewClient;

.field protected mWebViewController:Lme/android/browser/WebViewController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 105
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lme/android/browser/Tab;->sAlphaPaint:Landroid/graphics/Paint;

    .line 107
    sget-object v0, Lme/android/browser/Tab;->sAlphaPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 108
    sget-object v0, Lme/android/browser/Tab;->sAlphaPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    return-void
.end method

.method constructor <init>(Lme/android/browser/WebViewController;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "wvcontroller"    # Lme/android/browser/WebViewController;
    .param p2, "state"    # Landroid/os/Bundle;

    .prologue
    .line 1147
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lme/android/browser/Tab;-><init>(Lme/android/browser/WebViewController;Landroid/webkit/WebView;Landroid/os/Bundle;)V

    .line 1148
    return-void
.end method

.method constructor <init>(Lme/android/browser/WebViewController;Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "wvcontroller"    # Lme/android/browser/WebViewController;
    .param p2, "w"    # Landroid/webkit/WebView;

    .prologue
    .line 1143
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lme/android/browser/Tab;-><init>(Lme/android/browser/WebViewController;Landroid/webkit/WebView;Landroid/os/Bundle;)V

    .line 1144
    return-void
.end method

.method constructor <init>(Lme/android/browser/WebViewController;Landroid/webkit/WebView;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "wvcontroller"    # Lme/android/browser/WebViewController;
    .param p2, "w"    # Landroid/webkit/WebView;
    .param p3, "state"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    .line 1150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-wide v4, p0, Lme/android/browser/Tab;->mId:J

    .line 279
    new-instance v0, Lme/android/browser/Tab$1;

    invoke-direct {v0, p0}, Lme/android/browser/Tab$1;-><init>(Lme/android/browser/Tab;)V

    iput-object v0, p0, Lme/android/browser/Tab;->mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 325
    new-instance v0, Lme/android/browser/Tab$2;

    invoke-direct {v0, p0}, Lme/android/browser/Tab$2;-><init>(Lme/android/browser/Tab;)V

    iput-object v0, p0, Lme/android/browser/Tab;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 691
    new-instance v0, Lme/android/browser/Tab$3;

    invoke-direct {v0, p0}, Lme/android/browser/Tab$3;-><init>(Lme/android/browser/Tab;)V

    iput-object v0, p0, Lme/android/browser/Tab;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 1782
    new-instance v0, Lme/android/browser/Tab$4;

    invoke-direct {v0, p0}, Lme/android/browser/Tab$4;-><init>(Lme/android/browser/Tab;)V

    iput-object v0, p0, Lme/android/browser/Tab;->mIsBookmarkCallback:Lme/android/browser/DataController$OnQueryUrlIsBookmark;

    .line 1151
    iput-object p1, p0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    .line 1152
    iget-object v0, p0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    invoke-interface {v0}, Lme/android/browser/WebViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    .line 1153
    invoke-static {}, Lme/android/browser/BrowserSettings;->getInstance()Lme/android/browser/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/Tab;->mSettings:Lme/android/browser/BrowserSettings;

    .line 1154
    iget-object v0, p0, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lme/android/browser/DataController;->getInstance(Landroid/content/Context;)Lme/android/browser/DataController;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/Tab;->mDataController:Lme/android/browser/DataController;

    .line 1155
    new-instance v2, Lme/android/browser/Tab$PageState;

    iget-object v3, p0, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    .line 1156
    invoke-virtual {p2}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v0

    :goto_0
    invoke-direct {v2, v3, v0}, Lme/android/browser/Tab$PageState;-><init>(Landroid/content/Context;Z)V

    .line 1155
    iput-object v2, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    .line 1157
    iput-boolean v1, p0, Lme/android/browser/Tab;->mInPageLoad:Z

    .line 1158
    iput-boolean v1, p0, Lme/android/browser/Tab;->mInForeground:Z

    .line 1160
    new-instance v0, Lme/android/browser/Tab$5;

    invoke-direct {v0, p0}, Lme/android/browser/Tab$5;-><init>(Lme/android/browser/Tab;)V

    iput-object v0, p0, Lme/android/browser/Tab;->mDownloadListener:Landroid/webkit/DownloadListener;

    .line 1168
    new-instance v0, Lme/android/browser/Tab$6;

    invoke-direct {v0, p0}, Lme/android/browser/Tab$6;-><init>(Lme/android/browser/Tab;)V

    iput-object v0, p0, Lme/android/browser/Tab;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    .line 1189
    iget-object v0, p0, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1190
    const v1, 0x7f0c002e

    .line 1189
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lme/android/browser/Tab;->mCaptureWidth:I

    .line 1191
    iget-object v0, p0, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1192
    const v1, 0x7f0c002f

    .line 1191
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lme/android/browser/Tab;->mCaptureHeight:I

    .line 1193
    invoke-virtual {p0}, Lme/android/browser/Tab;->updateShouldCaptureThumbnails()V

    .line 1194
    invoke-direct {p0, p3}, Lme/android/browser/Tab;->restoreState(Landroid/os/Bundle;)V

    .line 1195
    invoke-virtual {p0}, Lme/android/browser/Tab;->getId()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 1196
    invoke-static {}, Lme/android/browser/TabControl;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Lme/android/browser/Tab;->mId:J

    .line 1198
    :cond_0
    invoke-virtual {p0, p2}, Lme/android/browser/Tab;->setWebView(Landroid/webkit/WebView;)V

    .line 1199
    new-instance v0, Lme/android/browser/Tab$7;

    invoke-direct {v0, p0}, Lme/android/browser/Tab$7;-><init>(Lme/android/browser/Tab;)V

    iput-object v0, p0, Lme/android/browser/Tab;->mHandler:Landroid/os/Handler;

    .line 1209
    return-void

    :cond_1
    move v0, v1

    .line 1156
    goto :goto_0
.end method

.method static synthetic access$0(Lme/android/browser/Tab;)V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Lme/android/browser/Tab;->processNextError()V

    return-void
.end method

.method static synthetic access$1(Lme/android/browser/Tab;Z)V
    .locals 0

    .prologue
    .line 157
    iput-boolean p1, p0, Lme/android/browser/Tab;->mInPageLoad:Z

    return-void
.end method

.method static synthetic access$10(Lme/android/browser/Tab;)Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lme/android/browser/Tab;->mInForeground:Z

    return v0
.end method

.method static synthetic access$11(Lme/android/browser/Tab;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0, p1, p2}, Lme/android/browser/Tab;->queueError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$12(Lme/android/browser/Tab;Lme/android/browser/Tab$SecurityState;)V
    .locals 0

    .prologue
    .line 1666
    invoke-direct {p0, p1}, Lme/android/browser/Tab;->setSecurityState(Lme/android/browser/Tab$SecurityState;)V

    return-void
.end method

.method static synthetic access$13(Lme/android/browser/Tab;)Lme/android/browser/BrowserSettings;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lme/android/browser/Tab;->mSettings:Lme/android/browser/BrowserSettings;

    return-object v0
.end method

.method static synthetic access$14(Lme/android/browser/Tab;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 2025
    invoke-direct {p0, p1}, Lme/android/browser/Tab;->handleProceededAfterSslError(Landroid/net/http/SslError;)V

    return-void
.end method

.method static synthetic access$15(Lme/android/browser/Tab;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lme/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$16(Lme/android/browser/Tab;)Lme/android/browser/Tab;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lme/android/browser/Tab;->mParent:Lme/android/browser/Tab;

    return-object v0
.end method

.method static synthetic access$17(Lme/android/browser/Tab;)Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lme/android/browser/Tab;->mUpdateThumbnail:Z

    return v0
.end method

.method static synthetic access$18(Lme/android/browser/Tab;)Lme/android/browser/GeolocationPermissionsPrompt;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lme/android/browser/Tab;->mGeolocationPermissionsPrompt:Lme/android/browser/GeolocationPermissionsPrompt;

    return-object v0
.end method

.method static synthetic access$19(Lme/android/browser/Tab;)Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lme/android/browser/Tab;->mClearHistoryUrlPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$2(Lme/android/browser/Tab;Z)V
    .locals 0

    .prologue
    .line 188
    iput-boolean p1, p0, Lme/android/browser/Tab;->mUpdateThumbnail:Z

    return-void
.end method

.method static synthetic access$20(Lme/android/browser/Tab;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$21(Lme/android/browser/Tab;Ljava/util/regex/Pattern;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lme/android/browser/Tab;->mClearHistoryUrlPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method static synthetic access$3(Lme/android/browser/Tab;I)V
    .locals 0

    .prologue
    .line 159
    iput p1, p0, Lme/android/browser/Tab;->mPageLoadProgress:I

    return-void
.end method

.method static synthetic access$4(Lme/android/browser/Tab;J)V
    .locals 0

    .prologue
    .line 161
    iput-wide p1, p0, Lme/android/browser/Tab;->mLoadStartTime:J

    return-void
.end method

.method static synthetic access$5(Lme/android/browser/Tab;)Lme/android/browser/ErrorConsoleView;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lme/android/browser/Tab;->mErrorConsole:Lme/android/browser/ErrorConsoleView;

    return-object v0
.end method

.method static synthetic access$6(Lme/android/browser/Tab;)Lme/android/browser/DeviceAccountLogin;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lme/android/browser/Tab;->mDeviceAccountLogin:Lme/android/browser/DeviceAccountLogin;

    return-object v0
.end method

.method static synthetic access$7(Lme/android/browser/Tab;Lme/android/browser/DeviceAccountLogin;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lme/android/browser/Tab;->mDeviceAccountLogin:Lme/android/browser/DeviceAccountLogin;

    return-void
.end method

.method static synthetic access$8(Lme/android/browser/Tab;)J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lme/android/browser/Tab;->mLoadStartTime:J

    return-wide v0
.end method

.method static synthetic access$9(Lme/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 658
    invoke-direct {p0, p1, p2}, Lme/android/browser/Tab;->syncCurrentState(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized getDefaultFavicon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    const-class v1, Lme/android/browser/Tab;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lme/android/browser/Tab;->sDefaultFavicon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020001

    .line 197
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lme/android/browser/Tab;->sDefaultFavicon:Landroid/graphics/Bitmap;

    .line 200
    :cond_0
    sget-object v0, Lme/android/browser/Tab;->sDefaultFavicon:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleProceededAfterSslError(Landroid/net/http/SslError;)V
    .locals 2
    .param p1, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 2026
    invoke-virtual {p1}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iget-object v1, v1, Lme/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2028
    sget-object v0, Lme/android/browser/Tab$SecurityState;->SECURITY_STATE_BAD_CERTIFICATE:Lme/android/browser/Tab$SecurityState;

    invoke-direct {p0, v0}, Lme/android/browser/Tab;->setSecurityState(Lme/android/browser/Tab$SecurityState;)V

    .line 2029
    iget-object v0, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iput-object p1, v0, Lme/android/browser/Tab$PageState;->mSslCertificateError:Landroid/net/http/SslError;

    .line 2035
    :cond_0
    :goto_0
    return-void

    .line 2030
    :cond_1
    invoke-virtual {p0}, Lme/android/browser/Tab;->getSecurityState()Lme/android/browser/Tab$SecurityState;

    move-result-object v0

    sget-object v1, Lme/android/browser/Tab$SecurityState;->SECURITY_STATE_SECURE:Lme/android/browser/Tab$SecurityState;

    if-ne v0, v1, :cond_0

    .line 2033
    sget-object v0, Lme/android/browser/Tab$SecurityState;->SECURITY_STATE_MIXED:Lme/android/browser/Tab$SecurityState;

    invoke-direct {p0, v0}, Lme/android/browser/Tab;->setSecurityState(Lme/android/browser/Tab$SecurityState;)V

    goto :goto_0
.end method

.method private postCapture()V
    .locals 4

    .prologue
    const/16 v3, 0x2a

    .line 1941
    iget-object v0, p0, Lme/android/browser/Tab;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1942
    iget-object v0, p0, Lme/android/browser/Tab;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1944
    :cond_0
    return-void
.end method

.method private processNextError()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lme/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lme/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Lme/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lme/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    goto :goto_0

    .line 275
    :cond_1
    iget-object v0, p0, Lme/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/android/browser/Tab$ErrorDialog;

    invoke-direct {p0, v0}, Lme/android/browser/Tab;->showError(Lme/android/browser/Tab$ErrorDialog;)V

    goto :goto_0
.end method

.method private queueError(ILjava/lang/String;)V
    .locals 4
    .param p1, "err"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 287
    iget-object v2, p0, Lme/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    .line 288
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lme/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    .line 290
    :cond_0
    iget-object v2, p0, Lme/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 296
    new-instance v1, Lme/android/browser/Tab$ErrorDialog;

    .line 297
    const/16 v2, -0xe

    if-ne p1, v2, :cond_4

    .line 298
    const v2, 0x7f0800ff

    .line 296
    :goto_0
    invoke-direct {v1, p0, v2, p2, p1}, Lme/android/browser/Tab$ErrorDialog;-><init>(Lme/android/browser/Tab;ILjava/lang/String;I)V

    .line 301
    .local v1, "errDialog":Lme/android/browser/Tab$ErrorDialog;
    iget-object v2, p0, Lme/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 304
    iget-object v2, p0, Lme/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lme/android/browser/Tab;->mInForeground:Z

    if-eqz v2, :cond_2

    .line 305
    invoke-direct {p0, v1}, Lme/android/browser/Tab;->showError(Lme/android/browser/Tab$ErrorDialog;)V

    .line 307
    .end local v1    # "errDialog":Lme/android/browser/Tab$ErrorDialog;
    :cond_2
    :goto_1
    return-void

    .line 290
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/android/browser/Tab$ErrorDialog;

    .line 291
    .local v0, "d":Lme/android/browser/Tab$ErrorDialog;
    iget v3, v0, Lme/android/browser/Tab$ErrorDialog;->mError:I

    if-ne v3, p1, :cond_1

    goto :goto_1

    .line 299
    .end local v0    # "d":Lme/android/browser/Tab$ErrorDialog;
    :cond_4
    const v2, 0x7f0800fe

    goto :goto_0
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 1745
    iput-object p1, p0, Lme/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    .line 1746
    iget-object v3, p0, Lme/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    if-nez v3, :cond_0

    .line 1765
    :goto_0
    return-void

    .line 1751
    :cond_0
    const-string v3, "ID"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lme/android/browser/Tab;->mId:J

    .line 1752
    const-string v3, "appid"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lme/android/browser/Tab;->mAppId:Ljava/lang/String;

    .line 1753
    const-string v3, "closeOnBack"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lme/android/browser/Tab;->mCloseOnBack:Z

    .line 1754
    invoke-direct {p0}, Lme/android/browser/Tab;->restoreUserAgent()V

    .line 1755
    const-string v3, "currentUrl"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1756
    .local v2, "url":Ljava/lang/String;
    const-string v3, "currentTitle"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1757
    .local v1, "title":Ljava/lang/String;
    const-string v3, "privateBrowsingEnabled"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1758
    .local v0, "incognito":Z
    new-instance v3, Lme/android/browser/Tab$PageState;

    iget-object v4, p0, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v2, v5}, Lme/android/browser/Tab$PageState;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    .line 1759
    iget-object v3, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iput-object v1, v3, Lme/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    .line 1760
    monitor-enter p0

    .line 1761
    :try_start_0
    iget-object v3, p0, Lme/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 1762
    iget-object v3, p0, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lme/android/browser/DataController;->getInstance(Landroid/content/Context;)Lme/android/browser/DataController;

    move-result-object v3

    invoke-virtual {v3, p0}, Lme/android/browser/DataController;->loadThumbnail(Lme/android/browser/Tab;)V

    .line 1760
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private restoreUserAgent()V
    .locals 3

    .prologue
    .line 1768
    iget-object v0, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 1775
    :cond_0
    :goto_0
    return-void

    .line 1771
    :cond_1
    iget-object v0, p0, Lme/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v1, "useragent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1772
    iget-object v1, p0, Lme/android/browser/Tab;->mSettings:Lme/android/browser/BrowserSettings;

    iget-object v2, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Lme/android/browser/BrowserSettings;->hasDesktopUseragent(Landroid/webkit/WebView;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1773
    iget-object v0, p0, Lme/android/browser/Tab;->mSettings:Lme/android/browser/BrowserSettings;

    iget-object v1, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lme/android/browser/BrowserSettings;->toggleDesktopUseragent(Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method private setSecurityState(Lme/android/browser/Tab$SecurityState;)V
    .locals 2
    .param p1, "securityState"    # Lme/android/browser/Tab$SecurityState;

    .prologue
    .line 1667
    iget-object v0, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iput-object p1, v0, Lme/android/browser/Tab$PageState;->mSecurityState:Lme/android/browser/Tab$SecurityState;

    .line 1668
    iget-object v0, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    const/4 v1, 0x0

    iput-object v1, v0, Lme/android/browser/Tab$PageState;->mSslCertificateError:Landroid/net/http/SslError;

    .line 1669
    iget-object v0, p0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    invoke-interface {v0, p0}, Lme/android/browser/WebViewController;->onUpdatedSecurityState(Lme/android/browser/Tab;)V

    .line 1670
    return-void
.end method

.method private setupHwAcceleration(Landroid/view/View;)V
    .locals 3
    .param p1, "web"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1454
    if-nez p1, :cond_0

    .line 1461
    :goto_0
    return-void

    .line 1455
    :cond_0
    invoke-static {}, Lme/android/browser/BrowserSettings;->getInstance()Lme/android/browser/BrowserSettings;

    move-result-object v0

    .line 1456
    .local v0, "settings":Lme/android/browser/BrowserSettings;
    invoke-virtual {v0}, Lme/android/browser/BrowserSettings;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1457
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 1459
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private showError(Lme/android/browser/Tab$ErrorDialog;)V
    .locals 4
    .param p1, "errDialog"    # Lme/android/browser/Tab$ErrorDialog;

    .prologue
    .line 310
    iget-boolean v1, p0, Lme/android/browser/Tab;->mInForeground:Z

    if-eqz v1, :cond_0

    .line 311
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 312
    iget v2, p1, Lme/android/browser/Tab$ErrorDialog;->mTitle:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 313
    iget-object v2, p1, Lme/android/browser/Tab$ErrorDialog;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 314
    const v2, 0x7f080013

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 315
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 316
    .local v0, "d":Landroid/app/AlertDialog;
    iget-object v1, p0, Lme/android/browser/Tab;->mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 317
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 319
    .end local v0    # "d":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method private syncCurrentState(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 660
    iget-object v0, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lme/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    .line 661
    iget-object v0, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iget-object v0, v0, Lme/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 662
    iget-object v0, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    const-string v1, ""

    iput-object v1, v0, Lme/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    .line 664
    :cond_0
    iget-object v0, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lme/android/browser/Tab$PageState;->mOriginalUrl:Ljava/lang/String;

    .line 665
    iget-object v0, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lme/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    .line 666
    iget-object v0, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lme/android/browser/Tab$PageState;->mFavicon:Landroid/graphics/Bitmap;

    .line 667
    iget-object v0, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iget-object v0, v0, Lme/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 670
    iget-object v0, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    sget-object v1, Lme/android/browser/Tab$SecurityState;->SECURITY_STATE_NOT_SECURE:Lme/android/browser/Tab$SecurityState;

    iput-object v1, v0, Lme/android/browser/Tab$PageState;->mSecurityState:Lme/android/browser/Tab$SecurityState;

    .line 671
    iget-object v0, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    const/4 v1, 0x0

    iput-object v1, v0, Lme/android/browser/Tab$PageState;->mSslCertificateError:Landroid/net/http/SslError;

    .line 673
    :cond_1
    iget-object v0, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    invoke-virtual {p1}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lme/android/browser/Tab$PageState;->mIncognito:Z

    .line 674
    return-void
.end method


# virtual methods
.method addChildTab(Lme/android/browser/Tab;)V
    .locals 1
    .param p1, "child"    # Lme/android/browser/Tab;

    .prologue
    .line 1432
    iget-object v0, p0, Lme/android/browser/Tab;->mChildren:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1433
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lme/android/browser/Tab;->mChildren:Ljava/util/Vector;

    .line 1435
    :cond_0
    iget-object v0, p0, Lme/android/browser/Tab;->mChildren:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1436
    invoke-virtual {p1, p0}, Lme/android/browser/Tab;->setParent(Lme/android/browser/Tab;)V

    .line 1437
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 1947
    iget-object v0, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 1951
    iget-object v0, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected capture()V
    .locals 12

    .prologue
    .line 1898
    iget-object v1, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lme/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 1933
    :cond_0
    :goto_0
    return-void

    .line 1899
    :cond_1
    iget-object v1, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 1902
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lme/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1903
    .local v0, "c":Landroid/graphics/Canvas;
    iget-object v1, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollX()I

    move-result v6

    .line 1904
    .local v6, "left":I
    iget-object v1, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v2

    add-int v10, v1, v2

    .line 1905
    .local v10, "top":I
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 1906
    .local v8, "state":I
    neg-int v1, v6

    int-to-float v1, v1

    neg-int v2, v10

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1907
    iget v1, p0, Lme/android/browser/Tab;->mCaptureWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v7, v1, v2

    .line 1908
    .local v7, "scale":F
    int-to-float v1, v6

    int-to-float v2, v10

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1909
    iget-object v1, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    instance-of v1, v1, Lme/android/browser/BrowserWebView;

    if-eqz v1, :cond_2

    .line 1910
    iget-object v1, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    check-cast v1, Lme/android/browser/BrowserWebView;

    invoke-virtual {v1, v0}, Lme/android/browser/BrowserWebView;->drawContent(Landroid/graphics/Canvas;)V

    .line 1914
    :goto_1
    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1916
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    iget-object v4, p0, Lme/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lme/android/browser/Tab;->sAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1917
    iget-object v1, p0, Lme/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lme/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 1918
    iget-object v4, p0, Lme/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lme/android/browser/Tab;->sAlphaPaint:Landroid/graphics/Paint;

    .line 1917
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1919
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lme/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000

    sget-object v5, Lme/android/browser/Tab;->sAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1920
    const/4 v1, 0x0

    iget-object v2, p0, Lme/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iget-object v3, p0, Lme/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 1921
    iget-object v4, p0, Lme/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lme/android/browser/Tab;->sAlphaPaint:Landroid/graphics/Paint;

    .line 1920
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1922
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1923
    iget-object v1, p0, Lme/android/browser/Tab;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1924
    invoke-virtual {p0}, Lme/android/browser/Tab;->persistThumbnail()V

    .line 1925
    iget-object v1, p0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    invoke-interface {v1}, Lme/android/browser/WebViewController;->getTabControl()Lme/android/browser/TabControl;

    move-result-object v9

    .line 1926
    .local v9, "tc":Lme/android/browser/TabControl;
    if-eqz v9, :cond_0

    .line 1928
    invoke-virtual {v9}, Lme/android/browser/TabControl;->getOnThumbnailUpdatedListener()Lme/android/browser/TabControl$OnThumbnailUpdatedListener;

    move-result-object v11

    .line 1929
    .local v11, "updateListener":Lme/android/browser/TabControl$OnThumbnailUpdatedListener;
    if-eqz v11, :cond_0

    .line 1930
    invoke-interface {v11, p0}, Lme/android/browser/TabControl$OnThumbnailUpdatedListener;->onThumbnailUpdated(Lme/android/browser/Tab;)V

    goto/16 :goto_0

    .line 1912
    .end local v9    # "tc":Lme/android/browser/TabControl;
    .end local v11    # "updateListener":Lme/android/browser/TabControl$OnThumbnailUpdatedListener;
    :cond_2
    iget-object v1, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1
.end method

.method public clearBackStackWhenItemAdded(Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1, "urlPattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 1974
    iput-object p1, p0, Lme/android/browser/Tab;->mClearHistoryUrlPattern:Ljava/util/regex/Pattern;

    .line 1975
    return-void
.end method

.method closeOnBack()Z
    .locals 1

    .prologue
    .line 1604
    iget-boolean v0, p0, Lme/android/browser/Tab;->mCloseOnBack:Z

    return v0
.end method

.method public compressBitmap(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1879
    if-nez p1, :cond_0

    .line 1880
    const/4 v1, 0x0

    .line 1884
    :goto_0
    return-object v1

    .line 1882
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1883
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1884
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0
.end method

.method public createSnapshotValues()Landroid/content/ContentValues;
    .locals 6

    .prologue
    .line 1819
    invoke-virtual {p0}, Lme/android/browser/Tab;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v2

    .line 1820
    .local v2, "web":Landroid/webkit/WebViewClassic;
    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 1831
    :goto_0
    return-object v1

    .line 1821
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1822
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "title"

    iget-object v4, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iget-object v4, v4, Lme/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    const-string v3, "url"

    iget-object v4, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iget-object v4, v4, Lme/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    const-string v3, "background"

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getPageBackgroundColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1825
    const-string v3, "date_created"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1826
    const-string v3, "favicon"

    invoke-virtual {p0}, Lme/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0, v4}, Lme/android/browser/Tab;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1827
    iget-object v3, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    .line 1828
    iget-object v4, p0, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lme/android/browser/Controller;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v4

    .line 1829
    iget-object v5, p0, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lme/android/browser/Controller;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v5

    .line 1827
    invoke-static {v3, v4, v5}, Lme/android/browser/Controller;->createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1830
    .local v0, "screenshot":Landroid/graphics/Bitmap;
    const-string v3, "thumbnail"

    invoke-virtual {p0, v0}, Lme/android/browser/Tab;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method createSubWindow()Z
    .locals 4

    .prologue
    .line 1346
    iget-object v0, p0, Lme/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 1347
    iget-object v0, p0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    invoke-interface {v0, p0}, Lme/android/browser/WebViewController;->createSubWindow(Lme/android/browser/Tab;)V

    .line 1348
    iget-object v0, p0, Lme/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    new-instance v1, Lme/android/browser/Tab$SubWindowClient;

    iget-object v2, p0, Lme/android/browser/Tab;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 1349
    iget-object v3, p0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    invoke-direct {v1, v2, v3}, Lme/android/browser/Tab$SubWindowClient;-><init>(Landroid/webkit/WebViewClient;Lme/android/browser/WebViewController;)V

    .line 1348
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1350
    iget-object v0, p0, Lme/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    new-instance v1, Lme/android/browser/Tab$SubWindowChromeClient;

    .line 1351
    iget-object v2, p0, Lme/android/browser/Tab;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-direct {v1, p0, v2}, Lme/android/browser/Tab$SubWindowChromeClient;-><init>(Lme/android/browser/Tab;Landroid/webkit/WebChromeClient;)V

    .line 1350
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1354
    iget-object v0, p0, Lme/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    new-instance v1, Lme/android/browser/Tab$8;

    invoke-direct {v1, p0}, Lme/android/browser/Tab$8;-><init>(Lme/android/browser/Tab;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 1367
    iget-object v0, p0, Lme/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    iget-object v1, p0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    invoke-interface {v1}, Lme/android/browser/WebViewController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1368
    const/4 v0, 0x1

    .line 1370
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected deleteThumbnail()V
    .locals 1

    .prologue
    .line 1982
    iget-object v0, p0, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lme/android/browser/DataController;->getInstance(Landroid/content/Context;)Lme/android/browser/DataController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lme/android/browser/DataController;->deleteThumbnail(Lme/android/browser/Tab;)V

    .line 1983
    return-void
.end method

.method destroy()V
    .locals 2

    .prologue
    .line 1315
    iget-object v1, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 1316
    invoke-virtual {p0}, Lme/android/browser/Tab;->dismissSubWindow()V

    .line 1318
    iget-object v0, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    .line 1319
    .local v0, "webView":Landroid/webkit/WebView;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lme/android/browser/Tab;->setWebView(Landroid/webkit/WebView;)V

    .line 1320
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 1322
    .end local v0    # "webView":Landroid/webkit/WebView;
    :cond_0
    return-void
.end method

.method dismissSubWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1377
    iget-object v0, p0, Lme/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    invoke-interface {v0}, Lme/android/browser/WebViewController;->endActionMode()V

    .line 1379
    iget-object v0, p0, Lme/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 1380
    iput-object v1, p0, Lme/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    .line 1381
    iput-object v1, p0, Lme/android/browser/Tab;->mSubViewContainer:Landroid/view/View;

    .line 1383
    :cond_0
    return-void
.end method

.method getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1592
    iget-object v0, p0, Lme/android/browser/Tab;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method getChildren()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lme/android/browser/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1440
    iget-object v0, p0, Lme/android/browser/Tab;->mChildren:Ljava/util/Vector;

    return-object v0
.end method

.method getDeviceAccountLogin()Lme/android/browser/DeviceAccountLogin;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lme/android/browser/Tab;->mDeviceAccountLogin:Lme/android/browser/DeviceAccountLogin;

    return-object v0
.end method

.method getErrorConsole(Z)Lme/android/browser/ErrorConsoleView;
    .locals 2
    .param p1, "createIfNecessary"    # Z

    .prologue
    .line 1655
    if-eqz p1, :cond_0

    iget-object v0, p0, Lme/android/browser/Tab;->mErrorConsole:Lme/android/browser/ErrorConsoleView;

    if-nez v0, :cond_0

    .line 1656
    new-instance v0, Lme/android/browser/ErrorConsoleView;

    iget-object v1, p0, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lme/android/browser/ErrorConsoleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lme/android/browser/Tab;->mErrorConsole:Lme/android/browser/ErrorConsoleView;

    .line 1657
    iget-object v0, p0, Lme/android/browser/Tab;->mErrorConsole:Lme/android/browser/ErrorConsoleView;

    iget-object v1, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lme/android/browser/ErrorConsoleView;->setWebView(Landroid/webkit/WebView;)V

    .line 1659
    :cond_0
    iget-object v0, p0, Lme/android/browser/Tab;->mErrorConsole:Lme/android/browser/ErrorConsoleView;

    return-object v0
.end method

.method getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1636
    iget-object v0, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iget-object v0, v0, Lme/android/browser/Tab$PageState;->mFavicon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1637
    iget-object v0, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iget-object v0, v0, Lme/android/browser/Tab$PageState;->mFavicon:Landroid/graphics/Bitmap;

    .line 1639
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lme/android/browser/Tab;->getDefaultFavicon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method getGeolocationPermissionsPrompt()Lme/android/browser/GeolocationPermissionsPrompt;
    .locals 3

    .prologue
    .line 1579
    iget-object v1, p0, Lme/android/browser/Tab;->mGeolocationPermissionsPrompt:Lme/android/browser/GeolocationPermissionsPrompt;

    if-nez v1, :cond_0

    .line 1580
    iget-object v1, p0, Lme/android/browser/Tab;->mContainer:Landroid/view/View;

    .line 1581
    const v2, 0x7f0d006e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1580
    check-cast v0, Landroid/view/ViewStub;

    .line 1583
    .local v0, "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lme/android/browser/GeolocationPermissionsPrompt;

    .line 1582
    iput-object v1, p0, Lme/android/browser/Tab;->mGeolocationPermissionsPrompt:Lme/android/browser/GeolocationPermissionsPrompt;

    .line 1585
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_0
    iget-object v1, p0, Lme/android/browser/Tab;->mGeolocationPermissionsPrompt:Lme/android/browser/GeolocationPermissionsPrompt;

    return-object v1
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 1250
    iget-wide v0, p0, Lme/android/browser/Tab;->mId:J

    return-wide v0
.end method

.method getLoadProgress()I
    .locals 1

    .prologue
    .line 1689
    iget-boolean v0, p0, Lme/android/browser/Tab;->mInPageLoad:Z

    if-eqz v0, :cond_0

    .line 1690
    iget v0, p0, Lme/android/browser/Tab;->mPageLoadProgress:I

    .line 1692
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1616
    iget-object v0, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iget-object v0, v0, Lme/android/browser/Tab$PageState;->mOriginalUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1617
    invoke-virtual {p0}, Lme/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1619
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iget-object v0, v0, Lme/android/browser/Tab$PageState;->mOriginalUrl:Ljava/lang/String;

    invoke-static {v0}, Lme/android/browser/UrlUtils;->filteredUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParent()Lme/android/browser/Tab;
    .locals 1

    .prologue
    .line 1423
    iget-object v0, p0, Lme/android/browser/Tab;->mParent:Lme/android/browser/Tab;

    return-object v0
.end method

.method public getScreenshot()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1793
    monitor-enter p0

    .line 1794
    :try_start_0
    iget-object v0, p0, Lme/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    monitor-exit p0

    return-object v0

    .line 1793
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getSecurityState()Lme/android/browser/Tab$SecurityState;
    .locals 1

    .prologue
    .line 1676
    iget-object v0, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iget-object v0, v0, Lme/android/browser/Tab$PageState;->mSecurityState:Lme/android/browser/Tab$SecurityState;

    return-object v0
.end method

.method getSslCertificateError()Landroid/net/http/SslError;
    .locals 1

    .prologue
    .line 1685
    iget-object v0, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iget-object v0, v0, Lme/android/browser/Tab$PageState;->mSslCertificateError:Landroid/net/http/SslError;

    return-object v0
.end method

.method getSubViewContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1568
    iget-object v0, p0, Lme/android/browser/Tab;->mSubViewContainer:Landroid/view/View;

    return-object v0
.end method

.method getSubWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1560
    iget-object v0, p0, Lme/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    return-object v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1626
    iget-object v0, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iget-object v0, v0, Lme/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lme/android/browser/Tab;->mInPageLoad:Z

    if-eqz v0, :cond_0

    .line 1627
    iget-object v0, p0, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1629
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iget-object v0, v0, Lme/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method getTopWindow()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1513
    iget-object v0, p0, Lme/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1514
    iget-object v0, p0, Lme/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    .line 1516
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    goto :goto_0
.end method

.method getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1612
    iget-object v0, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iget-object v0, v0, Lme/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lme/android/browser/UrlUtils;->filteredUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getViewContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1543
    iget-object v0, p0, Lme/android/browser/Tab;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1526
    iget-object v0, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    return-object v0
.end method

.method getWebViewClassic()Landroid/webkit/WebViewClassic;
    .locals 1

    .prologue
    .line 1535
    iget-object v0, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebViewClassic;->fromWebView(Landroid/webkit/WebView;)Landroid/webkit/WebViewClassic;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 1955
    iget-object v0, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1956
    iget-object v0, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 1958
    :cond_0
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 1961
    iget-object v0, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1962
    iget-object v0, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 1964
    :cond_0
    return-void
.end method

.method inForeground()Z
    .locals 1

    .prologue
    .line 1504
    iget-boolean v0, p0, Lme/android/browser/Tab;->mInForeground:Z

    return v0
.end method

.method inPageLoad()Z
    .locals 1

    .prologue
    .line 1700
    iget-boolean v0, p0, Lme/android/browser/Tab;->mInPageLoad:Z

    return v0
.end method

.method public isBookmarkedSite()Z
    .locals 1

    .prologue
    .line 1643
    iget-object v0, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iget-boolean v0, v0, Lme/android/browser/Tab$PageState;->mIsBookmarkedSite:Z

    return v0
.end method

.method isPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 1552
    iget-object v0, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iget-boolean v0, v0, Lme/android/browser/Tab$PageState;->mIncognito:Z

    return v0
.end method

.method public isSnapshot()Z
    .locals 1

    .prologue
    .line 1799
    const/4 v0, 0x0

    return v0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1888
    iget-object v0, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1889
    const/4 v0, 0x5

    iput v0, p0, Lme/android/browser/Tab;->mPageLoadProgress:I

    .line 1890
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/android/browser/Tab;->mInPageLoad:Z

    .line 1891
    new-instance v0, Lme/android/browser/Tab$PageState;

    iget-object v1, p0, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lme/android/browser/Tab$PageState;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    .line 1892
    iget-object v0, p0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    iget-object v1, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-interface {v0, p0, v1, v3}, Lme/android/browser/WebViewController;->onPageStarted(Lme/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 1893
    iget-object v0, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 1895
    :cond_0
    return-void
.end method

.method public onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "picture"    # Landroid/graphics/Picture;

    .prologue
    .line 1937
    invoke-direct {p0}, Lme/android/browser/Tab;->postCapture()V

    .line 1938
    return-void
.end method

.method pause()V
    .locals 1

    .prologue
    .line 1464
    iget-object v0, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1465
    iget-object v0, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 1466
    iget-object v0, p0, Lme/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1467
    iget-object v0, p0, Lme/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 1470
    :cond_0
    return-void
.end method

.method protected persistThumbnail()V
    .locals 1

    .prologue
    .line 1978
    iget-object v0, p0, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lme/android/browser/DataController;->getInstance(Landroid/content/Context;)Lme/android/browser/DataController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lme/android/browser/DataController;->saveThumbnail(Lme/android/browser/Tab;)V

    .line 1979
    return-void
.end method

.method putInBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1491
    iget-boolean v0, p0, Lme/android/browser/Tab;->mInForeground:Z

    if-nez v0, :cond_1

    .line 1501
    :cond_0
    :goto_0
    return-void

    .line 1494
    :cond_1
    invoke-virtual {p0}, Lme/android/browser/Tab;->capture()V

    .line 1495
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/android/browser/Tab;->mInForeground:Z

    .line 1496
    invoke-virtual {p0}, Lme/android/browser/Tab;->pause()V

    .line 1497
    iget-object v0, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1498
    iget-object v0, p0, Lme/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1499
    iget-object v0, p0, Lme/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_0
.end method

.method putInForeground()V
    .locals 2

    .prologue
    .line 1473
    iget-boolean v1, p0, Lme/android/browser/Tab;->mInForeground:Z

    if-eqz v1, :cond_0

    .line 1488
    :goto_0
    return-void

    .line 1476
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lme/android/browser/Tab;->mInForeground:Z

    .line 1477
    invoke-virtual {p0}, Lme/android/browser/Tab;->resume()V

    .line 1478
    iget-object v1, p0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    invoke-interface {v1}, Lme/android/browser/WebViewController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1479
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1480
    iget-object v1, p0, Lme/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 1481
    iget-object v1, p0, Lme/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1484
    :cond_1
    iget-object v1, p0, Lme/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lme/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1485
    iget-object v1, p0, Lme/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/android/browser/Tab$ErrorDialog;

    invoke-direct {p0, v1}, Lme/android/browser/Tab;->showError(Lme/android/browser/Tab$ErrorDialog;)V

    .line 1487
    :cond_2
    iget-object v1, p0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    invoke-interface {v1, p0}, Lme/android/browser/WebViewController;->bookmarkedStatusHasChanged(Lme/android/browser/Tab;)V

    goto :goto_0
.end method

.method public refreshIdAfterPreload()V
    .locals 2

    .prologue
    .line 1221
    invoke-static {}, Lme/android/browser/TabControl;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Lme/android/browser/Tab;->mId:J

    .line 1222
    return-void
.end method

.method removeFromTree()V
    .locals 3

    .prologue
    .line 1329
    iget-object v1, p0, Lme/android/browser/Tab;->mChildren:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 1330
    iget-object v1, p0, Lme/android/browser/Tab;->mChildren:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1335
    :cond_0
    iget-object v1, p0, Lme/android/browser/Tab;->mParent:Lme/android/browser/Tab;

    if-eqz v1, :cond_1

    .line 1336
    iget-object v1, p0, Lme/android/browser/Tab;->mParent:Lme/android/browser/Tab;

    iget-object v1, v1, Lme/android/browser/Tab;->mChildren:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1338
    :cond_1
    invoke-virtual {p0}, Lme/android/browser/Tab;->deleteThumbnail()V

    .line 1339
    return-void

    .line 1330
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/android/browser/Tab;

    .line 1331
    .local v0, "t":Lme/android/browser/Tab;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lme/android/browser/Tab;->setParent(Lme/android/browser/Tab;)V

    goto :goto_0
.end method

.method resume()V
    .locals 1

    .prologue
    .line 1444
    iget-object v0, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1445
    iget-object v0, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lme/android/browser/Tab;->setupHwAcceleration(Landroid/view/View;)V

    .line 1446
    iget-object v0, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 1447
    iget-object v0, p0, Lme/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lme/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 1451
    :cond_0
    return-void
.end method

.method public saveState()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 1709
    iget-object v1, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 1710
    iget-object v1, p0, Lme/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    .line 1738
    :goto_0
    return-object v1

    .line 1713
    :cond_0
    iget-object v1, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iget-object v1, v1, Lme/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1714
    const/4 v1, 0x0

    goto :goto_0

    .line 1717
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lme/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    .line 1718
    iget-object v1, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v2, p0, Lme/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 1719
    .local v0, "savedList":Landroid/webkit/WebBackForwardList;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v1

    if-nez v1, :cond_3

    .line 1720
    :cond_2
    const-string v1, "Tab"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to save back/forward list for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1721
    iget-object v3, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iget-object v3, v3, Lme/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1720
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    :cond_3
    iget-object v1, p0, Lme/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v2, "ID"

    iget-wide v3, p0, Lme/android/browser/Tab;->mId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1725
    iget-object v1, p0, Lme/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v2, "currentUrl"

    iget-object v3, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iget-object v3, v3, Lme/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    iget-object v1, p0, Lme/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v2, "currentTitle"

    iget-object v3, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iget-object v3, v3, Lme/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    iget-object v1, p0, Lme/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v2, "privateBrowsingEnabled"

    iget-object v3, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1728
    iget-object v1, p0, Lme/android/browser/Tab;->mAppId:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1729
    iget-object v1, p0, Lme/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v2, "appid"

    iget-object v3, p0, Lme/android/browser/Tab;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    :cond_4
    iget-object v1, p0, Lme/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v2, "closeOnBack"

    iget-boolean v3, p0, Lme/android/browser/Tab;->mCloseOnBack:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1733
    iget-object v1, p0, Lme/android/browser/Tab;->mParent:Lme/android/browser/Tab;

    if-eqz v1, :cond_5

    .line 1734
    iget-object v1, p0, Lme/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v2, "parentTab"

    iget-object v3, p0, Lme/android/browser/Tab;->mParent:Lme/android/browser/Tab;

    iget-wide v3, v3, Lme/android/browser/Tab;->mId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1736
    :cond_5
    iget-object v1, p0, Lme/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v2, "useragent"

    .line 1737
    iget-object v3, p0, Lme/android/browser/Tab;->mSettings:Lme/android/browser/BrowserSettings;

    invoke-virtual {p0}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lme/android/browser/BrowserSettings;->hasDesktopUseragent(Landroid/webkit/WebView;)Z

    move-result v3

    .line 1736
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1738
    iget-object v1, p0, Lme/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    goto/16 :goto_0
.end method

.method public saveViewState(Landroid/content/ContentValues;)Z
    .locals 13
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v10, 0x0

    .line 1838
    invoke-virtual {p0}, Lme/android/browser/Tab;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v9

    .line 1839
    .local v9, "web":Landroid/webkit/WebViewClassic;
    if-nez v9, :cond_1

    .line 1875
    :cond_0
    :goto_0
    return v10

    .line 1840
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1841
    .local v4, "path":Ljava/lang/String;
    new-instance v0, Lme/android/browser/Tab$SaveCallback;

    const/4 v11, 0x0

    invoke-direct {v0, v11}, Lme/android/browser/Tab$SaveCallback;-><init>(Lme/android/browser/Tab$SaveCallback;)V

    .line 1842
    .local v0, "callback":Lme/android/browser/Tab$SaveCallback;
    const/4 v3, 0x0

    .line 1844
    .local v3, "outs":Ljava/io/OutputStream;
    :try_start_0
    iget-object v11, p0, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-virtual {v11, v4, v12}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 1845
    new-instance v8, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v8, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1846
    .local v8, "stream":Ljava/util/zip/GZIPOutputStream;
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1847
    :try_start_1
    invoke-virtual {v9, v8, v0}, Landroid/webkit/WebViewClassic;->saveViewState(Ljava/io/OutputStream;Landroid/webkit/ValueCallback;)V

    .line 1848
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 1846
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1850
    :try_start_2
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 1851
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1865
    iget-object v11, p0, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 1866
    .local v5, "savedFile":Ljava/io/File;
    iget-boolean v11, v0, Lme/android/browser/Tab$SaveCallback;->mResult:Z

    if-nez v11, :cond_3

    .line 1867
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1868
    invoke-virtual {v5}, Ljava/io/File;->deleteOnExit()V

    goto :goto_0

    .line 1846
    .end local v5    # "savedFile":Ljava/io/File;
    :catchall_0
    move-exception v11

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1852
    .end local v8    # "stream":Ljava/util/zip/GZIPOutputStream;
    :catch_0
    move-exception v1

    .line 1853
    .local v1, "e":Ljava/lang/Exception;
    const-string v11, "Tab"

    const-string v12, "Failed to save view state"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1854
    if-eqz v3, :cond_2

    .line 1856
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1859
    :cond_2
    :goto_1
    iget-object v11, p0, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1860
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1861
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    goto :goto_0

    .line 1872
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/File;
    .restart local v5    # "savedFile":Ljava/io/File;
    .restart local v8    # "stream":Ljava/util/zip/GZIPOutputStream;
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 1873
    .local v6, "size":J
    const-string v10, "viewstate_path"

    invoke-virtual {p1, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    const-string v10, "viewstate_size"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1875
    const/4 v10, 0x1

    goto :goto_0

    .line 1857
    .end local v5    # "savedFile":Ljava/io/File;
    .end local v6    # "size":J
    .end local v8    # "stream":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v11

    goto :goto_1
.end method

.method setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1600
    iput-object p1, p0, Lme/android/browser/Tab;->mAppId:Ljava/lang/String;

    .line 1601
    return-void
.end method

.method setCloseOnBack(Z)V
    .locals 0
    .param p1, "close"    # Z

    .prologue
    .line 1608
    iput-boolean p1, p0, Lme/android/browser/Tab;->mCloseOnBack:Z

    .line 1609
    return-void
.end method

.method public setController(Lme/android/browser/WebViewController;)V
    .locals 0
    .param p1, "ctl"    # Lme/android/browser/WebViewController;

    .prologue
    .line 1245
    iput-object p1, p0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    .line 1246
    invoke-virtual {p0}, Lme/android/browser/Tab;->updateShouldCaptureThumbnails()V

    .line 1247
    return-void
.end method

.method setDeviceAccountLogin(Lme/android/browser/DeviceAccountLogin;)V
    .locals 0
    .param p1, "login"    # Lme/android/browser/DeviceAccountLogin;

    .prologue
    .line 679
    iput-object p1, p0, Lme/android/browser/Tab;->mDeviceAccountLogin:Lme/android/browser/DeviceAccountLogin;

    .line 680
    return-void
.end method

.method setParent(Lme/android/browser/Tab;)V
    .locals 4
    .param p1, "parent"    # Lme/android/browser/Tab;

    .prologue
    .line 1390
    if-ne p1, p0, :cond_0

    .line 1391
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set parent to self!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1393
    :cond_0
    iput-object p1, p0, Lme/android/browser/Tab;->mParent:Lme/android/browser/Tab;

    .line 1398
    iget-object v0, p0, Lme/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 1399
    if-nez p1, :cond_3

    .line 1400
    iget-object v0, p0, Lme/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v1, "parentTab"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1407
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lme/android/browser/Tab;->mSettings:Lme/android/browser/BrowserSettings;

    invoke-virtual {p1}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/android/browser/BrowserSettings;->hasDesktopUseragent(Landroid/webkit/WebView;)Z

    move-result v0

    .line 1408
    iget-object v1, p0, Lme/android/browser/Tab;->mSettings:Lme/android/browser/BrowserSettings;

    invoke-virtual {p0}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/android/browser/BrowserSettings;->hasDesktopUseragent(Landroid/webkit/WebView;)Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 1409
    iget-object v0, p0, Lme/android/browser/Tab;->mSettings:Lme/android/browser/BrowserSettings;

    invoke-virtual {p0}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/android/browser/BrowserSettings;->toggleDesktopUseragent(Landroid/webkit/WebView;)V

    .line 1412
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lme/android/browser/Tab;->getId()J

    move-result-wide v0

    invoke-virtual {p0}, Lme/android/browser/Tab;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 1413
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Parent has same ID as child!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1402
    :cond_3
    iget-object v0, p0, Lme/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v1, "parentTab"

    invoke-virtual {p1}, Lme/android/browser/Tab;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 1415
    :cond_4
    return-void
.end method

.method setSubViewContainer(Landroid/view/View;)V
    .locals 0
    .param p1, "subViewContainer"    # Landroid/view/View;

    .prologue
    .line 1572
    iput-object p1, p0, Lme/android/browser/Tab;->mSubViewContainer:Landroid/view/View;

    .line 1573
    return-void
.end method

.method setSubWebView(Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "subView"    # Landroid/webkit/WebView;

    .prologue
    .line 1564
    iput-object p1, p0, Lme/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    .line 1565
    return-void
.end method

.method setViewContainer(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 1539
    iput-object p1, p0, Lme/android/browser/Tab;->mContainer:Landroid/view/View;

    .line 1540
    return-void
.end method

.method setWebView(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "w"    # Landroid/webkit/WebView;

    .prologue
    .line 1254
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lme/android/browser/Tab;->setWebView(Landroid/webkit/WebView;Z)V

    .line 1255
    return-void
.end method

.method setWebView(Landroid/webkit/WebView;Z)V
    .locals 6
    .param p1, "w"    # Landroid/webkit/WebView;
    .param p2, "restore"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1262
    iget-object v2, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-ne v2, p1, :cond_1

    .line 1309
    :cond_0
    :goto_0
    return-void

    .line 1268
    :cond_1
    iget-object v2, p0, Lme/android/browser/Tab;->mGeolocationPermissionsPrompt:Lme/android/browser/GeolocationPermissionsPrompt;

    if-eqz v2, :cond_2

    .line 1269
    iget-object v2, p0, Lme/android/browser/Tab;->mGeolocationPermissionsPrompt:Lme/android/browser/GeolocationPermissionsPrompt;

    invoke-virtual {v2}, Lme/android/browser/GeolocationPermissionsPrompt;->hide()V

    .line 1272
    :cond_2
    iget-object v2, p0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    invoke-interface {v2, p0, p1}, Lme/android/browser/WebViewController;->onSetWebView(Lme/android/browser/Tab;Landroid/webkit/WebView;)V

    .line 1274
    iget-object v2, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v2, :cond_3

    .line 1275
    iget-object v2, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 1276
    if-eqz p1, :cond_7

    .line 1277
    invoke-direct {p0, p1, v5}, Lme/android/browser/Tab;->syncCurrentState(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1283
    :cond_3
    :goto_1
    iput-object p1, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    .line 1285
    iget-object v2, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 1286
    iget-object v2, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v3, p0, Lme/android/browser/Tab;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1287
    iget-object v2, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v3, p0, Lme/android/browser/Tab;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1292
    iget-object v2, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v3, p0, Lme/android/browser/Tab;->mDownloadListener:Landroid/webkit/DownloadListener;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 1293
    invoke-virtual {p0}, Lme/android/browser/Tab;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v2

    iget-object v3, p0, Lme/android/browser/Tab;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic;->setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V

    .line 1294
    iget-object v2, p0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    invoke-interface {v2}, Lme/android/browser/WebViewController;->getTabControl()Lme/android/browser/TabControl;

    move-result-object v1

    .line 1295
    .local v1, "tc":Lme/android/browser/TabControl;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lme/android/browser/TabControl;->getOnThumbnailUpdatedListener()Lme/android/browser/TabControl$OnThumbnailUpdatedListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1296
    iget-object v2, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v2, p0}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 1298
    :cond_4
    if-eqz p2, :cond_0

    iget-object v2, p0, Lme/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 1299
    invoke-direct {p0}, Lme/android/browser/Tab;->restoreUserAgent()V

    .line 1301
    iget-object v2, p0, Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v3, p0, Lme/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 1302
    .local v0, "restoredState":Landroid/webkit/WebBackForwardList;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    if-nez v2, :cond_6

    .line 1303
    :cond_5
    const-string v2, "Tab"

    const-string v3, "Failed to restore WebView state!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    iget-object v2, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iget-object v2, v2, Lme/android/browser/Tab$PageState;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Lme/android/browser/Tab;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 1306
    :cond_6
    iput-object v5, p0, Lme/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    goto :goto_0

    .line 1279
    .end local v0    # "restoredState":Landroid/webkit/WebBackForwardList;
    .end local v1    # "tc":Lme/android/browser/TabControl;
    :cond_7
    new-instance v2, Lme/android/browser/Tab$PageState;

    iget-object v3, p0, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lme/android/browser/Tab$PageState;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    goto :goto_1
.end method

.method public shouldUpdateThumbnail()Z
    .locals 1

    .prologue
    .line 1212
    iget-boolean v0, p0, Lme/android/browser/Tab;->mUpdateThumbnail:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2004
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2005
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Lme/android/browser/Tab;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2006
    const-string v1, ") has parent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2007
    invoke-virtual {p0}, Lme/android/browser/Tab;->getParent()Lme/android/browser/Tab;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2008
    const-string v1, "true["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2009
    invoke-virtual {p0}, Lme/android/browser/Tab;->getParent()Lme/android/browser/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lme/android/browser/Tab;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2010
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2014
    :goto_0
    const-string v1, ", incog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2015
    invoke-virtual {p0}, Lme/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2016
    invoke-virtual {p0}, Lme/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2017
    const-string v1, ", title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2018
    invoke-virtual {p0}, Lme/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2019
    const-string v1, ", url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2020
    invoke-virtual {p0}, Lme/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2022
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2012
    :cond_1
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public updateBookmarkedStatus()V
    .locals 3

    .prologue
    .line 1778
    iget-object v0, p0, Lme/android/browser/Tab;->mDataController:Lme/android/browser/DataController;

    invoke-virtual {p0}, Lme/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lme/android/browser/Tab;->mIsBookmarkCallback:Lme/android/browser/DataController$OnQueryUrlIsBookmark;

    invoke-virtual {v0, v1, v2}, Lme/android/browser/DataController;->queryBookmarkStatus(Ljava/lang/String;Lme/android/browser/DataController$OnQueryUrlIsBookmark;)V

    .line 1779
    return-void
.end method

.method updateCaptureFromBlob([B)V
    .locals 5
    .param p1, "blob"    # [B

    .prologue
    .line 1986
    monitor-enter p0

    .line 1987
    :try_start_0
    iget-object v2, p0, Lme/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 1988
    monitor-exit p0

    .line 2000
    :goto_0
    return-void

    .line 1990
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1992
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :try_start_1
    iget-object v2, p0, Lme/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1986
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1993
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 1994
    .local v1, "rex":Ljava/lang/RuntimeException;
    :try_start_3
    const-string v2, "Tab"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Load capture has mismatched sizes; buffer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1995
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " blob: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1996
    const-string v4, "capture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lme/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1994
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public updateShouldCaptureThumbnails()V
    .locals 3

    .prologue
    .line 1225
    iget-object v0, p0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    invoke-interface {v0}, Lme/android/browser/WebViewController;->shouldCaptureThumbnails()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1226
    monitor-enter p0

    .line 1227
    :try_start_0
    iget-object v0, p0, Lme/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 1228
    iget v0, p0, Lme/android/browser/Tab;->mCaptureWidth:I

    iget v1, p0, Lme/android/browser/Tab;->mCaptureHeight:I

    .line 1229
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 1228
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    .line 1230
    iget-object v0, p0, Lme/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1231
    iget-boolean v0, p0, Lme/android/browser/Tab;->mInForeground:Z

    if-eqz v0, :cond_0

    .line 1232
    invoke-direct {p0}, Lme/android/browser/Tab;->postCapture()V

    .line 1226
    :cond_0
    monitor-exit p0

    .line 1242
    :goto_0
    return-void

    .line 1226
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1237
    :cond_1
    monitor-enter p0

    .line 1238
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lme/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    .line 1239
    invoke-virtual {p0}, Lme/android/browser/Tab;->deleteThumbnail()V

    .line 1237
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
