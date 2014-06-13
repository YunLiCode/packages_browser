.class Lme/android/browser/SnapshotBar$1;
.super Landroid/os/Handler;
.source "SnapshotBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/SnapshotBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/SnapshotBar;


# direct methods
.method constructor <init>(Lme/android/browser/SnapshotBar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/SnapshotBar$1;->this$0:Lme/android/browser/SnapshotBar;

    .line 73
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lme/android/browser/SnapshotBar$1;->this$0:Lme/android/browser/SnapshotBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/android/browser/SnapshotBar;->access$0(Lme/android/browser/SnapshotBar;Z)V

    .line 78
    iget-object v0, p0, Lme/android/browser/SnapshotBar$1;->this$0:Lme/android/browser/SnapshotBar;

    # invokes: Lme/android/browser/SnapshotBar;->showTitle()V
    invoke-static {v0}, Lme/android/browser/SnapshotBar;->access$1(Lme/android/browser/SnapshotBar;)V

    .line 79
    iget-object v0, p0, Lme/android/browser/SnapshotBar$1;->this$0:Lme/android/browser/SnapshotBar;

    # getter for: Lme/android/browser/SnapshotBar;->mTitleBar:Lme/android/browser/TitleBar;
    invoke-static {v0}, Lme/android/browser/SnapshotBar;->access$2(Lme/android/browser/SnapshotBar;)Lme/android/browser/TitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lme/android/browser/TitleBar;->getUi()Lme/android/browser/BaseUi;

    move-result-object v0

    invoke-virtual {v0}, Lme/android/browser/BaseUi;->showTitleBarForDuration()V

    .line 81
    :cond_0
    return-void
.end method
