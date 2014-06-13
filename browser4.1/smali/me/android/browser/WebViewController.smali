.class public interface abstract Lme/android/browser/WebViewController;
.super Ljava/lang/Object;
.source "WebViewController.java"


# virtual methods
.method public abstract attachSubWindow(Lme/android/browser/Tab;)V
.end method

.method public abstract bookmarkedStatusHasChanged(Lme/android/browser/Tab;)V
.end method

.method public abstract closeTab(Lme/android/browser/Tab;)V
.end method

.method public abstract createSubWindow(Lme/android/browser/Tab;)V
.end method

.method public abstract dismissSubWindow(Lme/android/browser/Tab;)V
.end method

.method public abstract doUpdateVisitedHistory(Lme/android/browser/Tab;Z)V
.end method

.method public abstract endActionMode()V
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDefaultVideoPoster()Landroid/graphics/Bitmap;
.end method

.method public abstract getTabControl()Lme/android/browser/TabControl;
.end method

.method public abstract getVideoLoadingProgressView()Landroid/view/View;
.end method

.method public abstract getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getWebViewFactory()Lme/android/browser/WebViewFactory;
.end method

.method public abstract hideAutoLogin(Lme/android/browser/Tab;)V
.end method

.method public abstract hideCustomView()V
.end method

.method public abstract onDownloadStart(Lme/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract onFavicon(Lme/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
.end method

.method public abstract onPageFinished(Lme/android/browser/Tab;)V
.end method

.method public abstract onPageStarted(Lme/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
.end method

.method public abstract onProgressChanged(Lme/android/browser/Tab;)V
.end method

.method public abstract onReceivedHttpAuthRequest(Lme/android/browser/Tab;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReceivedTitle(Lme/android/browser/Tab;Ljava/lang/String;)V
.end method

.method public abstract onSetWebView(Lme/android/browser/Tab;Landroid/webkit/WebView;)V
.end method

.method public abstract onUnhandledKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract onUpdatedSecurityState(Lme/android/browser/Tab;)V
.end method

.method public abstract onUserCanceledSsl(Lme/android/browser/Tab;)V
.end method

.method public abstract openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
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
.end method

.method public abstract openTab(Ljava/lang/String;Lme/android/browser/Tab;ZZ)Lme/android/browser/Tab;
.end method

.method public abstract openTab(Ljava/lang/String;ZZZ)Lme/android/browser/Tab;
.end method

.method public abstract setupAutoFill(Landroid/os/Message;)V
.end method

.method public abstract shouldCaptureThumbnails()Z
.end method

.method public abstract shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract shouldOverrideUrlLoading(Lme/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)Z
.end method

.method public abstract shouldShowErrorConsole()Z
.end method

.method public abstract showAutoLogin(Lme/android/browser/Tab;)V
.end method

.method public abstract showCustomView(Lme/android/browser/Tab;Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
.end method

.method public abstract showSslCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end method

.method public abstract switchToTab(Lme/android/browser/Tab;)Z
.end method
