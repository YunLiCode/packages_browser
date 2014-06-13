.class Lme/android/browser/Tab$SubWindowChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubWindowChromeClient"
.end annotation


# instance fields
.field private final mClient:Landroid/webkit/WebChromeClient;

.field final synthetic this$0:Lme/android/browser/Tab;


# direct methods
.method constructor <init>(Lme/android/browser/Tab;Landroid/webkit/WebChromeClient;)V
    .locals 0
    .param p2, "client"    # Landroid/webkit/WebChromeClient;

    .prologue
    .line 1118
    iput-object p1, p0, Lme/android/browser/Tab$SubWindowChromeClient;->this$0:Lme/android/browser/Tab;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 1119
    iput-object p2, p0, Lme/android/browser/Tab$SubWindowChromeClient;->mClient:Landroid/webkit/WebChromeClient;

    .line 1120
    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "window"    # Landroid/webkit/WebView;

    .prologue
    .line 1132
    iget-object v0, p0, Lme/android/browser/Tab$SubWindowChromeClient;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mSubView:Landroid/webkit/WebView;
    invoke-static {v0}, Lme/android/browser/Tab;->access$15(Lme/android/browser/Tab;)Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 1133
    const-string v0, "Tab"

    const-string v1, "Can\'t close the window"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :cond_0
    iget-object v0, p0, Lme/android/browser/Tab$SubWindowChromeClient;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    iget-object v1, p0, Lme/android/browser/Tab$SubWindowChromeClient;->this$0:Lme/android/browser/Tab;

    invoke-interface {v0, v1}, Lme/android/browser/WebViewController;->dismissSubWindow(Lme/android/browser/Tab;)V

    .line 1136
    return-void
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dialog"    # Z
    .param p3, "userGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .prologue
    .line 1128
    iget-object v0, p0, Lme/android/browser/Tab$SubWindowChromeClient;->mClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 1123
    iget-object v0, p0, Lme/android/browser/Tab$SubWindowChromeClient;->mClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 1124
    return-void
.end method
