.class public Lme/android/browser/Preloader;
.super Ljava/lang/Object;
.source "Preloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/android/browser/Preloader$PreloaderSession;
    }
.end annotation


# static fields
.field private static final LOGD_ENABLED:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "browser.preloader"

.field private static final PRERENDER_TIMEOUT_MILLIS:I = 0x7530

.field private static sInstance:Lme/android/browser/Preloader;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFactory:Lme/android/browser/BrowserWebViewFactory;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mSession:Lme/android/browser/Preloader$PreloaderSession;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/Preloader;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lme/android/browser/Preloader;->mHandler:Landroid/os/Handler;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lme/android/browser/Preloader;->mSession:Lme/android/browser/Preloader$PreloaderSession;

    .line 55
    new-instance v0, Lme/android/browser/BrowserWebViewFactory;

    invoke-direct {v0, p1}, Lme/android/browser/BrowserWebViewFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lme/android/browser/Preloader;->mFactory:Lme/android/browser/BrowserWebViewFactory;

    .line 57
    return-void
.end method

.method static synthetic access$0(Lme/android/browser/Preloader;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lme/android/browser/Preloader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lme/android/browser/Preloader;)Lme/android/browser/BrowserWebViewFactory;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lme/android/browser/Preloader;->mFactory:Lme/android/browser/BrowserWebViewFactory;

    return-object v0
.end method

