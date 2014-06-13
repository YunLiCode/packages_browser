.class Lcom/android/browser/Tab;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/Tab$9;,
        Lcom/android/browser/Tab$SaveCallback;,
        Lcom/android/browser/Tab$SubWindowChromeClient;,
        Lcom/android/browser/Tab$SubWindowClient;,
        Lcom/android/browser/Tab$ErrorDialog;,
        Lcom/android/browser/Tab$PageState;,
        Lcom/android/browser/Tab$SecurityState;
    }
.end annotation


# static fields
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
            "Lcom/android/browser/Tab;",
            ">;"
        }
    .end annotation
.end field

.field private mClearHistoryUrlPattern:Ljava/util/regex/Pattern;

.field private mCloseOnBack:Z

.field private mContainer:Landroid/view/View;

.field mContext:Landroid/content/Context;

.field protected mCurrentState:Lcom/android/browser/Tab$PageState;

.field private mDataController:Lcom/android/browser/DataController;

.field private mDeviceAccountLogin:Lcom/android/browser/DeviceAccountLogin;

.field private mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDisableOverrideUrlLoading:Z

.field private final mDownloadListener:Landroid/webkit/BrowserDownloadListener;

.field private mErrorConsole:Lcom/android/browser/ErrorConsoleView;

.field private mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

.field private mHandler:Landroid/os/Handler;

.field private mId:J

.field private mInForeground:Z

.field private mInPageLoad:Z

.field private mIsBookmarkCallback:Lcom/android/browser/DataController$OnQueryUrlIsBookmark;

.field private mLoadStartTime:J

.field private mMainView:Landroid/webkit/WebView;

.field private mPageLoadProgress:I

.field private mParent:Lcom/android/browser/Tab;

.field private mQueuedErrors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/browser/Tab$ErrorDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedState:Landroid/os/Bundle;

.field private mSettings:Lcom/android/browser/BrowserSettings;

.field private mSubView:Landroid/webkit/WebView;

.field private mSubViewContainer:Landroid/view/View;

.field mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

.field private mUpdateThumbnail:Z

.field private final mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

.field private final mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private final mWebViewClient:Landroid/webkit/WebViewClientClassicExt;

.field protected mWebViewController:Lcom/android/browser/WebViewController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/browser/Tab;->sAlphaPaint:Landroid/graphics/Paint;

    .line 108
    sget-object v0, Lcom/android/browser/Tab;->sAlphaPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 109
    sget-object v0, Lcom/android/browser/Tab;->sAlphaPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    return-void
.end method

