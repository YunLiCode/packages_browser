.class Lme/android/browser/Tab$1;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/Tab;


# direct methods
.method constructor <init>(Lme/android/browser/Tab;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/Tab$1;->this$0:Lme/android/browser/Tab;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "d"    # Landroid/content/DialogInterface;

    .prologue
    .line 281
    iget-object v0, p0, Lme/android/browser/Tab$1;->this$0:Lme/android/browser/Tab;

    # invokes: Lme/android/browser/Tab;->processNextError()V
    invoke-static {v0}, Lme/android/browser/Tab;->access$0(Lme/android/browser/Tab;)V

    .line 282
    return-void
.end method