.method static synthetic access$2(Lme/android/browser/Preloader;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lme/android/browser/Preloader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lme/android/browser/Preloader;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lme/android/browser/Preloader;->sInstance:Lme/android/browser/Preloader;

    return-object v0
.end method

.method private getSession(Ljava/lang/String;)Lme/android/browser/Preloader$PreloaderSession;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lme/android/browser/Preloader;->mSession:Lme/android/browser/Preloader$PreloaderSession;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lme/android/browser/Preloader$PreloaderSession;

    invoke-direct {v0, p0, p1}, Lme/android/browser/Preloader$PreloaderSession;-><init>(Lme/android/browser/Preloader;Ljava/lang/String;)V

    iput-object v0, p0, Lme/android/browser/Preloader;->mSession:Lme/android/browser/Preloader$PreloaderSession;

    .line 63
    invoke-static {}, Lme/android/browser/WebViewTimersControl;->getInstance()Lme/android/browser/WebViewTimersControl;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lme/android/browser/Preloader;->mSession:Lme/android/browser/Preloader$PreloaderSession;

    invoke-virtual {v1}, Lme/android/browser/Preloader$PreloaderSession;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lme/android/browser/WebViewTimersControl;->onPrerenderStart(Landroid/webkit/WebView;)V

    .line 65
    iget-object v0, p0, Lme/android/browser/Preloader;->mSession:Lme/android/browser/Preloader$PreloaderSession;

    .line 73
    :goto_0
    return-object v0

    .line 66
    :cond_0
    iget-object v0, p0, Lme/android/browser/Preloader;->mSession:Lme/android/browser/Preloader$PreloaderSession;

    # getter for: Lme/android/browser/Preloader$PreloaderSession;->mId:Ljava/lang/String;
    invoke-static {v0}, Lme/android/browser/Preloader$PreloaderSession;->access$0(Lme/android/browser/Preloader$PreloaderSession;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lme/android/browser/Preloader;->mSession:Lme/android/browser/Preloader$PreloaderSession;

    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    new-instance v0, Lme/android/browser/Preloader;

    invoke-direct {v0, p0}, Lme/android/browser/Preloader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lme/android/browser/Preloader;->sInstance:Lme/android/browser/Preloader;

    .line 45
    return-void
.end method

.method private takeSession(Ljava/lang/String;)Lme/android/browser/Preloader$PreloaderSession;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "s":Lme/android/browser/Preloader$PreloaderSession;
    iget-object v1, p0, Lme/android/browser/Preloader;->mSession:Lme/android/browser/Preloader$PreloaderSession;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lme/android/browser/Preloader;->mSession:Lme/android/browser/Preloader$PreloaderSession;

    # getter for: Lme/android/browser/Preloader$PreloaderSession;->mId:Ljava/lang/String;
    invoke-static {v1}, Lme/android/browser/Preloader$PreloaderSession;->access$0(Lme/android/browser/Preloader$PreloaderSession;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v0, p0, Lme/android/browser/Preloader;->mSession:Lme/android/browser/Preloader$PreloaderSession;

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, Lme/android/browser/Preloader;->mSession:Lme/android/browser/Preloader$PreloaderSession;

    .line 83
    :cond_0
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Lme/android/browser/Preloader$PreloaderSession;->cancelTimeout()V

    .line 87
    :cond_1
    return-object v0
.end method


# virtual methods
.method public cancelSearchBoxPreload(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lme/android/browser/Preloader;->getSession(Ljava/lang/String;)Lme/android/browser/Preloader$PreloaderSession;

    move-result-object v0

    .line 111
    .local v0, "s":Lme/android/browser/Preloader$PreloaderSession;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lme/android/browser/Preloader$PreloaderSession;->touch()V

    .line 113
    invoke-virtual {v0}, Lme/android/browser/Preloader$PreloaderSession;->getTabControl()Lme/android/browser/PreloadedTabControl;

    move-result-object v1

    .line 114
    .local v1, "tab":Lme/android/browser/PreloadedTabControl;
    invoke-virtual {v1}, Lme/android/browser/PreloadedTabControl;->searchBoxCancel()V

    .line 116
    .end local v1    # "tab":Lme/android/browser/PreloadedTabControl;
    :cond_0
    return-void
.end method

.method public discardPreload(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lme/android/browser/Preloader;->takeSession(Ljava/lang/String;)Lme/android/browser/Preloader$PreloaderSession;

    move-result-object v0

    .line 120
    .local v0, "s":Lme/android/browser/Preloader$PreloaderSession;
    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Lme/android/browser/WebViewTimersControl;->getInstance()Lme/android/browser/WebViewTimersControl;

    move-result-object v3

    if-nez v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Lme/android/browser/WebViewTimersControl;->onPrerenderDone(Landroid/webkit/WebView;)V

    .line 123
    invoke-virtual {v0}, Lme/android/browser/Preloader$PreloaderSession;->getTabControl()Lme/android/browser/PreloadedTabControl;

    move-result-object v1

    .line 124
    .local v1, "t":Lme/android/browser/PreloadedTabControl;
    invoke-virtual {v1}, Lme/android/browser/PreloadedTabControl;->destroy()V

    .line 128
    .end local v1    # "t":Lme/android/browser/PreloadedTabControl;
    :cond_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {v0}, Lme/android/browser/Preloader$PreloaderSession;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    goto :goto_0
.end method

.method public getPreloadedTab(Ljava/lang/String;)Lme/android/browser/PreloadedTabControl;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lme/android/browser/Preloader;->takeSession(Ljava/lang/String;)Lme/android/browser/Preloader$PreloaderSession;

    move-result-object v0

    .line 137
    .local v0, "s":Lme/android/browser/Preloader$PreloaderSession;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lme/android/browser/Preloader$PreloaderSession;->getTabControl()Lme/android/browser/PreloadedTabControl;

    move-result-object v1

    goto :goto_0
.end method

.method public handlePreloadRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "searchBoxQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lme/android/browser/Preloader;->getSession(Ljava/lang/String;)Lme/android/browser/Preloader$PreloaderSession;

    move-result-object v0

    .line 93
    .local v0, "s":Lme/android/browser/Preloader$PreloaderSession;
    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {v0}, Lme/android/browser/Preloader$PreloaderSession;->touch()V

    .line 100
    invoke-virtual {v0}, Lme/android/browser/Preloader$PreloaderSession;->getTabControl()Lme/android/browser/PreloadedTabControl;

    move-result-object v1

    .line 101
    .local v1, "tab":Lme/android/browser/PreloadedTabControl;
    if-eqz p4, :cond_1

    .line 102
    invoke-virtual {v1, p2, p3}, Lme/android/browser/PreloadedTabControl;->loadUrlIfChanged(Ljava/lang/String;Ljava/util/Map;)V

    .line 103
    invoke-virtual {v1, p4}, Lme/android/browser/PreloadedTabControl;->setQuery(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v1, p2, p3}, Lme/android/browser/PreloadedTabControl;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
