.class public Lme/android/browser/PreloadRequestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PreloadRequestReceiver.java"


# static fields
.field private static final ACTION_PRELOAD:Ljava/lang/String; = "android.intent.action.PRELOAD"

.field static final EXTRA_PRELOAD_DISCARD:Ljava/lang/String; = "preload_discard"

.field static final EXTRA_PRELOAD_ID:Ljava/lang/String; = "preload_id"

.field static final EXTRA_SEARCHBOX_CANCEL:Ljava/lang/String; = "searchbox_cancel"

.field static final EXTRA_SEARCHBOX_SETQUERY:Ljava/lang/String; = "searchbox_query"

.field private static final LOGD_ENABLED:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "browser.preloader"


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handlePreload(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Lme/android/browser/UrlUtils;->smartUrlFilter(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, "url":Ljava/lang/String;
    const-string v7, "preload_id"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "id":Ljava/lang/String;
    const/4 v0, 0x0

    .line 100
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v7, "preload_discard"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 106
    invoke-static {}, Lme/android/browser/Preloader;->getInstance()Lme/android/browser/Preloader;

    move-result-object v7

    invoke-virtual {v7, v1}, Lme/android/browser/Preloader;->discardPreload(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_2
    const-string v7, "searchbox_cancel"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 109
    invoke-static {}, Lme/android/browser/Preloader;->getInstance()Lme/android/browser/Preloader;

    move-result-object v7

    invoke-virtual {v7, v1}, Lme/android/browser/Preloader;->cancelSearchBoxPreload(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_3
    if-eqz v6, :cond_4

    const-string v7, "http"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 113
    const-string v7, "com.android.browser.headers"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 114
    .local v4, "pairs":Landroid/os/Bundle;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 115
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 116
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 117
    .restart local v0    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 123
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "pairs":Landroid/os/Bundle;
    :cond_4
    const-string v7, "searchbox_query"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, "sbQuery":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 129
    invoke-static {}, Lme/android/browser/Preloader;->getInstance()Lme/android/browser/Preloader;

    move-result-object v7

    invoke-virtual {v7, v1, v6, v0, v5}, Lme/android/browser/Preloader;->handlePreloadRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    .end local v5    # "sbQuery":Ljava/lang/String;
    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "pairs":Landroid/os/Bundle;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 119
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private isOnWifi(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-object v1, p0, Lme/android/browser/PreloadRequestReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    .line 73
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 72
    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lme/android/browser/PreloadRequestReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 75
    :cond_0
    iget-object v1, p0, Lme/android/browser/PreloadRequestReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 76
    .local v0, "ni":Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    move v1, v2

    .line 92
    :goto_0
    return v1

    .line 79
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v1, v2

    .line 92
    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 86
    goto :goto_0

    .line 90
    :pswitch_2
    const/4 v1, 0x1

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isPreloadEnabledOnCurrentNetwork(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-static {}, Lme/android/browser/BrowserSettings;->getInstance()Lme/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lme/android/browser/BrowserSettings;->getPreloadEnabled()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "preload":Ljava/lang/String;
    invoke-static {p1}, Lme/android/browser/BrowserSettings;->getPreloadAlwaysPreferenceString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    .line 61
    :cond_0
    invoke-static {p1}, Lme/android/browser/BrowserSettings;->getPreloadOnWifiOnlyPreferenceString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    invoke-direct {p0, p1}, Lme/android/browser/PreloadRequestReceiver;->isOnWifi(Landroid/content/Context;)Z

    move-result v0

    .line 64
    .local v0, "onWifi":Z
    goto :goto_0

    .line 66
    .end local v0    # "onWifi":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lme/android/browser/PreloadRequestReceiver;->isPreloadEnabledOnCurrentNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PRELOAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0, p1, p2}, Lme/android/browser/PreloadRequestReceiver;->handlePreload(Landroid/content/Context;Landroid/content/Intent;)V

    .line 54
    :cond_0
    return-void
.end method
