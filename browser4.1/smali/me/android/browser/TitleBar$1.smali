.class Lme/android/browser/TitleBar$1;
.super Ljava/lang/Object;
.source "TitleBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/TitleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/TitleBar;


# direct methods
.method constructor <init>(Lme/android/browser/TitleBar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/TitleBar$1;->this$0:Lme/android/browser/TitleBar;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 250
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 245
    iget-object v0, p0, Lme/android/browser/TitleBar$1;->this$0:Lme/android/browser/TitleBar;

    invoke-virtual {v0}, Lme/android/browser/TitleBar;->onScrollChanged()V

    .line 246
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 240
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 236
    return-void
.end method