.method constructor <init>(Lcom/android/browser/WebViewController;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "wvcontroller"    # Lcom/android/browser/WebViewController;
    .param p2, "state"    # Landroid/os/Bundle;

    .prologue
    .line 1150
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/browser/Tab;-><init>(Lcom/android/browser/WebViewController;Landroid/webkit/WebView;Landroid/os/Bundle;)V

    .line 1151
    return-void
.end method

.method constructor <init>(Lcom/android/browser/WebViewController;Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "wvcontroller"    # Lcom/android/browser/WebViewController;
    .param p2, "w"    # Landroid/webkit/WebView;

    .prologue
    .line 1146
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/browser/Tab;-><init>(Lcom/android/browser/WebViewController;Landroid/webkit/WebView;Landroid/os/Bundle;)V

    .line 1147
    return-void
.end method

.method constructor <init>(Lcom/android/browser/WebViewController;Landroid/webkit/WebView;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "wvcontroller"    # Lcom/android/browser/WebViewController;
    .param p2, "w"    # Landroid/webkit/WebView;
    .param p3, "state"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    .line 1153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-wide v4, p0, Lcom/android/browser/Tab;->mId:J

    .line 280
    new-instance v0, Lcom/android/browser/Tab$1;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$1;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 327
    new-instance v0, Lcom/android/browser/Tab$2;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$2;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mWebViewClient:Landroid/webkit/WebViewClientClassicExt;

    .line 694
    new-instance v0, Lcom/android/browser/Tab$3;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$3;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 1784
    new-instance v0, Lcom/android/browser/Tab$8;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$8;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mIsBookmarkCallback:Lcom/android/browser/DataController$OnQueryUrlIsBookmark;

    .line 1154
    iput-object p1, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    .line 1155
    iget-object v0, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0}, Lcom/android/browser/WebViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    .line 1156
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Tab;->mSettings:Lcom/android/browser/BrowserSettings;

    .line 1157
    iget-object v0, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/browser/DataController;->getInstance(Landroid/content/Context;)Lcom/android/browser/DataController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Tab;->mDataController:Lcom/android/browser/DataController;

    .line 1158
    new-instance v2, Lcom/android/browser/Tab$PageState;

    iget-object v3, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v0

    :goto_0
    invoke-direct {v2, v3, v0}, Lcom/android/browser/Tab$PageState;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    .line 1160
    iput-boolean v1, p0, Lcom/android/browser/Tab;->mInPageLoad:Z

    .line 1161
    iput-boolean v1, p0, Lcom/android/browser/Tab;->mInForeground:Z

    .line 1163
    new-instance v0, Lcom/android/browser/Tab$4;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$4;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mDownloadListener:Landroid/webkit/BrowserDownloadListener;

    .line 1171
    new-instance v0, Lcom/android/browser/Tab$5;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$5;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    .line 1192
    iget-object v0, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/browser/Tab;->mCaptureWidth:I

    .line 1194
    iget-object v0, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/browser/Tab;->mCaptureHeight:I

    .line 1196
    invoke-virtual {p0}, Lcom/android/browser/Tab;->updateShouldCaptureThumbnails()V

    .line 1197
    invoke-direct {p0, p3}, Lcom/android/browser/Tab;->restoreState(Landroid/os/Bundle;)V

    .line 1198
    invoke-virtual {p0}, Lcom/android/browser/Tab;->getId()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 1199
    invoke-static {}, Lcom/android/browser/TabControl;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/Tab;->mId:J

    .line 1201
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/browser/Tab;->setWebView(Landroid/webkit/WebView;)V

    .line 1202
    new-instance v0, Lcom/android/browser/Tab$6;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$6;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mHandler:Landroid/os/Handler;

    .line 1212
    return-void

    :cond_1
    move v0, v1

    .line 1158
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/browser/Tab;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/Tab;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/browser/Tab;->processNextError()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/browser/Tab;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/Tab;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/browser/Tab;->queueError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/browser/Tab;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/Tab;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/browser/Tab;->mInPageLoad:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/browser/Tab;Lcom/android/browser/Tab$SecurityState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/Tab;
    .param p1, "x1"    # Lcom/android/browser/Tab$SecurityState;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/browser/Tab;->setSecurityState(Lcom/android/browser/Tab$SecurityState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/Tab;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/browser/Tab;->mSettings:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/browser/Tab;Landroid/net/http/SslError;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/Tab;
    .param p1, "x1"    # Landroid/net/http/SslError;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/browser/Tab;->handleProceededAfterSslError(Landroid/net/http/SslError;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/browser/Tab;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/Tab;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/browser/Tab;)Lcom/android/browser/Tab;
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/Tab;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/browser/Tab;->mParent:Lcom/android/browser/Tab;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/browser/Tab;)Lcom/android/browser/GeolocationPermissionsPrompt;
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/Tab;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/Tab;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/Tab;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mUpdateThumbnail:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/browser/Tab;)Ljava/util/regex/Pattern;
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/Tab;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/browser/Tab;->mClearHistoryUrlPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/browser/Tab;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/Tab;
    .param p1, "x1"    # Ljava/util/regex/Pattern;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/browser/Tab;->mClearHistoryUrlPattern:Ljava/util/regex/Pattern;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/browser/Tab;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/Tab;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/browser/Tab;->mUpdateThumbnail:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/browser/Tab;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/Tab;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/browser/Tab;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/Tab;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/android/browser/Tab;->mPageLoadProgress:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/browser/Tab;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/browser/Tab;

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/browser/Tab;->mLoadStartTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/browser/Tab;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/Tab;
    .param p1, "x1"    # J

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/android/browser/Tab;->mLoadStartTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/browser/Tab;)Lcom/android/browser/ErrorConsoleView;
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/Tab;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/browser/Tab;->mErrorConsole:Lcom/android/browser/ErrorConsoleView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/Tab;)Lcom/android/browser/DeviceAccountLogin;
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/Tab;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/browser/Tab;->mDeviceAccountLogin:Lcom/android/browser/DeviceAccountLogin;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/browser/Tab;Lcom/android/browser/DeviceAccountLogin;)Lcom/android/browser/DeviceAccountLogin;
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/Tab;
    .param p1, "x1"    # Lcom/android/browser/DeviceAccountLogin;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/browser/Tab;->mDeviceAccountLogin:Lcom/android/browser/DeviceAccountLogin;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/browser/Tab;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/Tab;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mDisableOverrideUrlLoading:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/browser/Tab;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/Tab;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/browser/Tab;->mDisableOverrideUrlLoading:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/Tab;
    .param p1, "x1"    # Landroid/webkit/WebView;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/browser/Tab;->syncCurrentState(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/browser/Tab;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/Tab;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mInForeground:Z

    return v0
.end method

.method private static declared-synchronized getDefaultFavicon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    const-class v1, Lcom/android/browser/Tab;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/browser/Tab;->sDefaultFavicon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020001

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/browser/Tab;->sDefaultFavicon:Landroid/graphics/Bitmap;

    .line 202
    :cond_0
    sget-object v0, Lcom/android/browser/Tab;->sDefaultFavicon:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleProceededAfterSslError(Landroid/net/http/SslError;)V
    .locals 2
    .param p1, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 2033
    invoke-virtual {p1}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v1, v1, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2035
    sget-object v0, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_BAD_CERTIFICATE:Lcom/android/browser/Tab$SecurityState;

    invoke-direct {p0, v0}, Lcom/android/browser/Tab;->setSecurityState(Lcom/android/browser/Tab$SecurityState;)V

    .line 2036
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iput-object p1, v0, Lcom/android/browser/Tab$PageState;->mSslCertificateError:Landroid/net/http/SslError;

    .line 2042
    :cond_0
    :goto_0
    return-void

    .line 2037
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/Tab;->getSecurityState()Lcom/android/browser/Tab$SecurityState;

    move-result-object v0

    sget-object v1, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_SECURE:Lcom/android/browser/Tab$SecurityState;

    if-ne v0, v1, :cond_0

    .line 2040
    sget-object v0, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_MIXED:Lcom/android/browser/Tab$SecurityState;

    invoke-direct {p0, v0}, Lcom/android/browser/Tab;->setSecurityState(Lcom/android/browser/Tab$SecurityState;)V

    goto :goto_0
.end method

.method private postCapture()V
    .locals 4

    .prologue
    const/16 v3, 0x2a

    .line 1948
    iget-object v0, p0, Lcom/android/browser/Tab;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1949
    iget-object v0, p0, Lcom/android/browser/Tab;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1951
    :cond_0
    return-void
