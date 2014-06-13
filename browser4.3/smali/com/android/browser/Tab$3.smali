.class Lcom/android/browser/Tab$3;
.super Landroid/webkit/WebChromeClient;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab;)V
    .locals 0

    .prologue
    .line 694
    iput-object p1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/browser/Tab$3;ZLandroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/Tab$3;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/os/Message;

    .prologue
    .line 694
    invoke-direct {p0, p1, p2}, Lcom/android/browser/Tab$3;->createWindow(ZLandroid/os/Message;)V

    return-void
.end method

.method private createWindow(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "dialog"    # Z
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 697
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/WebView$WebViewTransport;

    .line 699
    .local v1, "transport":Landroid/webkit/WebView$WebViewTransport;
    if-eqz p1, :cond_0

    .line 700
    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v2}, Lcom/android/browser/Tab;->createSubWindow()Z

    .line 701
    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v2, v2, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v3, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v2, v3}, Lcom/android/browser/WebViewController;->attachSubWindow(Lcom/android/browser/Tab;)V

    .line 702
    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    # getter for: Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;
    invoke-static {v2}, Lcom/android/browser/Tab;->access$1600(Lcom/android/browser/Tab;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 708
    :goto_0
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 709
    return-void

    .line 704
    :cond_0
    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v2, v2, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v2, v3, v4, v5, v5}, Lcom/android/browser/WebViewController;->openTab(Ljava/lang/String;Lcom/android/browser/Tab;ZZ)Lcom/android/browser/Tab;

    move-result-object v0

    .line 706
    .local v0, "newTab":Lcom/android/browser/Tab;
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    goto :goto_0
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    # getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0}, Lcom/android/browser/WebViewController;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 977
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    # getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0}, Lcom/android/browser/WebViewController;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    .line 990
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 1
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
    .line 1007
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0, p1}, Lcom/android/browser/WebViewController;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 1008
    return-void
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "window"    # Landroid/webkit/WebView;

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    # getter for: Lcom/android/browser/Tab;->mParent:Lcom/android/browser/Tab;
    invoke-static {v0}, Lcom/android/browser/Tab;->access$1800(Lcom/android/browser/Tab;)Lcom/android/browser/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 786
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    # getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    # getter for: Lcom/android/browser/Tab;->mParent:Lcom/android/browser/Tab;
    invoke-static {v1}, Lcom/android/browser/Tab;->access$1800(Lcom/android/browser/Tab;)Lcom/android/browser/Tab;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewController;->switchToTab(Lcom/android/browser/Tab;)Z

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewController;->closeTab(Lcom/android/browser/Tab;)V

    .line 791
    :cond_1
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 5
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    const/4 v4, 0x1

    .line 928
    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    # getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v2}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 930
    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v2, v4}, Lcom/android/browser/Tab;->getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;

    move-result-object v0

    .line 931
    .local v0, "errorConsole":Lcom/android/browser/ErrorConsoleView;
    invoke-virtual {v0, p1}, Lcom/android/browser/ErrorConsoleView;->addErrorMessage(Landroid/webkit/ConsoleMessage;)V

    .line 932
    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v2, v2, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v2}, Lcom/android/browser/WebViewController;->shouldShowErrorConsole()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/browser/ErrorConsoleView;->getShowState()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 935
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    .line 940
    .end local v0    # "errorConsole":Lcom/android/browser/ErrorConsoleView;
    :cond_0
    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v2}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 964
    :goto_0
    return v4

    .line 942
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Console: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 946
    .local v1, "message":Ljava/lang/String;
    sget-object v2, Lcom/android/browser/Tab$9;->$SwitchMap$android$webkit$ConsoleMessage$MessageLevel:[I

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 948
    :pswitch_0
    const-string v2, "browser"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 951
    :pswitch_1
    const-string v2, "browser"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 954
    :pswitch_2
    const-string v2, "browser"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 957
    :pswitch_3
    const-string v2, "browser"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 960
    :pswitch_4
    const-string v2, "browser"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 946
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dialog"    # Z
    .param p3, "userGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const v6, 0x7f0c0012

    const/4 v4, 0x1

    const v7, 0x1010355

    const/4 v3, 0x0

    .line 715
    iget-object v5, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    # getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v5}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 772
    :goto_0
    return v3

    .line 719
    :cond_0
    if-eqz p2, :cond_1

    iget-object v5, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    # getter for: Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;
    invoke-static {v5}, Lcom/android/browser/Tab;->access$1600(Lcom/android/browser/Tab;)Landroid/webkit/WebView;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 720
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v5, v5, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c0113

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0114

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 727
    :cond_1
    iget-object v5, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v5, v5, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v5}, Lcom/android/browser/WebViewController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v5

    if-nez v5, :cond_2

    .line 728
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v5, v5, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c0111

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0112

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 738
    :cond_2
    if-eqz p3, :cond_3

    .line 739
    invoke-direct {p0, p2, p4}, Lcom/android/browser/Tab$3;->createWindow(ZLandroid/os/Message;)V

    move v3, v4

    .line 740
    goto :goto_0

    .line 744
    :cond_3
    new-instance v0, Lcom/android/browser/Tab$3$1;

    invoke-direct {v0, p0, p2, p4}, Lcom/android/browser/Tab$3$1;-><init>(Lcom/android/browser/Tab$3;ZLandroid/os/Message;)V

    .line 753
    .local v0, "allowListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/browser/Tab$3$2;

    invoke-direct {v1, p0, p4}, Lcom/android/browser/Tab$3$2;-><init>(Lcom/android/browser/Tab$3;Landroid/os/Message;)V

    .line 761
    .local v1, "blockListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v6, v6, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c010e

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c010f

    invoke-virtual {v5, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c0110

    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 771
    .local v2, "d":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    move v3, v4

    .line 772
    goto/16 :goto_0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "databaseIdentifier"    # Ljava/lang/String;
    .param p3, "currentQuota"    # J
    .param p5, "estimatedSize"    # J
    .param p7, "totalUsedQuota"    # J
    .param p9, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    # getter for: Lcom/android/browser/Tab;->mSettings:Lcom/android/browser/BrowserSettings;
    invoke-static {v0}, Lcom/android/browser/Tab;->access$1400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getWebStorageSizeManager()Lcom/android/browser/WebStorageSizeManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/browser/WebStorageSizeManager;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 875
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    # getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    # getter for: Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;
    invoke-static {v0}, Lcom/android/browser/Tab;->access$1900(Lcom/android/browser/Tab;)Lcom/android/browser/GeolocationPermissionsPrompt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    # getter for: Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;
    invoke-static {v0}, Lcom/android/browser/Tab;->access$1900(Lcom/android/browser/Tab;)Lcom/android/browser/GeolocationPermissionsPrompt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/GeolocationPermissionsPrompt;->hide()V

    .line 919
    :cond_0
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 1
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    # getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getGeolocationPermissionsPrompt()Lcom/android/browser/GeolocationPermissionsPrompt;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/GeolocationPermissionsPrompt;->show(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 909
    :cond_0
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    # getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0}, Lcom/android/browser/WebViewController;->hideCustomView()V

    .line 854
    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    .line 795
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    # setter for: Lcom/android/browser/Tab;->mPageLoadProgress:I
    invoke-static {v0, p2}, Lcom/android/browser/Tab;->access$302(Lcom/android/browser/Tab;I)I

    .line 796
    if-ne p2, v3, :cond_0

    .line 797
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    # setter for: Lcom/android/browser/Tab;->mInPageLoad:Z
    invoke-static {v0, v2}, Lcom/android/browser/Tab;->access$102(Lcom/android/browser/Tab;Z)Z

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewController;->onProgressChanged(Lcom/android/browser/Tab;)V

    .line 800
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    # getter for: Lcom/android/browser/Tab;->mUpdateThumbnail:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$200(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p2, v3, :cond_1

    .line 801
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    # setter for: Lcom/android/browser/Tab;->mUpdateThumbnail:Z
    invoke-static {v0, v2}, Lcom/android/browser/Tab;->access$202(Lcom/android/browser/Tab;Z)Z

    .line 803
    :cond_1
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 6
    .param p1, "spaceNeeded"    # J
    .param p3, "totalUsedQuota"    # J
    .param p5, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    # getter for: Lcom/android/browser/Tab;->mSettings:Lcom/android/browser/BrowserSettings;
    invoke-static {v0}, Lcom/android/browser/Tab;->access$1400(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getWebStorageSizeManager()Lcom/android/browser/WebStorageSizeManager;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/WebStorageSizeManager;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 893
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iput-object p2, v0, Lcom/android/browser/Tab$PageState;->mFavicon:Landroid/graphics/Bitmap;

    .line 814
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/browser/WebViewController;->onFavicon(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 815
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iput-object p2, v0, Lcom/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    .line 808
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1, p2}, Lcom/android/browser/WebViewController;->onReceivedTitle(Lcom/android/browser/Tab;Ljava/lang/String;)V

    .line 809
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "precomposed"    # Z

    .prologue
    const/4 v5, 0x0

    .line 820
    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 823
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    if-eqz v1, :cond_0

    .line 824
    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    invoke-virtual {v1, v5}, Lcom/android/browser/DownloadTouchIcon;->cancel(Z)Z

    .line 825
    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    .line 828
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    if-nez v1, :cond_1

    .line 829
    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    new-instance v2, Lcom/android/browser/DownloadTouchIcon;

    iget-object v3, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v4, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v4, v4, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v0, p1}, Lcom/android/browser/DownloadTouchIcon;-><init>(Lcom/android/browser/Tab;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/webkit/WebView;)V

    iput-object v2, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    .line 831
    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v5

    invoke-virtual {v1, v2}, Lcom/android/browser/DownloadTouchIcon;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 833
    :cond_1
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    # getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewController;->switchToTab(Lcom/android/browser/Tab;)Z

    .line 780
    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "requestedOrientation"    # I
    .param p3, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    # getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/browser/WebViewController;->showCustomView(Lcom/android/browser/Tab;Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 849
    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 838
    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v1}, Lcom/android/browser/WebViewController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 839
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 840
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/browser/Tab$3;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 842
    :cond_0
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
    .line 995
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    # getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/browser/WebViewController;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    :goto_0
    return-void

    .line 998
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setupAutoFill(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 1013
    move-object v3, p1

    .line 1014
    .local v3, "msg":Landroid/os/Message;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v4, v4, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1015
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v4, v4, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1017
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040028

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1019
    .local v2, "layout":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0012

    new-instance v6, Lcom/android/browser/Tab$3$3;

    invoke-direct {v6, p0, v2, v3}, Lcom/android/browser/Tab$3$3;-><init>(Lcom/android/browser/Tab$3;Landroid/view/View;Landroid/os/Message;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0011

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1042
    return-void
.end method
