.class Lcom/android/browser/Tab$SubWindowClient;
.super Landroid/webkit/WebViewClientClassicExt;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubWindowClient"
.end annotation


# instance fields
.field private final mClient:Landroid/webkit/WebViewClientClassicExt;

.field private final mController:Lcom/android/browser/WebViewController;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClientClassicExt;Lcom/android/browser/WebViewController;)V
    .locals 0
    .param p1, "client"    # Landroid/webkit/WebViewClientClassicExt;
    .param p2, "controller"    # Lcom/android/browser/WebViewController;

    .prologue
    .line 1056
    invoke-direct {p0}, Landroid/webkit/WebViewClientClassicExt;-><init>()V

    .line 1057
    iput-object p1, p0, Lcom/android/browser/Tab$SubWindowClient;->mClient:Landroid/webkit/WebViewClientClassicExt;

    .line 1058
    iput-object p2, p0, Lcom/android/browser/Tab$SubWindowClient;->mController:Lcom/android/browser/WebViewController;

    .line 1059
    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/browser/Tab$SubWindowClient;->mClient:Landroid/webkit/WebViewClientClassicExt;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClientClassicExt;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 1071
    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/browser/Tab$SubWindowClient;->mClient:Landroid/webkit/WebViewClientClassicExt;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClientClassicExt;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 1095
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/android/browser/Tab$SubWindowClient;->mController:Lcom/android/browser/WebViewController;

    invoke-interface {v0}, Lcom/android/browser/WebViewController;->endActionMode()V

    .line 1066
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequestHandler;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/ClientCertRequestHandler;
    .param p3, "host_and_port"    # Ljava/lang/String;

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/browser/Tab$SubWindowClient;->mClient:Landroid/webkit/WebViewClientClassicExt;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClientClassicExt;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequestHandler;Ljava/lang/String;)V

    .line 1085
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/browser/Tab$SubWindowClient;->mClient:Landroid/webkit/WebViewClientClassicExt;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClientClassicExt;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 1100
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/android/browser/Tab$SubWindowClient;->mClient:Landroid/webkit/WebViewClientClassicExt;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClientClassicExt;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/android/browser/Tab$SubWindowClient;->mClient:Landroid/webkit/WebViewClientClassicExt;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClientClassicExt;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 1080
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/browser/Tab$SubWindowClient;->mClient:Landroid/webkit/WebViewClientClassicExt;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClientClassicExt;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    .line 1110
    return-void
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/android/browser/Tab$SubWindowClient;->mClient:Landroid/webkit/WebViewClientClassicExt;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClientClassicExt;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/android/browser/Tab$SubWindowClient;->mClient:Landroid/webkit/WebViewClientClassicExt;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClientClassicExt;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
