.class Lme/android/browser/Tab$3;
.super Landroid/webkit/WebChromeClient;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$android$webkit$ConsoleMessage$MessageLevel:[I


# instance fields
.field final synthetic this$0:Lme/android/browser/Tab;


# direct methods
.method static synthetic $SWITCH_TABLE$android$webkit$ConsoleMessage$MessageLevel()[I
    .locals 3

    .prologue
    .line 691
    sget-object v0, Lme/android/browser/Tab$3;->$SWITCH_TABLE$android$webkit$ConsoleMessage$MessageLevel:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/webkit/ConsoleMessage$MessageLevel;->values()[Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->DEBUG:Landroid/webkit/ConsoleMessage$MessageLevel;

    invoke-virtual {v1}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->ERROR:Landroid/webkit/ConsoleMessage$MessageLevel;

    invoke-virtual {v1}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->LOG:Landroid/webkit/ConsoleMessage$MessageLevel;

    invoke-virtual {v1}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->TIP:Landroid/webkit/ConsoleMessage$MessageLevel;

    invoke-virtual {v1}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->WARNING:Landroid/webkit/ConsoleMessage$MessageLevel;

    invoke-virtual {v1}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lme/android/browser/Tab$3;->$SWITCH_TABLE$android$webkit$ConsoleMessage$MessageLevel:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lme/android/browser/Tab;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    .line 691
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lme/android/browser/Tab$3;ZLandroid/os/Message;)V
    .locals 0

    .prologue
    .line 693
    invoke-direct {p0, p1, p2}, Lme/android/browser/Tab$3;->createWindow(ZLandroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2(Lme/android/browser/Tab$3;)Lme/android/browser/Tab;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    return-object v0
.end method

.method private createWindow(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "dialog"    # Z
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 695
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/WebView$WebViewTransport;

    .line 696
    .local v1, "transport":Landroid/webkit/WebView$WebViewTransport;
    if-eqz p1, :cond_0

    .line 697
    iget-object v2, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    invoke-virtual {v2}, Lme/android/browser/Tab;->createSubWindow()Z

    .line 698
    iget-object v2, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v2, v2, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    iget-object v3, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    invoke-interface {v2, v3}, Lme/android/browser/WebViewController;->attachSubWindow(Lme/android/browser/Tab;)V

    .line 699
    iget-object v2, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mSubView:Landroid/webkit/WebView;
    invoke-static {v2}, Lme/android/browser/Tab;->access$15(Lme/android/browser/Tab;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 705
    :goto_0
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 706
    return-void

    .line 701
    :cond_0
    iget-object v2, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v2, v2, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    const/4 v3, 0x0

    .line 702
    iget-object v4, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    .line 701
    invoke-interface {v2, v3, v4, v5, v5}, Lme/android/browser/WebViewController;->openTab(Ljava/lang/String;Lme/android/browser/Tab;ZZ)Lme/android/browser/Tab;

    move-result-object v0

    .line 703
    .local v0, "newTab":Lme/android/browser/Tab;
    invoke-virtual {v0}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    goto :goto_0
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lme/android/browser/Tab;->access$10(Lme/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    invoke-interface {v0}, Lme/android/browser/WebViewController;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 974
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 984
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lme/android/browser/Tab;->access$10(Lme/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    invoke-interface {v0}, Lme/android/browser/WebViewController;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    .line 987
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
    .line 1004
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    invoke-interface {v0, p1}, Lme/android/browser/WebViewController;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 1005
    return-void
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "window"    # Landroid/webkit/WebView;

    .prologue
    .line 781
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mParent:Lme/android/browser/Tab;
    invoke-static {v0}, Lme/android/browser/Tab;->access$16(Lme/android/browser/Tab;)Lme/android/browser/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 783
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lme/android/browser/Tab;->access$10(Lme/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    iget-object v1, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mParent:Lme/android/browser/Tab;
    invoke-static {v1}, Lme/android/browser/Tab;->access$16(Lme/android/browser/Tab;)Lme/android/browser/Tab;

    move-result-object v1

    invoke-interface {v0, v1}, Lme/android/browser/WebViewController;->switchToTab(Lme/android/browser/Tab;)Z

    .line 786
    :cond_0
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    iget-object v1, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    invoke-interface {v0, v1}, Lme/android/browser/WebViewController;->closeTab(Lme/android/browser/Tab;)V

    .line 788
    :cond_1
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 5
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    const/4 v4, 0x1

    .line 925
    iget-object v2, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mInForeground:Z
    invoke-static {v2}, Lme/android/browser/Tab;->access$10(Lme/android/browser/Tab;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 927
    iget-object v2, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    invoke-virtual {v2, v4}, Lme/android/browser/Tab;->getErrorConsole(Z)Lme/android/browser/ErrorConsoleView;

    move-result-object v0

    .line 928
    .local v0, "errorConsole":Lme/android/browser/ErrorConsoleView;
    invoke-virtual {v0, p1}, Lme/android/browser/ErrorConsoleView;->addErrorMessage(Landroid/webkit/ConsoleMessage;)V

    .line 929
    iget-object v2, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v2, v2, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    invoke-interface {v2}, Lme/android/browser/WebViewController;->shouldShowErrorConsole()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 930
    invoke-virtual {v0}, Lme/android/browser/ErrorConsoleView;->getShowState()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 932
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lme/android/browser/ErrorConsoleView;->showConsole(I)V

    .line 937
    .end local v0    # "errorConsole":Lme/android/browser/ErrorConsoleView;
    :cond_0
    iget-object v2, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    invoke-virtual {v2}, Lme/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 961
    :goto_0
    return v4

    .line 939
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Console: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 940
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 941
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 939
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 943
    .local v1, "message":Ljava/lang/String;
    invoke-static {}, Lme/android/browser/Tab$3;->$SWITCH_TABLE$android$webkit$ConsoleMessage$MessageLevel()[I

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 957
    :pswitch_0
    const-string v2, "browser"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 945
    :pswitch_1
    const-string v2, "browser"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 948
    :pswitch_2
    const-string v2, "browser"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 951
    :pswitch_3
    const-string v2, "browser"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 954
    :pswitch_4
    const-string v2, "browser"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 943
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
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

    const v6, 0x7f080013

    const/4 v4, 0x1

    const v7, 0x1080027

    const/4 v3, 0x0

    .line 712
    iget-object v5, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mInForeground:Z
    invoke-static {v5}, Lme/android/browser/Tab;->access$10(Lme/android/browser/Tab;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 769
    :goto_0
    return v3

    .line 716
    :cond_0
    if-eqz p2, :cond_1

    iget-object v5, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mSubView:Landroid/webkit/WebView;
    invoke-static {v5}, Lme/android/browser/Tab;->access$15(Lme/android/browser/Tab;)Landroid/webkit/WebView;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 717
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v5, v5, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 718
    const v5, 0x7f080113

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 719
    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 720
    const v5, 0x7f080114

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 721
    invoke-virtual {v4, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 722
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 724
    :cond_1
    iget-object v5, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v5, v5, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    invoke-interface {v5}, Lme/android/browser/WebViewController;->getTabControl()Lme/android/browser/TabControl;

    move-result-object v5

    invoke-virtual {v5}, Lme/android/browser/TabControl;->canCreateNewTab()Z

    move-result v5

    if-nez v5, :cond_2

    .line 725
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v5, v5, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 726
    const v5, 0x7f080111

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 727
    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 728
    const v5, 0x7f080112

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 729
    invoke-virtual {v4, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 730
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 735
    :cond_2
    if-eqz p3, :cond_3

    .line 736
    invoke-direct {p0, p2, p4}, Lme/android/browser/Tab$3;->createWindow(ZLandroid/os/Message;)V

    move v3, v4

    .line 737
    goto :goto_0

    .line 742
    :cond_3
    new-instance v0, Lme/android/browser/Tab$3$1;

    invoke-direct {v0, p0, p2, p4}, Lme/android/browser/Tab$3$1;-><init>(Lme/android/browser/Tab$3;ZLandroid/os/Message;)V

    .line 751
    .local v0, "allowListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lme/android/browser/Tab$3$2;

    invoke-direct {v1, p0, p4}, Lme/android/browser/Tab$3$2;-><init>(Lme/android/browser/Tab$3;Landroid/os/Message;)V

    .line 759
    .local v1, "blockListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v6, v6, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 760
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 761
    const v6, 0x7f08010e

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 762
    const v6, 0x7f08010f

    invoke-virtual {v5, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 763
    const v6, 0x7f080110

    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 764
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 765
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 768
    .local v2, "d":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    move v3, v4

    .line 769
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
    .line 868
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mSettings:Lme/android/browser/BrowserSettings;
    invoke-static {v0}, Lme/android/browser/Tab;->access$13(Lme/android/browser/Tab;)Lme/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lme/android/browser/BrowserSettings;->getWebStorageSizeManager()Lme/android/browser/WebStorageSizeManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    .line 869
    invoke-virtual/range {v0 .. v9}, Lme/android/browser/WebStorageSizeManager;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 872
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lme/android/browser/Tab;->access$10(Lme/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mGeolocationPermissionsPrompt:Lme/android/browser/GeolocationPermissionsPrompt;
    invoke-static {v0}, Lme/android/browser/Tab;->access$18(Lme/android/browser/Tab;)Lme/android/browser/GeolocationPermissionsPrompt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mGeolocationPermissionsPrompt:Lme/android/browser/GeolocationPermissionsPrompt;
    invoke-static {v0}, Lme/android/browser/Tab;->access$18(Lme/android/browser/Tab;)Lme/android/browser/GeolocationPermissionsPrompt;

    move-result-object v0

    invoke-virtual {v0}, Lme/android/browser/GeolocationPermissionsPrompt;->hide()V

    .line 916
    :cond_0
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 1
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 903
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lme/android/browser/Tab;->access$10(Lme/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    invoke-virtual {v0}, Lme/android/browser/Tab;->getGeolocationPermissionsPrompt()Lme/android/browser/GeolocationPermissionsPrompt;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lme/android/browser/GeolocationPermissionsPrompt;->show(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 906
    :cond_0
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lme/android/browser/Tab;->access$10(Lme/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    invoke-interface {v0}, Lme/android/browser/WebViewController;->hideCustomView()V

    .line 851
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

    .line 792
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    invoke-static {v0, p2}, Lme/android/browser/Tab;->access$3(Lme/android/browser/Tab;I)V

    .line 793
    if-ne p2, v3, :cond_0

    .line 794
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    invoke-static {v0, v2}, Lme/android/browser/Tab;->access$1(Lme/android/browser/Tab;Z)V

    .line 796
    :cond_0
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    iget-object v1, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    invoke-interface {v0, v1}, Lme/android/browser/WebViewController;->onProgressChanged(Lme/android/browser/Tab;)V

    .line 797
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mUpdateThumbnail:Z
    invoke-static {v0}, Lme/android/browser/Tab;->access$17(Lme/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p2, v3, :cond_1

    .line 798
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    invoke-static {v0, v2}, Lme/android/browser/Tab;->access$2(Lme/android/browser/Tab;Z)V

    .line 800
    :cond_1
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 6
    .param p1, "spaceNeeded"    # J
    .param p3, "totalUsedQuota"    # J
    .param p5, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .prologue
    .line 887
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mSettings:Lme/android/browser/BrowserSettings;
    invoke-static {v0}, Lme/android/browser/Tab;->access$13(Lme/android/browser/Tab;)Lme/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lme/android/browser/BrowserSettings;->getWebStorageSizeManager()Lme/android/browser/WebStorageSizeManager;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 888
    invoke-virtual/range {v0 .. v5}, Lme/android/browser/WebStorageSizeManager;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 890
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 810
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iput-object p2, v0, Lme/android/browser/Tab$PageState;->mFavicon:Landroid/graphics/Bitmap;

    .line 811
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    iget-object v1, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    invoke-interface {v0, v1, p1, p2}, Lme/android/browser/WebViewController;->onFavicon(Lme/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 812
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 804
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iput-object p2, v0, Lme/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    .line 805
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    iget-object v1, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    invoke-interface {v0, v1, p2}, Lme/android/browser/WebViewController;->onReceivedTitle(Lme/android/browser/Tab;Ljava/lang/String;)V

    .line 806
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "precomposed"    # Z

    .prologue
    const/4 v5, 0x0

    .line 817
    iget-object v1, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v1, v1, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 820
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p3, :cond_0

    iget-object v1, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v1, v1, Lme/android/browser/Tab;->mTouchIconLoader:Lme/android/browser/DownloadTouchIcon;

    if-eqz v1, :cond_0

    .line 821
    iget-object v1, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v1, v1, Lme/android/browser/Tab;->mTouchIconLoader:Lme/android/browser/DownloadTouchIcon;

    invoke-virtual {v1, v5}, Lme/android/browser/DownloadTouchIcon;->cancel(Z)Z

    .line 822
    iget-object v1, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    const/4 v2, 0x0

    iput-object v2, v1, Lme/android/browser/Tab;->mTouchIconLoader:Lme/android/browser/DownloadTouchIcon;

    .line 825
    :cond_0
    iget-object v1, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v1, v1, Lme/android/browser/Tab;->mTouchIconLoader:Lme/android/browser/DownloadTouchIcon;

    if-nez v1, :cond_1

    .line 826
    iget-object v1, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    new-instance v2, Lme/android/browser/DownloadTouchIcon;

    iget-object v3, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    .line 827
    iget-object v4, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v4, v4, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v0, p1}, Lme/android/browser/DownloadTouchIcon;-><init>(Lme/android/browser/Tab;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/webkit/WebView;)V

    .line 826
    iput-object v2, v1, Lme/android/browser/Tab;->mTouchIconLoader:Lme/android/browser/DownloadTouchIcon;

    .line 828
    iget-object v1, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v1, v1, Lme/android/browser/Tab;->mTouchIconLoader:Lme/android/browser/DownloadTouchIcon;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v5

    invoke-virtual {v1, v2}, Lme/android/browser/DownloadTouchIcon;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 830
    :cond_1
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 774
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lme/android/browser/Tab;->access$10(Lme/android/browser/Tab;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 775
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    iget-object v1, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    invoke-interface {v0, v1}, Lme/android/browser/WebViewController;->switchToTab(Lme/android/browser/Tab;)Z

    .line 777
    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "requestedOrientation"    # I
    .param p3, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 844
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lme/android/browser/Tab;->access$10(Lme/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    iget-object v1, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    invoke-interface {v0, v1, p1, p2, p3}, Lme/android/browser/WebViewController;->showCustomView(Lme/android/browser/Tab;Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 846
    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 835
    iget-object v1, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v1, v1, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    invoke-interface {v1}, Lme/android/browser/WebViewController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 836
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 837
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-virtual {p0, p1, v1, p2}, Lme/android/browser/Tab$3;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 839
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
    .line 992
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lme/android/browser/Tab;->access$10(Lme/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    invoke-interface {v0, p1, p2, p3}, Lme/android/browser/WebViewController;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    :goto_0
    return-void

    .line 995
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

    .line 1010
    move-object v3, p1

    .line 1011
    .local v3, "msg":Landroid/os/Message;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v4, v4, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1012
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;

    iget-object v4, v4, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    .line 1013
    const-string v5, "layout_inflater"

    .line 1012
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1014
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040028

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1016
    .local v2, "layout":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1017
    const v5, 0x7f080013

    new-instance v6, Lme/android/browser/Tab$3$3;

    invoke-direct {v6, p0, v2, v3}, Lme/android/browser/Tab$3$3;-><init>(Lme/android/browser/Tab$3;Landroid/view/View;Landroid/os/Message;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1037
    const v5, 0x7f080012

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1038
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1039
    return-void
.end method
