.class Lme/android/browser/XLargeUi$1;
.super Ljava/lang/Object;
.source "XLargeUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/XLargeUi;->checkHideActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/XLargeUi;


# direct methods
.method constructor <init>(Lme/android/browser/XLargeUi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/XLargeUi$1;->this$0:Lme/android/browser/XLargeUi;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lme/android/browser/XLargeUi$1;->this$0:Lme/android/browser/XLargeUi;

    # getter for: Lme/android/browser/XLargeUi;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lme/android/browser/XLargeUi;->access$0(Lme/android/browser/XLargeUi;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 101
    return-void
.end method
