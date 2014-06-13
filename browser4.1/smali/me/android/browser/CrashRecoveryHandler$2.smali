.class Lme/android/browser/CrashRecoveryHandler$2;
.super Landroid/os/Handler;
.source "CrashRecoveryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/CrashRecoveryHandler;-><init>(Lme/android/browser/Controller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/CrashRecoveryHandler;


# direct methods
.method constructor <init>(Lme/android/browser/CrashRecoveryHandler;Landroid/os/Looper;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/CrashRecoveryHandler$2;->this$0:Lme/android/browser/CrashRecoveryHandler;

    .line 80
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 84
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 87
    .local v0, "saveState":Landroid/os/Bundle;
    iget-object v2, p0, Lme/android/browser/CrashRecoveryHandler$2;->this$0:Lme/android/browser/CrashRecoveryHandler;

    invoke-virtual {v2, v0}, Lme/android/browser/CrashRecoveryHandler;->writeState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 93
    .end local v0    # "saveState":Landroid/os/Bundle;
    :pswitch_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lme/android/browser/CrashRecoveryHandler$2;->this$0:Lme/android/browser/CrashRecoveryHandler;

    # getter for: Lme/android/browser/CrashRecoveryHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lme/android/browser/CrashRecoveryHandler;->access$4(Lme/android/browser/CrashRecoveryHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "browser_state.parcel"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    .local v1, "state":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 99
    .end local v1    # "state":Ljava/io/File;
    :pswitch_2
    iget-object v2, p0, Lme/android/browser/CrashRecoveryHandler$2;->this$0:Lme/android/browser/CrashRecoveryHandler;

    iget-object v3, p0, Lme/android/browser/CrashRecoveryHandler$2;->this$0:Lme/android/browser/CrashRecoveryHandler;

    # invokes: Lme/android/browser/CrashRecoveryHandler;->loadCrashState()Landroid/os/Bundle;
    invoke-static {v3}, Lme/android/browser/CrashRecoveryHandler;->access$5(Lme/android/browser/CrashRecoveryHandler;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v2, v3}, Lme/android/browser/CrashRecoveryHandler;->access$6(Lme/android/browser/CrashRecoveryHandler;Landroid/os/Bundle;)V

    .line 100
    iget-object v3, p0, Lme/android/browser/CrashRecoveryHandler$2;->this$0:Lme/android/browser/CrashRecoveryHandler;

    monitor-enter v3

    .line 101
    :try_start_0
    iget-object v2, p0, Lme/android/browser/CrashRecoveryHandler$2;->this$0:Lme/android/browser/CrashRecoveryHandler;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lme/android/browser/CrashRecoveryHandler;->access$7(Lme/android/browser/CrashRecoveryHandler;Z)V

    .line 102
    iget-object v2, p0, Lme/android/browser/CrashRecoveryHandler$2;->this$0:Lme/android/browser/CrashRecoveryHandler;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lme/android/browser/CrashRecoveryHandler;->access$8(Lme/android/browser/CrashRecoveryHandler;Z)V

    .line 103
    iget-object v2, p0, Lme/android/browser/CrashRecoveryHandler$2;->this$0:Lme/android/browser/CrashRecoveryHandler;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 100
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
