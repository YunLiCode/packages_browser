.class Lme/android/browser/BrowserSnapshotPage$SnapshotAdapter$1;
.super Ljava/lang/Object;
.source "BrowserSnapshotPage.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/BrowserSnapshotPage$SnapshotAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lme/android/browser/BrowserSnapshotPage$SnapshotAdapter;


# direct methods
.method constructor <init>(Lme/android/browser/BrowserSnapshotPage$SnapshotAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/BrowserSnapshotPage$SnapshotAdapter$1;->this$1:Lme/android/browser/BrowserSnapshotPage$SnapshotAdapter;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 242
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 236
    iget-object v0, p0, Lme/android/browser/BrowserSnapshotPage$SnapshotAdapter$1;->this$1:Lme/android/browser/BrowserSnapshotPage$SnapshotAdapter;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lme/android/browser/BrowserSnapshotPage$SnapshotAdapter;->access$1(Lme/android/browser/BrowserSnapshotPage$SnapshotAdapter;J)V

    .line 237
    iget-object v0, p0, Lme/android/browser/BrowserSnapshotPage$SnapshotAdapter$1;->this$1:Lme/android/browser/BrowserSnapshotPage$SnapshotAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/android/browser/BrowserSnapshotPage$SnapshotAdapter;->access$2(Lme/android/browser/BrowserSnapshotPage$SnapshotAdapter;Landroid/view/View;)V

    .line 238
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 232
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 228
    return-void
.end method
