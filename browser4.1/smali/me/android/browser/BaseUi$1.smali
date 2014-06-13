.class Lme/android/browser/BaseUi$1;
.super Landroid/os/Handler;
.source "BaseUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/BaseUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/BaseUi;


# direct methods
.method constructor <init>(Lme/android/browser/BaseUi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/BaseUi$1;->this$0:Lme/android/browser/BaseUi;

    .line 823
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 827
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 828
    iget-object v0, p0, Lme/android/browser/BaseUi$1;->this$0:Lme/android/browser/BaseUi;

    invoke-virtual {v0}, Lme/android/browser/BaseUi;->suggestHideTitleBar()V

    .line 830
    :cond_0
    iget-object v0, p0, Lme/android/browser/BaseUi$1;->this$0:Lme/android/browser/BaseUi;

    invoke-virtual {v0, p1}, Lme/android/browser/BaseUi;->handleMessage(Landroid/os/Message;)V

    .line 831
    return-void
.end method
