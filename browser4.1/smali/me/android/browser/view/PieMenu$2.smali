.class Lme/android/browser/view/PieMenu$2;
.super Ljava/lang/Object;
.source "PieMenu.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/view/PieMenu;->animateOut(Lme/android/browser/view/PieItem;Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/view/PieMenu;

.field private final synthetic val$fixed:Lme/android/browser/view/PieItem;

.field private final synthetic val$target:F


# direct methods
.method constructor <init>(Lme/android/browser/view/PieMenu;Lme/android/browser/view/PieItem;F)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/view/PieMenu$2;->this$0:Lme/android/browser/view/PieMenu;

    iput-object p2, p0, Lme/android/browser/view/PieMenu$2;->val$fixed:Lme/android/browser/view/PieItem;

    iput p3, p0, Lme/android/browser/view/PieMenu$2;->val$target:F

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 491
    iget-object v1, p0, Lme/android/browser/view/PieMenu$2;->this$0:Lme/android/browser/view/PieMenu;

    # getter for: Lme/android/browser/view/PieMenu;->mCurrentItems:Ljava/util/List;
    invoke-static {v1}, Lme/android/browser/view/PieMenu;->access$0(Lme/android/browser/view/PieMenu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 497
    iget-object v1, p0, Lme/android/browser/view/PieMenu$2;->this$0:Lme/android/browser/view/PieMenu;

    invoke-virtual {v1}, Lme/android/browser/view/PieMenu;->invalidate()V

    .line 498
    return-void

    .line 491
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/android/browser/view/PieItem;

    .line 492
    .local v0, "item":Lme/android/browser/view/PieItem;
    iget-object v2, p0, Lme/android/browser/view/PieMenu$2;->val$fixed:Lme/android/browser/view/PieItem;

    if-eq v0, v2, :cond_0

    .line 493
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    .line 494
    iget v3, p0, Lme/android/browser/view/PieMenu$2;->val$target:F

    invoke-virtual {v0}, Lme/android/browser/view/PieItem;->getStart()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    .line 493
    invoke-virtual {v0, v2}, Lme/android/browser/view/PieItem;->setAnimationAngle(F)V

    goto :goto_0
.end method
