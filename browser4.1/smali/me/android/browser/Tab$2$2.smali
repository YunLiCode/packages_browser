.class Lme/android/browser/Tab$2$2;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/Tab$2;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lme/android/browser/Tab$2;


# direct methods
.method constructor <init>(Lme/android/browser/Tab$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/Tab$2$2;->this$1:Lme/android/browser/Tab$2;

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 474
    iget-object v0, p0, Lme/android/browser/Tab$2$2;->this$1:Lme/android/browser/Tab$2;

    # getter for: Lme/android/browser/Tab$2;->mDontResend:Landroid/os/Message;
    invoke-static {v0}, Lme/android/browser/Tab$2;->access$3(Lme/android/browser/Tab$2;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lme/android/browser/Tab$2$2;->this$1:Lme/android/browser/Tab$2;

    # getter for: Lme/android/browser/Tab$2;->mDontResend:Landroid/os/Message;
    invoke-static {v0}, Lme/android/browser/Tab$2;->access$3(Lme/android/browser/Tab$2;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 476
    iget-object v0, p0, Lme/android/browser/Tab$2$2;->this$1:Lme/android/browser/Tab$2;

    invoke-static {v0, v1}, Lme/android/browser/Tab$2;->access$1(Lme/android/browser/Tab$2;Landroid/os/Message;)V

    .line 477
    iget-object v0, p0, Lme/android/browser/Tab$2$2;->this$1:Lme/android/browser/Tab$2;

    invoke-static {v0, v1}, Lme/android/browser/Tab$2;->access$2(Lme/android/browser/Tab$2;Landroid/os/Message;)V

    .line 479
    :cond_0
    return-void
.end method
