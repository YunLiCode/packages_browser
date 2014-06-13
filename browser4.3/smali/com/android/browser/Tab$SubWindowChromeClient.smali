.class Lcom/android/browser/Tab$SubWindowChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubWindowChromeClient"
.end annotation


# instance fields
.field private final mClient:Landroid/webkit/WebChromeClient;

.field final synthetic this$0:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab;Landroid/webkit/WebChromeClient;)V
    .locals 0
    .param p2, "client"    # Landroid/webkit/WebChromeClient;

    .prologue
    .line 1121
    iput-object p1, p0, Lcom/android/browser/Tab$SubWindowChromeClient;->this$0:Lcom/android/browser/Tab;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 1122
    iput-object p2, p0, Lcom/android/browser/Tab$SubWindowChromeClient;->mClient:Landroid/webkit/WebChromeClient;

    .line 1123
    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "window"    # Landroid/webkit/WebView;

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/browser/Tab$SubWindowChromeClient;->this$0:Lcom/android/browser/Tab;

    # getter for: Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/android/browser/Tab;->access$1600(Lcom/android/browser/Tab;)Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 1136
    const-string v0, "Tab"

    const-string v1, "Can\'t close the window"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab$SubWindowChromeClient;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$SubWindowChromeClient;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewController;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 1139
    return-void
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dialog"    # Z
    .param p3, "userGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/browser/Tab$SubWindowChromeClient;->mClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/android/browser/Tab$SubWindowChromeClient;->mClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 1127
    return-void
.end method
