.class Lme/android/browser/CrashRecoveryHandler$1;
.super Ljava/lang/Object;
.source "CrashRecoveryHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/CrashRecoveryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/CrashRecoveryHandler;


# direct methods
.method constructor <init>(Lme/android/browser/CrashRecoveryHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/CrashRecoveryHandler$1;->this$0:Lme/android/browser/CrashRecoveryHandler;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 120
    :try_start_0
    iget-object v2, p0, Lme/android/browser/CrashRecoveryHandler$1;->this$0:Lme/android/browser/CrashRecoveryHandler;

    # getter for: Lme/android/browser/CrashRecoveryHandler;->mController:Lme/android/browser/Controller;
    invoke-static {v2}, Lme/android/browser/CrashRecoveryHandler;->access$0(Lme/android/browser/CrashRecoveryHandler;)Lme/android/browser/Controller;

    move-result-object v2

    invoke-virtual {v2}, Lme/android/browser/Controller;->createSaveState()Landroid/os/Bundle;

    move-result-object v0

    .line 121
    .local v0, "state":Landroid/os/Bundle;
    iget-object v2, p0, Lme/android/browser/CrashRecoveryHandler$1;->this$0:Lme/android/browser/CrashRecoveryHandler;

    # getter for: Lme/android/browser/CrashRecoveryHandler;->mBackgroundHandler:Landroid/os/Handler;
    invoke-static {v2}, Lme/android/browser/CrashRecoveryHandler;->access$1(Lme/android/browser/CrashRecoveryHandler;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 124
    iget-object v2, p0, Lme/android/browser/CrashRecoveryHandler$1;->this$0:Lme/android/browser/CrashRecoveryHandler;

    # getter for: Lme/android/browser/CrashRecoveryHandler;->mForegroundHandler:Landroid/os/Handler;
    invoke-static {v2}, Lme/android/browser/CrashRecoveryHandler;->access$2(Lme/android/browser/CrashRecoveryHandler;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lme/android/browser/CrashRecoveryHandler$1;->this$0:Lme/android/browser/CrashRecoveryHandler;

    # getter for: Lme/android/browser/CrashRecoveryHandler;->mCreateState:Ljava/lang/Runnable;
    invoke-static {v3}, Lme/android/browser/CrashRecoveryHandler;->access$3(Lme/android/browser/CrashRecoveryHandler;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v0    # "state":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "BrowserCrashRecovery"

    const-string v3, "Failed to save state"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
