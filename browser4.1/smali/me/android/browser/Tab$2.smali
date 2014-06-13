.class Lme/android/browser/Tab$2;
.super Landroid/webkit/WebViewClient;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDontResend:Landroid/os/Message;

.field private mResend:Landroid/os/Message;

.field final synthetic this$0:Lme/android/browser/Tab;


# direct methods
.method constructor <init>(Lme/android/browser/Tab;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    .line 325
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lme/android/browser/Tab$2;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lme/android/browser/Tab$2;->mResend:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1(Lme/android/browser/Tab$2;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lme/android/browser/Tab$2;->mResend:Landroid/os/Message;

    return-void
.end method

.method static synthetic access$2(Lme/android/browser/Tab$2;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lme/android/browser/Tab$2;->mDontResend:Landroid/os/Message;

    return-void
.end method

.method static synthetic access$3(Lme/android/browser/Tab$2;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lme/android/browser/Tab$2;->mDontResend:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$4(Lme/android/browser/Tab$2;)Lme/android/browser/Tab;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    return-object v0
.end method

.method private providersDiffer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "otherUrl"    # Ljava/lang/String;

    .prologue
    .line 330
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 331
    .local v0, "uri1":Landroid/net/Uri;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 332
    .local v1, "uri2":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 500
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    iget-object v1, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    invoke-interface {v0, v1, p3}, Lme/android/browser/WebViewController;->doUpdateVisitedHistory(Lme/android/browser/Tab;Z)V

    .line 501
    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    .prologue
    .line 445
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lme/android/browser/Tab;->access$10(Lme/android/browser/Tab;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 489
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lme/android/browser/Tab$2;->mDontResend:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 450
    const-string v0, "Tab"

    const-string v1, "onFormResubmission should not be called again while dialog is still up"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 455
    :cond_1
    iput-object p2, p0, Lme/android/browser/Tab$2;->mDontResend:Landroid/os/Message;

    .line 456
    iput-object p3, p0, Lme/android/browser/Tab$2;->mResend:Landroid/os/Message;

    .line 457
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    iget-object v1, v1, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 458
    const v1, 0x7f080100

    .line 457
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 459
    const v1, 0x7f080101

    .line 458
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 460
    const v1, 0x7f080013

    .line 461
    new-instance v2, Lme/android/browser/Tab$2$1;

    invoke-direct {v2, p0}, Lme/android/browser/Tab$2$1;-><init>(Lme/android/browser/Tab$2;)V

    .line 460
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 470
    const v1, 0x7f080012

    .line 471
    new-instance v2, Lme/android/browser/Tab$2$2;

    invoke-direct {v2, p0}, Lme/android/browser/Tab$2$2;-><init>(Lme/android/browser/Tab$2;)V

    .line 470
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 480
    new-instance v1, Lme/android/browser/Tab$2$3;

    invoke-direct {v1, p0}, Lme/android/browser/Tab$2$3;-><init>(Lme/android/browser/Tab$2;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 488
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 403
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 406
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iget-object v0, v0, Lme/android/browser/Tab$PageState;->mSecurityState:Lme/android/browser/Tab$SecurityState;

    sget-object v1, Lme/android/browser/Tab$SecurityState;->SECURITY_STATE_SECURE:Lme/android/browser/Tab$SecurityState;

    if-ne v0, v1, :cond_0

    .line 408
    invoke-static {p2}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    invoke-static {p2}, Landroid/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    sget-object v1, Lme/android/browser/Tab$SecurityState;->SECURITY_STATE_MIXED:Lme/android/browser/Tab$SecurityState;

    iput-object v1, v0, Lme/android/browser/Tab$PageState;->mSecurityState:Lme/android/browser/Tab$SecurityState;

    .line 414
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 375
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    invoke-virtual {v0}, Lme/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mLoadStartTime:J
    invoke-static {v2}, Lme/android/browser/Tab;->access$8(Lme/android/browser/Tab;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 376
    invoke-static {p2, v0, v1}, Lme/android/browser/LogTag;->logPageFinishedLoading(Ljava/lang/String;J)V

    .line 379
    :cond_0
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    # invokes: Lme/android/browser/Tab;->syncCurrentState(Landroid/webkit/WebView;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lme/android/browser/Tab;->access$9(Lme/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    iget-object v1, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    invoke-interface {v0, v1}, Lme/android/browser/WebViewController;->onPageFinished(Lme/android/browser/Tab;)V

    .line 381
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 337
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    invoke-static {v0, v1}, Lme/android/browser/Tab;->access$1(Lme/android/browser/Tab;Z)V

    .line 338
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    invoke-static {v0, v1}, Lme/android/browser/Tab;->access$2(Lme/android/browser/Tab;Z)V

    .line 339
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lme/android/browser/Tab;->access$3(Lme/android/browser/Tab;I)V

    .line 340
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    new-instance v1, Lme/android/browser/Tab$PageState;

    iget-object v2, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    iget-object v2, v2, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    .line 341
    invoke-virtual {p1}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v3

    invoke-direct {v1, v2, v3, p2, p3}, Lme/android/browser/Tab$PageState;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 340
    iput-object v1, v0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    .line 342
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lme/android/browser/Tab;->access$4(Lme/android/browser/Tab;J)V

    .line 347
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mTouchIconLoader:Lme/android/browser/DownloadTouchIcon;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mTouchIconLoader:Lme/android/browser/DownloadTouchIcon;

    iput-object v4, v0, Lme/android/browser/DownloadTouchIcon;->mTab:Lme/android/browser/Tab;

    .line 349
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    iput-object v4, v0, Lme/android/browser/Tab;->mTouchIconLoader:Lme/android/browser/DownloadTouchIcon;

    .line 353
    :cond_0
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mErrorConsole:Lme/android/browser/ErrorConsoleView;
    invoke-static {v0}, Lme/android/browser/Tab;->access$5(Lme/android/browser/Tab;)Lme/android/browser/ErrorConsoleView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mErrorConsole:Lme/android/browser/ErrorConsoleView;
    invoke-static {v0}, Lme/android/browser/Tab;->access$5(Lme/android/browser/Tab;)Lme/android/browser/ErrorConsoleView;

    move-result-object v0

    invoke-virtual {v0}, Lme/android/browser/ErrorConsoleView;->clearErrorMessages()V

    .line 355
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    invoke-interface {v0}, Lme/android/browser/WebViewController;->shouldShowErrorConsole()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mErrorConsole:Lme/android/browser/ErrorConsoleView;
    invoke-static {v0}, Lme/android/browser/Tab;->access$5(Lme/android/browser/Tab;)Lme/android/browser/ErrorConsoleView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lme/android/browser/ErrorConsoleView;->showConsole(I)V

    .line 361
    :cond_1
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mDeviceAccountLogin:Lme/android/browser/DeviceAccountLogin;
    invoke-static {v0}, Lme/android/browser/Tab;->access$6(Lme/android/browser/Tab;)Lme/android/browser/DeviceAccountLogin;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 362
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mDeviceAccountLogin:Lme/android/browser/DeviceAccountLogin;
    invoke-static {v0}, Lme/android/browser/Tab;->access$6(Lme/android/browser/Tab;)Lme/android/browser/DeviceAccountLogin;

    move-result-object v0

    invoke-virtual {v0}, Lme/android/browser/DeviceAccountLogin;->cancel()V

    .line 363
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    invoke-static {v0, v4}, Lme/android/browser/Tab;->access$7(Lme/android/browser/Tab;Lme/android/browser/DeviceAccountLogin;)V

    .line 364
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    iget-object v1, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    invoke-interface {v0, v1}, Lme/android/browser/WebViewController;->hideAutoLogin(Lme/android/browser/Tab;)V

    .line 368
    :cond_2
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    iget-object v1, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    invoke-interface {v0, v1, p1, p3}, Lme/android/browser/WebViewController;->onPageStarted(Lme/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 370
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    invoke-virtual {v0}, Lme/android/browser/Tab;->updateBookmarkedStatus()V

    .line 371
    return-void
.end method

.method public onProceededAfterSslError(Landroid/webkit/WebView;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 568
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    # invokes: Lme/android/browser/Tab;->handleProceededAfterSslError(Landroid/net/http/SslError;)V
    invoke-static {v0, p2}, Lme/android/browser/Tab;->access$14(Lme/android/browser/Tab;Landroid/net/http/SslError;)V

    .line 569
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequestHandler;Ljava/lang/String;)V
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/ClientCertRequestHandler;
    .param p3, "host_and_port"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 577
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lme/android/browser/Tab;->access$10(Lme/android/browser/Tab;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    invoke-virtual {p2}, Landroid/webkit/ClientCertRequestHandler;->ignore()V

    .line 607
    :goto_0
    return-void

    .line 581
    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 584
    .local v7, "colon":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_1

    .line 585
    move-object v4, p3

    .line 586
    .local v4, "host":Ljava/lang/String;
    const/4 v5, -0x1

    .line 598
    .local v5, "port":I
    :goto_1
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    invoke-interface {v0}, Lme/android/browser/WebViewController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lme/android/browser/Tab$2$8;

    invoke-direct {v1, p0, p2}, Lme/android/browser/Tab$2$8;-><init>(Lme/android/browser/Tab$2;Landroid/webkit/ClientCertRequestHandler;)V

    move-object v3, v2

    move-object v6, v2

    .line 597
    invoke-static/range {v0 .. v6}, Landroid/security/KeyChain;->choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 588
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "port":I
    :cond_1
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 590
    .local v9, "portString":Ljava/lang/String;
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 591
    .restart local v5    # "port":I
    const/4 v0, 0x0

    invoke-virtual {p3, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .restart local v4    # "host":Ljava/lang/String;
    goto :goto_1

    .line 592
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "port":I
    :catch_0
    move-exception v8

    .line 593
    .local v8, "e":Ljava/lang/NumberFormatException;
    move-object v4, p3

    .line 594
    .restart local v4    # "host":Ljava/lang/String;
    const/4 v5, -0x1

    .restart local v5    # "port":I
    goto :goto_1
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 423
    const/4 v0, -0x2

    if-eq p2, v0, :cond_0

    .line 424
    const/4 v0, -0x6

    if-eq p2, v0, :cond_0

    .line 425
    const/16 v0, -0xc

    if-eq p2, v0, :cond_0

    .line 426
    const/16 v0, -0xa

    if-eq p2, v0, :cond_0

    .line 427
    const/16 v0, -0xd

    if-eq p2, v0, :cond_0

    .line 428
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    # invokes: Lme/android/browser/Tab;->queueError(ILjava/lang/String;)V
    invoke-static {v0, p2, p3}, Lme/android/browser/Tab;->access$11(Lme/android/browser/Tab;ILjava/lang/String;)V

    .line 431
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    invoke-virtual {v0}, Lme/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    const-string v0, "Tab"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceivedError "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 433
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 432
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_0
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 620
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    iget-object v1, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lme/android/browser/WebViewController;->onReceivedHttpAuthRequest(Lme/android/browser/Tab;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "account"    # Ljava/lang/String;
    .param p4, "args"    # Ljava/lang/String;

    .prologue
    .line 652
    new-instance v0, Lme/android/browser/DeviceAccountLogin;

    iget-object v1, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    iget-object v1, v1, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    invoke-interface {v1}, Lme/android/browser/WebViewController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    iget-object v3, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    iget-object v3, v3, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    invoke-direct {v0, v1, p1, v2, v3}, Lme/android/browser/DeviceAccountLogin;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Lme/android/browser/Tab;Lme/android/browser/WebViewController;)V

    .line 653
    invoke-virtual {v0, p2, p3, p4}, Lme/android/browser/DeviceAccountLogin;->handleLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 509
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lme/android/browser/Tab;->access$10(Lme/android/browser/Tab;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 511
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    sget-object v1, Lme/android/browser/Tab$SecurityState;->SECURITY_STATE_NOT_SECURE:Lme/android/browser/Tab$SecurityState;

    # invokes: Lme/android/browser/Tab;->setSecurityState(Lme/android/browser/Tab$SecurityState;)V
    invoke-static {v0, v1}, Lme/android/browser/Tab;->access$12(Lme/android/browser/Tab;Lme/android/browser/Tab$SecurityState;)V

    .line 558
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mSettings:Lme/android/browser/BrowserSettings;
    invoke-static {v0}, Lme/android/browser/Tab;->access$13(Lme/android/browser/Tab;)Lme/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lme/android/browser/BrowserSettings;->showSecurityWarnings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    iget-object v1, v1, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 516
    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 517
    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 518
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 519
    const v1, 0x7f080019

    .line 520
    new-instance v2, Lme/android/browser/Tab$2$4;

    invoke-direct {v2, p0, p2, p3}, Lme/android/browser/Tab$2$4;-><init>(Lme/android/browser/Tab$2;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 519
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 528
    const v1, 0x7f08001b

    .line 529
    new-instance v2, Lme/android/browser/Tab$2$5;

    invoke-direct {v2, p0, p1, p2, p3}, Lme/android/browser/Tab$2$5;-><init>(Lme/android/browser/Tab$2;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 528
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 537
    const v1, 0x7f08001c

    .line 538
    new-instance v2, Lme/android/browser/Tab$2$6;

    invoke-direct {v2, p0}, Lme/android/browser/Tab$2$6;-><init>(Lme/android/browser/Tab$2;)V

    .line 537
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 546
    new-instance v1, Lme/android/browser/Tab$2$7;

    invoke-direct {v1, p0, p2}, Lme/android/browser/Tab$2$7;-><init>(Lme/android/browser/Tab$2;Landroid/webkit/SslErrorHandler;)V

    .line 545
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 554
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 556
    :cond_1
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    goto :goto_0
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 641
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lme/android/browser/Tab;->access$10(Lme/android/browser/Tab;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    invoke-interface {v0, p2}, Lme/android/browser/WebViewController;->onUnhandledKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 627
    iget-object v1, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    iget-object v1, v1, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    .line 626
    invoke-static {v1, p2}, Lme/android/browser/homepages/HomeProvider;->shouldInterceptRequest(Landroid/content/Context;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 628
    .local v0, "res":Landroid/webkit/WebResourceResponse;
    return-object v0
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 633
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lme/android/browser/Tab;->access$10(Lme/android/browser/Tab;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    const/4 v0, 0x0

    .line 636
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    invoke-interface {v0, p2}, Lme/android/browser/WebViewController;->shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 386
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lme/android/browser/Tab;->access$10(Lme/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    iget-object v1, p0, Lme/android/browser/Tab$2;->this$0:Lme/android/browser/Tab;

    invoke-interface {v0, v1, p1, p2}, Lme/android/browser/WebViewController;->shouldOverrideUrlLoading(Lme/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    .line 390
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
