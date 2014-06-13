.class Lme/android/browser/ErrorConsoleView$2;
.super Ljava/lang/Object;
.source "ErrorConsoleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/ErrorConsoleView;->commonSetupIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/ErrorConsoleView;


# direct methods
.method constructor <init>(Lme/android/browser/ErrorConsoleView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/ErrorConsoleView$2;->this$0:Lme/android/browser/ErrorConsoleView;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView$2;->this$0:Lme/android/browser/ErrorConsoleView;

    # getter for: Lme/android/browser/ErrorConsoleView;->mCurrentShowState:I
    invoke-static {v0}, Lme/android/browser/ErrorConsoleView;->access$2(Lme/android/browser/ErrorConsoleView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView$2;->this$0:Lme/android/browser/ErrorConsoleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lme/android/browser/ErrorConsoleView;->showConsole(I)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView$2;->this$0:Lme/android/browser/ErrorConsoleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/android/browser/ErrorConsoleView;->showConsole(I)V

    goto :goto_0
.end method
