.class Lme/android/browser/view/PieMenu$1;
.super Ljava/lang/Object;
.source "PieMenu.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/view/PieMenu;->animateOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/view/PieMenu;


# direct methods
.method constructor <init>(Lme/android/browser/view/PieMenu;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/view/PieMenu$1;->this$0:Lme/android/browser/view/PieMenu;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 221
    iget-object v1, p0, Lme/android/browser/view/PieMenu$1;->this$0:Lme/android/browser/view/PieMenu;

    # getter for: Lme/android/browser/view/PieMenu;->mCurrentItems:Ljava/util/List;
    invoke-static {v1}, Lme/android/browser/view/PieMenu;->access$0(Lme/android/browser/view/PieMenu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    iget-object v1, p0, Lme/android/browser/view/PieMenu$1;->this$0:Lme/android/browser/view/PieMenu;

    invoke-virtual {v1}, Lme/android/browser/view/PieMenu;->invalidate()V

    .line 225
    return-void

    .line 221
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/android/browser/view/PieItem;

    .line 222
    .local v0, "item":Lme/android/browser/view/PieItem;
    const/high16 v2, 0x3f800000

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Lme/android/browser/view/PieItem;->getStart()F

    move-result v3

    neg-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lme/android/browser/view/PieItem;->setAnimationAngle(F)V

    goto :goto_0
.end method