.end method

.method private processNextError()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/Tab$ErrorDialog;

    invoke-direct {p0, v0}, Lcom/android/browser/Tab;->showError(Lcom/android/browser/Tab$ErrorDialog;)V

    goto :goto_0
.end method

.method private queueError(ILjava/lang/String;)V
    .locals 5
    .param p1, "err"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v3, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    if-nez v3, :cond_0

    .line 290
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    .line 292
    :cond_0
    iget-object v3, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/Tab$ErrorDialog;

    .line 293
    .local v0, "d":Lcom/android/browser/Tab$ErrorDialog;
    iget v3, v0, Lcom/android/browser/Tab$ErrorDialog;->mError:I

    if-ne v3, p1, :cond_1

    .line 309
    .end local v0    # "d":Lcom/android/browser/Tab$ErrorDialog;
    :cond_2
    :goto_0
    return-void

    .line 298
    :cond_3
    new-instance v1, Lcom/android/browser/Tab$ErrorDialog;

    const/16 v3, -0xe

    if-ne p1, v3, :cond_4

    const v3, 0x7f0c00ff

    :goto_1
    invoke-direct {v1, p0, v3, p2, p1}, Lcom/android/browser/Tab$ErrorDialog;-><init>(Lcom/android/browser/Tab;ILjava/lang/String;I)V

    .line 303
    .local v1, "errDialog":Lcom/android/browser/Tab$ErrorDialog;
    iget-object v3, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 306
    iget-object v3, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/browser/Tab;->mInForeground:Z

    if-eqz v3, :cond_2

    .line 307
    invoke-direct {p0, v1}, Lcom/android/browser/Tab;->showError(Lcom/android/browser/Tab$ErrorDialog;)V

    goto :goto_0

    .line 298
    .end local v1    # "errDialog":Lcom/android/browser/Tab$ErrorDialog;
    :cond_4
    const v3, 0x7f0c00fe

    goto :goto_1
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 1748
    iput-object p1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    .line 1749
    iget-object v3, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    if-nez v3, :cond_0

    .line 1768
    :goto_0
    return-void

    .line 1754
    :cond_0
    const-string v3, "ID"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/browser/Tab;->mId:J

    .line 1755
    const-string v3, "appid"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/Tab;->mAppId:Ljava/lang/String;

    .line 1756
    const-string v3, "closeOnBack"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/browser/Tab;->mCloseOnBack:Z

    .line 1757
    invoke-direct {p0}, Lcom/android/browser/Tab;->restoreUserAgent()V

    .line 1758
    const-string v3, "currentUrl"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1759
    .local v2, "url":Ljava/lang/String;
    const-string v3, "currentTitle"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1760
    .local v1, "title":Ljava/lang/String;
    const-string v3, "privateBrowsingEnabled"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1761
    .local v0, "incognito":Z
    new-instance v3, Lcom/android/browser/Tab$PageState;

    iget-object v4, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v2, v5}, Lcom/android/browser/Tab$PageState;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    .line 1762
    iget-object v3, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iput-object v1, v3, Lcom/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    .line 1763
    monitor-enter p0

    .line 1764
    :try_start_0
    iget-object v3, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 1765
    iget-object v3, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/browser/DataController;->getInstance(Landroid/content/Context;)Lcom/android/browser/DataController;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/browser/DataController;->loadThumbnail(Lcom/android/browser/Tab;)V

    .line 1767
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
    .line 1771
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 1778
    :cond_0
    :goto_0
    return-void

    .line 1774
    :cond_1
    iget-object v0, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v1, "useragent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/browser/Tab;->mSettings:Lcom/android/browser/BrowserSettings;

    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserSettings;->hasDesktopUseragent(Landroid/webkit/WebView;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1776
    iget-object v0, p0, Lcom/android/browser/Tab;->mSettings:Lcom/android/browser/BrowserSettings;

    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->toggleDesktopUseragent(Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method private setSecurityState(Lcom/android/browser/Tab$SecurityState;)V
    .locals 2
    .param p1, "securityState"    # Lcom/android/browser/Tab$SecurityState;

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iput-object p1, v0, Lcom/android/browser/Tab$PageState;->mSecurityState:Lcom/android/browser/Tab$SecurityState;

    .line 1671
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/browser/Tab$PageState;->mSslCertificateError:Landroid/net/http/SslError;

    .line 1672
    iget-object v0, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0, p0}, Lcom/android/browser/WebViewController;->onUpdatedSecurityState(Lcom/android/browser/Tab;)V

    .line 1673
    return-void
.end method

.method private setupHwAcceleration(Landroid/view/View;)V
    .locals 3
    .param p1, "web"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1457
    if-nez p1, :cond_0

    .line 1464
    :goto_0
    return-void

    .line 1458
    :cond_0
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    .line 1459
    .local v0, "settings":Lcom/android/browser/BrowserSettings;
    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1460
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 1462
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private showError(Lcom/android/browser/Tab$ErrorDialog;)V
    .locals 4
    .param p1, "errDialog"    # Lcom/android/browser/Tab$ErrorDialog;

    .prologue
    .line 312
    iget-boolean v1, p0, Lcom/android/browser/Tab;->mInForeground:Z

    if-eqz v1, :cond_0

    .line 313
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v2, p1, Lcom/android/browser/Tab$ErrorDialog;->mTitle:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/browser/Tab$ErrorDialog;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0012

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 318
    .local v0, "d":Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/browser/Tab;->mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 319
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 321
    .end local v0    # "d":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method private syncCurrentState(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    .line 664
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/browser/Tab$PageState;->mOriginalUrl:Ljava/lang/String;

    .line 668
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    .line 669
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/browser/Tab$PageState;->mFavicon:Landroid/graphics/Bitmap;

    .line 670
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 673
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    sget-object v1, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_NOT_SECURE:Lcom/android/browser/Tab$SecurityState;

    iput-object v1, v0, Lcom/android/browser/Tab$PageState;->mSecurityState:Lcom/android/browser/Tab$SecurityState;

    .line 674
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/browser/Tab$PageState;->mSslCertificateError:Landroid/net/http/SslError;

    .line 676
    :cond_1
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    invoke-virtual {p1}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/browser/Tab$PageState;->mIncognito:Z

    .line 677
    return-void
.end method


# virtual methods
.method addChildTab(Lcom/android/browser/Tab;)V
    .locals 1
    .param p1, "child"    # Lcom/android/browser/Tab;

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/android/browser/Tab;->mChildren:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1436
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/browser/Tab;->mChildren:Ljava/util/Vector;

    .line 1438
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mChildren:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1439
    invoke-virtual {p1, p0}, Lcom/android/browser/Tab;->setParent(Lcom/android/browser/Tab;)V

    .line 1440
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

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
    .line 1958
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

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
    .line 1905
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 1940
    :cond_0
    :goto_0
    return-void

    .line 1906
    :cond_1
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 1909
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1910
    .local v0, "c":Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollX()I

    move-result v6

    .line 1911
    .local v6, "left":I
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v2

    add-int v10, v1, v2

    .line 1912
    .local v10, "top":I
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 1913
    .local v8, "state":I
    neg-int v1, v6

    int-to-float v1, v1

    neg-int v2, v10

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1914
    iget v1, p0, Lcom/android/browser/Tab;->mCaptureWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v7, v1, v2

    .line 1915
    .local v7, "scale":F
    int-to-float v1, v6

    int-to-float v2, v10

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1916
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    instance-of v1, v1, Lcom/android/browser/BrowserWebView;

    if-eqz v1, :cond_2

    .line 1917
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    check-cast v1, Lcom/android/browser/BrowserWebView;

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserWebView;->drawContent(Landroid/graphics/Canvas;)V

    .line 1921
    :goto_1
    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1923
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    iget-object v4, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lcom/android/browser/Tab;->sAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1924
    iget-object v1, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lcom/android/browser/Tab;->sAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1926
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000

    sget-object v5, Lcom/android/browser/Tab;->sAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1927
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lcom/android/browser/Tab;->sAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1929
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1930
    iget-object v1, p0, Lcom/android/browser/Tab;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1931
    invoke-virtual {p0}, Lcom/android/browser/Tab;->persistThumbnail()V

    .line 1932
    iget-object v1, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v1}, Lcom/android/browser/WebViewController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v9

    .line 1933
    .local v9, "tc":Lcom/android/browser/TabControl;
    if-eqz v9, :cond_0

    .line 1934
    invoke-virtual {v9}, Lcom/android/browser/TabControl;->getOnThumbnailUpdatedListener()Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;

    move-result-object v11

    .line 1936
    .local v11, "updateListener":Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;
    if-eqz v11, :cond_0

    .line 1937
    invoke-interface {v11, p0}, Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;->onThumbnailUpdated(Lcom/android/browser/Tab;)V

    goto/16 :goto_0

    .line 1919
    .end local v9    # "tc":Lcom/android/browser/TabControl;
    .end local v11    # "updateListener":Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;
    :cond_2
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1
.end method

