.class Lme/android/browser/OpenDownloadReceiver$1;
.super Ljava/lang/Object;
.source "OpenDownloadReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/OpenDownloadReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/OpenDownloadReceiver;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$id:J

.field private final synthetic val$result:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lme/android/browser/OpenDownloadReceiver;Landroid/content/Context;JLandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/OpenDownloadReceiver$1;->this$0:Lme/android/browser/OpenDownloadReceiver;

    iput-object p2, p0, Lme/android/browser/OpenDownloadReceiver$1;->val$context:Landroid/content/Context;

    iput-wide p3, p0, Lme/android/browser/OpenDownloadReceiver$1;->val$id:J

    iput-object p5, p0, Lme/android/browser/OpenDownloadReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lme/android/browser/OpenDownloadReceiver$1;->this$0:Lme/android/browser/OpenDownloadReceiver;

    iget-object v1, p0, Lme/android/browser/OpenDownloadReceiver$1;->val$context:Landroid/content/Context;

    iget-wide v2, p0, Lme/android/browser/OpenDownloadReceiver$1;->val$id:J

    # invokes: Lme/android/browser/OpenDownloadReceiver;->onReceiveAsync(Landroid/content/Context;J)V
    invoke-static {v0, v1, v2, v3}, Lme/android/browser/OpenDownloadReceiver;->access$0(Lme/android/browser/OpenDownloadReceiver;Landroid/content/Context;J)V

    .line 60
    iget-object v0, p0, Lme/android/browser/OpenDownloadReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 61
    return-void
.end method
