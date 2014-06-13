.class Lme/android/browser/Controller$4;
.super Landroid/os/Handler;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/Controller;->startHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/Controller;


# direct methods
.method constructor <init>(Lme/android/browser/Controller;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/Controller$4;->this$0:Lme/android/browser/Controller;

    .line 474
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 478
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 480
    :sswitch_0
    iget-object v0, p0, Lme/android/browser/Controller$4;->this$0:Lme/android/browser/Controller;

    sget-object v2, Lme/android/browser/UI$ComboViews;->Bookmarks:Lme/android/browser/UI$ComboViews;

    invoke-virtual {v0, v2}, Lme/android/browser/Controller;->bookmarksOrHistoryPicker(Lme/android/browser/UI$ComboViews;)V

    goto :goto_0

    .line 484
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "url"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 485
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "title"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 486
    .local v10, "title":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "src"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 487
    .local v8, "src":Ljava/lang/String;
    const-string v0, ""

    if-ne v1, v0, :cond_1

    move-object v1, v8

    .line 488
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashMap;

    .line 492
    .local v6, "focusNodeMap":Ljava/util/HashMap;
    const-string v0, "webview"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/webkit/WebView;

    .line 494
    .local v11, "view":Landroid/webkit/WebView;
    iget-object v0, p0, Lme/android/browser/Controller$4;->this$0:Lme/android/browser/Controller;

    invoke-virtual {v0}, Lme/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-ne v0, v11, :cond_0

    .line 497
    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 499
    :sswitch_2
    iget-object v0, p0, Lme/android/browser/Controller$4;->this$0:Lme/android/browser/Controller;

    invoke-virtual {v0, v1}, Lme/android/browser/Controller;->loadUrlFromContext(Ljava/lang/String;)V

    goto :goto_0

    .line 502
    :sswitch_3
    iget-object v0, p0, Lme/android/browser/Controller$4;->this$0:Lme/android/browser/Controller;

    invoke-virtual {v0, v8}, Lme/android/browser/Controller;->loadUrlFromContext(Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :sswitch_4
    iget-object v0, p0, Lme/android/browser/Controller$4;->this$0:Lme/android/browser/Controller;

    # getter for: Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;
    invoke-static {v0}, Lme/android/browser/Controller;->access$3(Lme/android/browser/Controller;)Lme/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v7

    .line 506
    .local v7, "parent":Lme/android/browser/Tab;
    iget-object v2, p0, Lme/android/browser/Controller$4;->this$0:Lme/android/browser/Controller;

    .line 507
    iget-object v0, p0, Lme/android/browser/Controller$4;->this$0:Lme/android/browser/Controller;

    # getter for: Lme/android/browser/Controller;->mSettings:Lme/android/browser/BrowserSettings;
    invoke-static {v0}, Lme/android/browser/Controller;->access$5(Lme/android/browser/Controller;)Lme/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lme/android/browser/BrowserSettings;->openInBackground()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 506
    :goto_1
    invoke-virtual {v2, v1, v7, v0, v3}, Lme/android/browser/Controller;->openTab(Ljava/lang/String;Lme/android/browser/Tab;ZZ)Lme/android/browser/Tab;

    goto :goto_0

    :cond_2
    move v0, v3

    .line 507
    goto :goto_1

    .line 510
    .end local v7    # "parent":Lme/android/browser/Tab;
    :sswitch_5
    iget-object v0, p0, Lme/android/browser/Controller$4;->this$0:Lme/android/browser/Controller;

    # invokes: Lme/android/browser/Controller;->copy(Ljava/lang/CharSequence;)V
    invoke-static {v0, v1}, Lme/android/browser/Controller;->access$2(Lme/android/browser/Controller;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 515
    :sswitch_6
    iget-object v0, p0, Lme/android/browser/Controller$4;->this$0:Lme/android/browser/Controller;

    # getter for: Lme/android/browser/Controller;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lme/android/browser/Controller;->access$0(Lme/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v0

    .line 516
    invoke-virtual {v11}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v5

    move-object v3, v2

    move-object v4, v2

    .line 514
    invoke-static/range {v0 .. v5}, Lme/android/browser/DownloadHandler;->onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 523
    .end local v1    # "url":Ljava/lang/String;
    .end local v6    # "focusNodeMap":Ljava/util/HashMap;
    .end local v8    # "src":Ljava/lang/String;
    .end local v10    # "title":Ljava/lang/String;
    .end local v11    # "view":Landroid/webkit/WebView;
    :sswitch_7
    iget-object v2, p0, Lme/android/browser/Controller$4;->this$0:Lme/android/browser/Controller;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lme/android/browser/Controller;->loadUrlFromContext(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 527
    :sswitch_8
    iget-object v0, p0, Lme/android/browser/Controller$4;->this$0:Lme/android/browser/Controller;

    invoke-virtual {v0}, Lme/android/browser/Controller;->stopLoading()V

    goto/16 :goto_0

    .line 531
    :sswitch_9
    iget-object v0, p0, Lme/android/browser/Controller$4;->this$0:Lme/android/browser/Controller;

    # getter for: Lme/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lme/android/browser/Controller;->access$6(Lme/android/browser/Controller;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/android/browser/Controller$4;->this$0:Lme/android/browser/Controller;

    # getter for: Lme/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lme/android/browser/Controller;->access$6(Lme/android/browser/Controller;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lme/android/browser/Controller$4;->this$0:Lme/android/browser/Controller;

    # getter for: Lme/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lme/android/browser/Controller;->access$6(Lme/android/browser/Controller;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 536
    iget-object v0, p0, Lme/android/browser/Controller$4;->this$0:Lme/android/browser/Controller;

    # getter for: Lme/android/browser/Controller;->mTabControl:Lme/android/browser/TabControl;
    invoke-static {v0}, Lme/android/browser/Controller;->access$3(Lme/android/browser/Controller;)Lme/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lme/android/browser/TabControl;->stopAllLoading()V

    goto/16 :goto_0

    .line 541
    :sswitch_a
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lme/android/browser/Tab;

    .line 542
    .local v9, "tab":Lme/android/browser/Tab;
    if-eqz v9, :cond_0

    .line 543
    iget-object v0, p0, Lme/android/browser/Controller$4;->this$0:Lme/android/browser/Controller;

    # invokes: Lme/android/browser/Controller;->updateScreenshot(Lme/android/browser/Tab;)V
    invoke-static {v0, v9}, Lme/android/browser/Controller;->access$7(Lme/android/browser/Controller;Lme/android/browser/Tab;)V

    goto/16 :goto_0

    .line 478
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

    .line 497
    :sswitch_data_1
    .sparse-switch
        0x7f0d0021 -> :sswitch_2
        0x7f0d00d2 -> :sswitch_4
        0x7f0d00d3 -> :sswitch_6
        0x7f0d00d4 -> :sswitch_5
        0x7f0d00d6 -> :sswitch_6
        0x7f0d00d7 -> :sswitch_3
    .end sparse-switch
.end method
