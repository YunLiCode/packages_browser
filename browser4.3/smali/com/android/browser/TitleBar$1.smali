.class Lcom/android/browser/TitleBar$1;
.super Ljava/lang/Object;
.source "TitleBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/TitleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/TitleBar;


# direct methods
.method constructor <init>(Lcom/android/browser/TitleBar;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/browser/TitleBar$1;->this$0:Lcom/android/browser/TitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 254
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/browser/TitleBar$1;->this$0:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->onScrollChanged()V

    .line 250
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 244
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 240
    return-void
.end method