.method closeOnBack()Z
    .locals 1

    .prologue
    .line 1607
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mCloseOnBack:Z

    return v0
.end method

.method public compressBitmap(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1882
    if-nez p1, :cond_0

    .line 1883
    const/4 v1, 0x0

    .line 1887
    :goto_0
    return-object v1

    .line 1885
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1886
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1887
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0
.end method

.method public createSnapshotValues()Landroid/content/ContentValues;
    .locals 6

    .prologue
    .line 1822
    invoke-virtual {p0}, Lcom/android/browser/Tab;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v2

    .line 1823
    .local v2, "web":Landroid/webkit/WebViewClassic;
    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 1834
    :goto_0
    return-object v1

    .line 1824
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1825
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "title"

    iget-object v4, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v4, v4, Lcom/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    const-string v3, "url"

    iget-object v4, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v4, v4, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    const-string v3, "background"

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getPageBackgroundColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1828
    const-string v3, "date_created"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1829
    const-string v3, "favicon"

    invoke-virtual {p0}, Lcom/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/browser/Tab;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1830
    iget-object v3, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/browser/Controller;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/browser/Controller;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/browser/Controller;->createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1833
    .local v0, "screenshot":Landroid/graphics/Bitmap;
    const-string v3, "thumbnail"

    invoke-virtual {p0, v0}, Lcom/android/browser/Tab;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method createSubWindow()Z
    .locals 4

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0, p0}, Lcom/android/browser/WebViewController;->createSubWindow(Lcom/android/browser/Tab;)V

    .line 1351
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/browser/Tab$SubWindowClient;

    iget-object v2, p0, Lcom/android/browser/Tab;->mWebViewClient:Landroid/webkit/WebViewClientClassicExt;

    iget-object v3, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-direct {v1, v2, v3}, Lcom/android/browser/Tab$SubWindowClient;-><init>(Landroid/webkit/WebViewClientClassicExt;Lcom/android/browser/WebViewController;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1353
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/browser/Tab$SubWindowChromeClient;

    iget-object v2, p0, Lcom/android/browser/Tab;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-direct {v1, p0, v2}, Lcom/android/browser/Tab$SubWindowChromeClient;-><init>(Lcom/android/browser/Tab;Landroid/webkit/WebChromeClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1357
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/browser/Tab$7;

    invoke-direct {v1, p0}, Lcom/android/browser/Tab$7;-><init>(Lcom/android/browser/Tab;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 1370
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v1}, Lcom/android/browser/WebViewController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1371
    const/4 v0, 0x1

    .line 1373
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected deleteThumbnail()V
    .locals 1

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/browser/DataController;->getInstance(Landroid/content/Context;)Lcom/android/browser/DataController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/browser/DataController;->deleteThumbnail(Lcom/android/browser/Tab;)V

    .line 1990
    return-void
.end method

.method destroy()V
    .locals 2

    .prologue
    .line 1318
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 1319
    invoke-virtual {p0}, Lcom/android/browser/Tab;->dismissSubWindow()V

    .line 1321
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    .line 1322
    .local v0, "webView":Landroid/webkit/WebView;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/browser/Tab;->setWebView(Landroid/webkit/WebView;)V

    .line 1323
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 1325
    .end local v0    # "webView":Landroid/webkit/WebView;
    :cond_0
    return-void
.end method

.method public disableUrlOverridingForLoad()V
    .locals 1

    .prologue
    .line 1901
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/Tab;->mDisableOverrideUrlLoading:Z

    .line 1902
    return-void
.end method

.method dismissSubWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1380
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0}, Lcom/android/browser/WebViewController;->endActionMode()V

    .line 1382
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 1383
    iput-object v1, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    .line 1384
    iput-object v1, p0, Lcom/android/browser/Tab;->mSubViewContainer:Landroid/view/View;

    .line 1386
    :cond_0
    return-void
.end method

.method getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/android/browser/Tab;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method getDeviceAccountLogin()Lcom/android/browser/DeviceAccountLogin;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/browser/Tab;->mDeviceAccountLogin:Lcom/android/browser/DeviceAccountLogin;

    return-object v0
.end method

.method getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;
    .locals 2
    .param p1, "createIfNecessary"    # Z

    .prologue
    .line 1658
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/browser/Tab;->mErrorConsole:Lcom/android/browser/ErrorConsoleView;

    if-nez v0, :cond_0

    .line 1659
    new-instance v0, Lcom/android/browser/ErrorConsoleView;

    iget-object v1, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/browser/ErrorConsoleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mErrorConsole:Lcom/android/browser/ErrorConsoleView;

    .line 1660
    iget-object v0, p0, Lcom/android/browser/Tab;->mErrorConsole:Lcom/android/browser/ErrorConsoleView;

    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/android/browser/ErrorConsoleView;->setWebView(Landroid/webkit/WebView;)V

    .line 1662
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mErrorConsole:Lcom/android/browser/ErrorConsoleView;

    return-object v0
.end method

.method getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1639
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mFavicon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1640
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mFavicon:Landroid/graphics/Bitmap;

    .line 1642
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/browser/Tab;->getDefaultFavicon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method getGeolocationPermissionsPrompt()Lcom/android/browser/GeolocationPermissionsPrompt;
    .locals 3

    .prologue
    .line 1582
    iget-object v1, p0, Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

    if-nez v1, :cond_0

    .line 1583
    iget-object v1, p0, Lcom/android/browser/Tab;->mContainer:Landroid/view/View;

    const v2, 0x7f0d006e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1585
    .local v0, "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/browser/GeolocationPermissionsPrompt;

    iput-object v1, p0, Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

    .line 1588
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

    return-object v1
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 1253
    iget-wide v0, p0, Lcom/android/browser/Tab;->mId:J

    return-wide v0
.end method

.method getLoadProgress()I
    .locals 1

    .prologue
    .line 1692
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mInPageLoad:Z

    if-eqz v0, :cond_0

    .line 1693
    iget v0, p0, Lcom/android/browser/Tab;->mPageLoadProgress:I

    .line 1695
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mOriginalUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1620
    invoke-virtual {p0}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1622
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mOriginalUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/browser/UrlUtils;->filteredUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParent()Lcom/android/browser/Tab;
    .locals 1

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/android/browser/Tab;->mParent:Lcom/android/browser/Tab;

    return-object v0
.end method

.method public getScreenshot()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1796
    monitor-enter p0

    .line 1797
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    monitor-exit p0

    return-object v0

    .line 1798
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getSecurityState()Lcom/android/browser/Tab$SecurityState;
    .locals 1

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mSecurityState:Lcom/android/browser/Tab$SecurityState;

    return-object v0
.end method

.method getSslCertificateError()Landroid/net/http/SslError;
    .locals 1

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mSslCertificateError:Landroid/net/http/SslError;

    return-object v0
.end method

.method getSubViewContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubViewContainer:Landroid/view/View;

    return-object v0
.end method

.method getSubWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    return-object v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/browser/Tab;->mInPageLoad:Z

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1632
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method getTopWindow()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    .line 1519
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    goto :goto_0
.end method

.method getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/browser/UrlUtils;->filteredUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getViewContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/android/browser/Tab;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    return-object v0
.end method

.method getWebViewClassic()Landroid/webkit/WebViewClassic;
    .locals 1

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebViewClassic;->fromWebView(Landroid/webkit/WebView;)Landroid/webkit/WebViewClassic;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 1962
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1963
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 1965
    :cond_0
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1969
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 1971
    :cond_0
    return-void
.end method

.method inForeground()Z
    .locals 1

    .prologue
    .line 1507
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mInForeground:Z

    return v0
.end method

.method inPageLoad()Z
    .locals 1

    .prologue
    .line 1703
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mInPageLoad:Z

    return v0
.end method

.method public isBookmarkedSite()Z
    .locals 1

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-boolean v0, v0, Lcom/android/browser/Tab$PageState;->mIsBookmarkedSite:Z

    return v0
.end method

.method isPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-boolean v0, v0, Lcom/android/browser/Tab$PageState;->mIncognito:Z

    return v0
.end method

.method public isSnapshot()Z
    .locals 1

    .prologue
    .line 1802
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

    .line 1891
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1892
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/browser/Tab;->mPageLoadProgress:I

    .line 1893
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/Tab;->mInPageLoad:Z

    .line 1894
    new-instance v0, Lcom/android/browser/Tab$PageState;

    iget-object v1, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/browser/Tab$PageState;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    .line 1895
    iget-object v0, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-interface {v0, p0, v1, v3}, Lcom/android/browser/WebViewController;->onPageStarted(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 1896
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 1898
    :cond_0
    return-void
.end method

.method public onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "picture"    # Landroid/graphics/Picture;

    .prologue
    .line 1944
    invoke-direct {p0}, Lcom/android/browser/Tab;->postCapture()V

    .line 1945
    return-void
.end method

.method pause()V
    .locals 1

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1468
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 1469
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1470
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 1473
    :cond_0
    return-void
.end method

.method protected persistThumbnail()V
    .locals 1

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/browser/DataController;->getInstance(Landroid/content/Context;)Lcom/android/browser/DataController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/browser/DataController;->saveThumbnail(Lcom/android/browser/Tab;)V

    .line 1986
    return-void
.end method

.method putInBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1494
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mInForeground:Z

    if-nez v0, :cond_1

    .line 1504
    :cond_0
    :goto_0
    return-void

    .line 1497
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/Tab;->capture()V

    .line 1498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/Tab;->mInForeground:Z

    .line 1499
    invoke-virtual {p0}, Lcom/android/browser/Tab;->pause()V

    .line 1500
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1501
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_0
.end method

.method putInForeground()V
    .locals 2

    .prologue
    .line 1476
    iget-boolean v1, p0, Lcom/android/browser/Tab;->mInForeground:Z

    if-eqz v1, :cond_0

    .line 1491
    :goto_0
    return-void

    .line 1479
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/browser/Tab;->mInForeground:Z

    .line 1480
    invoke-virtual {p0}, Lcom/android/browser/Tab;->resume()V

    .line 1481
    iget-object v1, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v1}, Lcom/android/browser/WebViewController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1482
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1483
    iget-object v1, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 1484
    iget-object v1, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1487
    :cond_1
    iget-object v1, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1488
    iget-object v1, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/Tab$ErrorDialog;

    invoke-direct {p0, v1}, Lcom/android/browser/Tab;->showError(Lcom/android/browser/Tab$ErrorDialog;)V

    .line 1490
    :cond_2
    iget-object v1, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v1, p0}, Lcom/android/browser/WebViewController;->bookmarkedStatusHasChanged(Lcom/android/browser/Tab;)V

    goto :goto_0
