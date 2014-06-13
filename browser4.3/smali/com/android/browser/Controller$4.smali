.class Lcom/android/browser/Controller$4;
.super Landroid/os/Handler;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Controller;->startHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Controller;


# direct methods
.method constructor <init>(Lcom/android/browser/Controller;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 479
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 481
    :sswitch_0
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    sget-object v2, Lcom/android/browser/UI$ComboViews;->Bookmarks:Lcom/android/browser/UI$ComboViews;

    invoke-virtual {v0, v2}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Lcom/android/browser/UI$ComboViews;)V

    goto :goto_0

    .line 485
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "url"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 486
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "title"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 487
    .local v11, "title":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "src"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 488
    .local v9, "src":Ljava/lang/String;
    const-string v0, ""

    if-ne v1, v0, :cond_1

    move-object v1, v9

    .line 489
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/util/HashMap;

    .line 493
    .local v7, "focusNodeMap":Ljava/util/HashMap;
    const-string v0, "webview"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/webkit/WebView;

    .line 495
    .local v12, "view":Landroid/webkit/WebView;
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-ne v0, v12, :cond_0

    .line 498
    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 500
    :sswitch_2
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->loadUrlFromContext(Ljava/lang/String;)V

    goto :goto_0

    .line 503
    :sswitch_3
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v0, v9}, Lcom/android/browser/Controller;->loadUrlFromContext(Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :sswitch_4
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    # getter for: Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;
    invoke-static {v0}, Lcom/android/browser/Controller;->access$000(Lcom/android/browser/Controller;)Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v8

    .line 507
    .local v8, "parent":Lcom/android/browser/Tab;
    iget-object v3, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    # getter for: Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;
    invoke-static {v0}, Lcom/android/browser/Controller;->access$300(Lcom/android/browser/Controller;)Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->openInBackground()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {v3, v1, v8, v0, v2}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;Lcom/android/browser/Tab;ZZ)Lcom/android/browser/Tab;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 511
    .end local v8    # "parent":Lcom/android/browser/Tab;
    :sswitch_5
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    # invokes: Lcom/android/browser/Controller;->copy(Ljava/lang/CharSequence;)V
    invoke-static {v0, v1}, Lcom/android/browser/Controller;->access$400(Lcom/android/browser/Controller;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 515
    :sswitch_6
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    # getter for: Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/browser/Controller;->access$200(Lcom/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v12}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v6

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/browser/DownloadHandler;->onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 524
    .end local v1    # "url":Ljava/lang/String;
    .end local v7    # "focusNodeMap":Ljava/util/HashMap;
    .end local v9    # "src":Ljava/lang/String;
    .end local v11    # "title":Ljava/lang/String;
    .end local v12    # "view":Landroid/webkit/WebView;
    :sswitch_7
    iget-object v2, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/browser/Controller;->loadUrlFromContext(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 528
    :sswitch_8
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->stopLoading()V

    goto/16 :goto_0

    .line 532
    :sswitch_9
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    # getter for: Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/browser/Controller;->access$500(Lcom/android/browser/Controller;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    # getter for: Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/browser/Controller;->access$500(Lcom/android/browser/Controller;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    # getter for: Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/browser/Controller;->access$500(Lcom/android/browser/Controller;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 537
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    # getter for: Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;
    invoke-static {v0}, Lcom/android/browser/Controller;->access$000(Lcom/android/browser/Controller;)Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->stopAllLoading()V

    goto/16 :goto_0

    .line 542
    :sswitch_a
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/browser/Tab;

    .line 543
    .local v10, "tab":Lcom/android/browser/Tab;
    if-eqz v10, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    # invokes: Lcom/android/browser/Controller;->updateScreenshot(Lcom/android/browser/Tab;)V
    invoke-static {v0, v10}, Lcom/android/browser/Controller;->access$600(Lcom/android/browser/Controller;Lcom/android/browser/Tab;)V

    goto/16 :goto_0

    .line 479
    nop

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_1
        0x6b -> :sswitch_9
        0x6c -> :sswitch_a
        0xc9 -> :sswitch_0
        0x3e9 -> :sswitch_7
        0x3ea -> :sswitch_8
    .end sparse-switch

    .line 498
    :sswitch_data_1
    .sparse-switch
        0x7f0d0021 -> :sswitch_2
        0x7f0d00d3 -> :sswitch_4
        0x7f0d00d4 -> :sswitch_6
        0x7f0d00d5 -> :sswitch_5
        0x7f0d00d7 -> :sswitch_6
        0x7f0d00d8 -> :sswitch_3
    .end sparse-switch
.end method
