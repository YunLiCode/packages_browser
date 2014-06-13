.class Lme/android/browser/NetworkStateHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/NetworkStateHandler;-><init>(Landroid/app/Activity;Lme/android/browser/Controller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/NetworkStateHandler;


# direct methods
.method constructor <init>(Lme/android/browser/NetworkStateHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/NetworkStateHandler$1;->this$0:Lme/android/browser/NetworkStateHandler;

    .line 61
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 65
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 64
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    const-string v4, "networkInfo"

    .line 67
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 69
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "typeName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "subtypeName":Ljava/lang/String;
    iget-object v6, p0, Lme/android/browser/NetworkStateHandler$1;->this$0:Lme/android/browser/NetworkStateHandler;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 72
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 71
    :goto_0
    # invokes: Lme/android/browser/NetworkStateHandler;->sendNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v4}, Lme/android/browser/NetworkStateHandler;->access$0(Lme/android/browser/NetworkStateHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lme/android/browser/BrowserSettings;->getInstance()Lme/android/browser/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lme/android/browser/BrowserSettings;->updateConnectionType()V

    .line 76
    const-string v4, "noConnectivity"

    .line 75
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 78
    .local v1, "noConnection":Z
    iget-object v6, p0, Lme/android/browser/NetworkStateHandler$1;->this$0:Lme/android/browser/NetworkStateHandler;

    if-eqz v1, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v6, v4}, Lme/android/browser/NetworkStateHandler;->onNetworkToggle(Z)V

    .line 80
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .end local v1    # "noConnection":Z
    .end local v2    # "subtypeName":Ljava/lang/String;
    .end local v3    # "typeName":Ljava/lang/String;
    :cond_0
    return-void

    .line 72
    .restart local v0    # "info":Landroid/net/NetworkInfo;
    .restart local v2    # "subtypeName":Ljava/lang/String;
    .restart local v3    # "typeName":Ljava/lang/String;
    :cond_1
    const-string v4, ""

    goto :goto_0

    .line 78
    .restart local v1    # "noConnection":Z
    :cond_2
    const/4 v4, 0x1

    goto :goto_1
.end method