.end method

.method public refreshIdAfterPreload()V
    .locals 2

    .prologue
    .line 1224
    invoke-static {}, Lcom/android/browser/TabControl;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/Tab;->mId:J

    .line 1225
    return-void
.end method

.method removeFromTree()V
    .locals 3

    .prologue
    .line 1332
    iget-object v2, p0, Lcom/android/browser/Tab;->mChildren:Ljava/util/Vector;

    if-eqz v2, :cond_0

    .line 1333
    iget-object v2, p0, Lcom/android/browser/Tab;->mChildren:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/Tab;

    .line 1334
    .local v1, "t":Lcom/android/browser/Tab;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/browser/Tab;->setParent(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 1338
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "t":Lcom/android/browser/Tab;
    :cond_0
    iget-object v2, p0, Lcom/android/browser/Tab;->mParent:Lcom/android/browser/Tab;

    if-eqz v2, :cond_1

    .line 1339
    iget-object v2, p0, Lcom/android/browser/Tab;->mParent:Lcom/android/browser/Tab;

    iget-object v2, v2, Lcom/android/browser/Tab;->mChildren:Ljava/util/Vector;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1341
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/Tab;->deleteThumbnail()V

    .line 1342
    return-void
.end method

.method resume()V
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/android/browser/Tab;->setupHwAcceleration(Landroid/view/View;)V

    .line 1449
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 1450
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1451
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 1454
    :cond_0
    return-void
.end method

.method public saveState()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 1712
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 1713
    iget-object v1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    .line 1741
    :goto_0
    return-object v1

    .line 1716
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v1, v1, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1717
    const/4 v1, 0x0

    goto :goto_0

    .line 1720
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    .line 1721
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 1722
    .local v0, "savedList":Landroid/webkit/WebBackForwardList;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v1

    if-nez v1, :cond_3

    .line 1723
    :cond_2
    const-string v1, "Tab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to save back/forward list for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v3, v3, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :cond_3
    iget-object v1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v2, "ID"

    iget-wide v3, p0, Lcom/android/browser/Tab;->mId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1728
    iget-object v1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v2, "currentUrl"

    iget-object v3, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v3, v3, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    iget-object v1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v2, "currentTitle"

    iget-object v3, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v3, v3, Lcom/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    iget-object v1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v2, "privateBrowsingEnabled"

    iget-object v3, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1731
    iget-object v1, p0, Lcom/android/browser/Tab;->mAppId:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1732
    iget-object v1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v2, "appid"

    iget-object v3, p0, Lcom/android/browser/Tab;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    :cond_4
    iget-object v1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v2, "closeOnBack"

    iget-boolean v3, p0, Lcom/android/browser/Tab;->mCloseOnBack:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1736
    iget-object v1, p0, Lcom/android/browser/Tab;->mParent:Lcom/android/browser/Tab;

    if-eqz v1, :cond_5

    .line 1737
    iget-object v1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v2, "parentTab"

    iget-object v3, p0, Lcom/android/browser/Tab;->mParent:Lcom/android/browser/Tab;

    iget-wide v3, v3, Lcom/android/browser/Tab;->mId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1739
    :cond_5
    iget-object v1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v2, "useragent"

    iget-object v3, p0, Lcom/android/browser/Tab;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {p0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/browser/BrowserSettings;->hasDesktopUseragent(Landroid/webkit/WebView;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1741
    iget-object v1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    goto/16 :goto_0
.end method

.method public saveViewState(Landroid/content/ContentValues;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 1841
    invoke-virtual {p0}, Lcom/android/browser/Tab;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v1

    .line 1842
    if-nez v1, :cond_1

    .line 1878
    :cond_0
    :goto_0
    return v0

    .line 1843
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1844
    new-instance v4, Lcom/android/browser/Tab$SaveCallback;

    invoke-direct {v4, v2}, Lcom/android/browser/Tab$SaveCallback;-><init>(Lcom/android/browser/Tab$1;)V

    .line 1847
    :try_start_0
    iget-object v5, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1848
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1849
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1850
    :try_start_1
    invoke-virtual {v1, v5, v4}, Landroid/webkit/WebViewClassic;->saveViewState(Ljava/io/OutputStream;Landroid/webkit/ValueCallback;)V

    .line 1851
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    .line 1852
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1853
    :try_start_2
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 1854
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1868
    iget-object v1, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1869
    iget-boolean v2, v4, Lcom/android/browser/Tab$SaveCallback;->mResult:Z

    if-nez v2, :cond_3

    .line 1870
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1871
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    goto :goto_0

    .line 1852
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1855
    :catch_0
    move-exception v1

    .line 1856
    const-string v4, "Tab"

    const-string v5, "Failed to save view state"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1857
    if-eqz v2, :cond_2

    .line 1859
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1862
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1863
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1864
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    goto :goto_0

    .line 1875
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 1876
    const-string v2, "viewstate_path"

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    const-string v2, "viewstate_size"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1878
    const/4 v0, 0x1

    goto :goto_0

    .line 1860
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1603
    iput-object p1, p0, Lcom/android/browser/Tab;->mAppId:Ljava/lang/String;

    .line 1604
    return-void
.end method

.method setCloseOnBack(Z)V
    .locals 0
    .param p1, "close"    # Z

    .prologue
    .line 1611
    iput-boolean p1, p0, Lcom/android/browser/Tab;->mCloseOnBack:Z

    .line 1612
    return-void
.end method

.method public setController(Lcom/android/browser/WebViewController;)V
    .locals 0
    .param p1, "ctl"    # Lcom/android/browser/WebViewController;

    .prologue
    .line 1248
    iput-object p1, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    .line 1249
    invoke-virtual {p0}, Lcom/android/browser/Tab;->updateShouldCaptureThumbnails()V

    .line 1250
    return-void
.end method

.method setDeviceAccountLogin(Lcom/android/browser/DeviceAccountLogin;)V
    .locals 0
    .param p1, "login"    # Lcom/android/browser/DeviceAccountLogin;

    .prologue
    .line 682
    iput-object p1, p0, Lcom/android/browser/Tab;->mDeviceAccountLogin:Lcom/android/browser/DeviceAccountLogin;

    .line 683
    return-void
.end method

.method setParent(Lcom/android/browser/Tab;)V
    .locals 4
    .param p1, "parent"    # Lcom/android/browser/Tab;

    .prologue
    .line 1393
    if-ne p1, p0, :cond_0

    .line 1394
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set parent to self!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1396
    :cond_0
    iput-object p1, p0, Lcom/android/browser/Tab;->mParent:Lcom/android/browser/Tab;

    .line 1401
    iget-object v0, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 1402
    if-nez p1, :cond_3

    .line 1403
    iget-object v0, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v1, "parentTab"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1410
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/browser/Tab;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->hasDesktopUseragent(Landroid/webkit/WebView;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/browser/Tab;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {p0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserSettings;->hasDesktopUseragent(Landroid/webkit/WebView;)Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 1412
    iget-object v0, p0, Lcom/android/browser/Tab;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {p0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->toggleDesktopUseragent(Landroid/webkit/WebView;)V

    .line 1415
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/browser/Tab;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 1416
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Parent has same ID as child!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1405
    :cond_3
    iget-object v0, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v1, "parentTab"

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 1418
    :cond_4
    return-void
.end method

.method setSubViewContainer(Landroid/view/View;)V
    .locals 0
    .param p1, "subViewContainer"    # Landroid/view/View;

    .prologue
    .line 1575
    iput-object p1, p0, Lcom/android/browser/Tab;->mSubViewContainer:Landroid/view/View;

    .line 1576
    return-void
.end method

.method setSubWebView(Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "subView"    # Landroid/webkit/WebView;

    .prologue
    .line 1567
    iput-object p1, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    .line 1568
    return-void
.end method

.method setViewContainer(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 1542
    iput-object p1, p0, Lcom/android/browser/Tab;->mContainer:Landroid/view/View;

    .line 1543
    return-void
.end method

.method setWebView(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "w"    # Landroid/webkit/WebView;

    .prologue
    .line 1257
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/Tab;->setWebView(Landroid/webkit/WebView;Z)V

    .line 1258
    return-void
.end method

.method setWebView(Landroid/webkit/WebView;Z)V
    .locals 6
    .param p1, "w"    # Landroid/webkit/WebView;
    .param p2, "restore"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1265
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-ne v2, p1, :cond_1

    .line 1312
    :cond_0
    :goto_0
    return-void

    .line 1271
    :cond_1
    iget-object v2, p0, Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

    if-eqz v2, :cond_2

    .line 1272
    iget-object v2, p0, Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

    invoke-virtual {v2}, Lcom/android/browser/GeolocationPermissionsPrompt;->hide()V

    .line 1275
    :cond_2
    iget-object v2, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v2, p0, p1}, Lcom/android/browser/WebViewController;->onSetWebView(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V

    .line 1277
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v2, :cond_3

    .line 1278
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 1279
    if-eqz p1, :cond_7

    .line 1280
    invoke-direct {p0, p1, v5}, Lcom/android/browser/Tab;->syncCurrentState(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1286
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    .line 1288
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 1289
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/android/browser/Tab;->mWebViewClient:Landroid/webkit/WebViewClientClassicExt;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1290
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/android/browser/Tab;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1295
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/android/browser/Tab;->mDownloadListener:Landroid/webkit/BrowserDownloadListener;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 1296
    invoke-virtual {p0}, Lcom/android/browser/Tab;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/Tab;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic;->setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V

    .line 1297
    iget-object v2, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v2}, Lcom/android/browser/WebViewController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    .line 1298
    .local v1, "tc":Lcom/android/browser/TabControl;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getOnThumbnailUpdatedListener()Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1299
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v2, p0}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 1301
    :cond_4
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 1302
    invoke-direct {p0}, Lcom/android/browser/Tab;->restoreUserAgent()V

    .line 1303
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 1305
    .local v0, "restoredState":Landroid/webkit/WebBackForwardList;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    if-nez v2, :cond_6

    .line 1306
    :cond_5
    const-string v2, "Tab"

    const-string v3, "Failed to restore WebView state!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-object v2, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v2, v2, Lcom/android/browser/Tab$PageState;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Lcom/android/browser/Tab;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 1309
    :cond_6
    iput-object v5, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    goto :goto_0

    .line 1282
    .end local v0    # "restoredState":Landroid/webkit/WebBackForwardList;
    .end local v1    # "tc":Lcom/android/browser/TabControl;
    :cond_7
    new-instance v2, Lcom/android/browser/Tab$PageState;

    iget-object v3, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/browser/Tab$PageState;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    goto :goto_1
.end method

.method public shouldUpdateThumbnail()Z
    .locals 1

    .prologue
    .line 1215
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mUpdateThumbnail:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2011
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2012
    iget-wide v1, p0, Lcom/android/browser/Tab;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2013
    const-string v1, ") has parent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2014
    invoke-virtual {p0}, Lcom/android/browser/Tab;->getParent()Lcom/android/browser/Tab;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2015
    const-string v1, "true["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2016
    invoke-virtual {p0}, Lcom/android/browser/Tab;->getParent()Lcom/android/browser/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2017
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2021
    :goto_0
    const-string v1, ", incog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2022
    invoke-virtual {p0}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2023
    invoke-virtual {p0}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2024
    const-string v1, ", title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2025
    invoke-virtual {p0}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2026
    const-string v1, ", url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2027
    invoke-virtual {p0}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2029
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2019
    :cond_1
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public updateBookmarkedStatus()V
    .locals 3

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/android/browser/Tab;->mDataController:Lcom/android/browser/DataController;

    invoke-virtual {p0}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Tab;->mIsBookmarkCallback:Lcom/android/browser/DataController$OnQueryUrlIsBookmark;

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/DataController;->queryBookmarkStatus(Ljava/lang/String;Lcom/android/browser/DataController$OnQueryUrlIsBookmark;)V

    .line 1782
    return-void
.end method

.method updateCaptureFromBlob([B)V
    .locals 5

    .prologue
    .line 1993
    monitor-enter p0

    .line 1994
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 1995
    monitor-exit p0

    .line 2007
    :goto_0
    return-void

    .line 1997
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1999
    :try_start_1
    iget-object v0, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2006
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2000
    :catch_0
    move-exception v0

    .line 2001
    :try_start_3
    const-string v2, "Tab"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load capture has mismatched sizes; buffer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " blob: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "capture: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public updateShouldCaptureThumbnails()V
    .locals 3

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0}, Lcom/android/browser/WebViewController;->shouldCaptureThumbnails()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1229
    monitor-enter p0

    .line 1230
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 1231
    iget v0, p0, Lcom/android/browser/Tab;->mCaptureWidth:I

    iget v1, p0, Lcom/android/browser/Tab;->mCaptureHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    .line 1233
    iget-object v0, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1234
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mInForeground:Z

    if-eqz v0, :cond_0

    .line 1235
    invoke-direct {p0}, Lcom/android/browser/Tab;->postCapture()V

    .line 1238
    :cond_0
    monitor-exit p0

    .line 1245
    :goto_0
    return-void

    .line 1238
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1240
    :cond_1
    monitor-enter p0

    .line 1241
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    .line 1242
    invoke-virtual {p0}, Lcom/android/browser/Tab;->deleteThumbnail()V

    .line 1243
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
