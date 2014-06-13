.class public Lme/android/browser/PreloadController;
.super Ljava/lang/Object;
.source "PreloadController.java"

# interfaces
.implements Lme/android/browser/WebViewController;


# static fields
.field private static final LOGD_ENABLED:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "PreloadController"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/PreloadController;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method public attachSubWindow(Lme/android/browser/Tab;)V
    .locals 0
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 218
    return-void
.end method

.method public bookmarkedStatusHasChanged(Lme/android/browser/Tab;)V
    .locals 0
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 256
    return-void
.end method

.method public closeTab(Lme/android/browser/Tab;)V
    .locals 0
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 246
    return-void
.end method

.method public createSubWindow(Lme/android/browser/Tab;)V
    .locals 0
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 77
    return-void
.end method

.method public dismissSubWindow(Lme/android/browser/Tab;)V
    .locals 0
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 223
    return-void
.end method

.method public doUpdateVisitedHistory(Lme/android/browser/Tab;Z)V
    .locals 0
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "isReload"    # Z

    .prologue
    .line 139
    return-void
.end method

.method public endActionMode()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lme/android/browser/PreloadController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTabControl()Lme/android/browser/TabControl;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 0
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
    .line 144
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    return-void
.end method

.method public getWebViewFactory()Lme/android/browser/WebViewFactory;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideAutoLogin(Lme/android/browser/Tab;)V
    .locals 0
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 266
    return-void
.end method

.method public hideCustomView()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public onDownloadStart(Lme/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "useragent"    # Ljava/lang/String;
    .param p4, "contentDisposition"    # Ljava/lang/String;
    .param p5, "mimeType"    # Ljava/lang/String;
    .param p6, "contentLength"    # J

    .prologue
    .line 158
    return-void
.end method

.method public onFavicon(Lme/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "view"    # Landroid/webkit/WebView;
    .param p3, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 116
    return-void
.end method

.method public onPageFinished(Lme/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 95
    .local v0, "view":Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 101
    .end local v0    # "view":Landroid/webkit/WebView;
    :cond_0
    return-void
.end method

.method public onPageStarted(Lme/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "view"    # Landroid/webkit/WebView;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 82
    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p2}, Landroid/webkit/WebView;->clearHistory()V

    .line 88
    :cond_0
    return-void
.end method

.method public onProgressChanged(Lme/android/browser/Tab;)V
    .locals 0
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 106
    return-void
.end method

.method public onReceivedHttpAuthRequest(Lme/android/browser/Tab;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "view"    # Landroid/webkit/WebView;
    .param p3, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "realm"    # Ljava/lang/String;

    .prologue
    .line 151
    return-void
.end method

.method public onReceivedTitle(Lme/android/browser/Tab;Ljava/lang/String;)V
    .locals 0
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 111
    return-void
.end method

.method public onSetWebView(Lme/android/browser/Tab;Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 72
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public onUpdatedSecurityState(Lme/android/browser/Tab;)V
    .locals 0
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 203
    return-void
.end method

.method public onUserCanceledSsl(Lme/android/browser/Tab;)V
    .locals 0
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 192
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
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
    .line 208
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    return-void
.end method

.method public openTab(Ljava/lang/String;Lme/android/browser/Tab;ZZ)Lme/android/browser/Tab;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "parent"    # Lme/android/browser/Tab;
    .param p3, "setActive"    # Z
    .param p4, "useCurrent"    # Z

    .prologue
    .line 234
    const/4 v0, 0x0

    return-object v0
.end method

.method public openTab(Ljava/lang/String;ZZZ)Lme/android/browser/Tab;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "incognito"    # Z
    .param p3, "setActive"    # Z
    .param p4, "useCurrent"    # Z

    .prologue
    .line 228
    const/4 v0, 0x0

    return-object v0
.end method

.method public setupAutoFill(Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 251
    return-void
.end method

.method public shouldCaptureThumbnails()Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideUrlLoading(Lme/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "view"    # Landroid/webkit/WebView;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public shouldShowErrorConsole()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public showAutoLogin(Lme/android/browser/Tab;)V
    .locals 0
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 261
    return-void
.end method

.method public showCustomView(Lme/android/browser/Tab;Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "requestedOrientation"    # I
    .param p4, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 164
    return-void
.end method

.method public showSslCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 187
    return-void
.end method

.method public switchToTab(Lme/android/browser/Tab;)Z
    .locals 1
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method
