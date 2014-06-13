.class Lme/android/browser/NavTabScroller$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NavTabScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/NavTabScroller;->animateOut(Landroid/view/View;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/NavTabScroller;

.field private final synthetic val$pos:I

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lme/android/browser/NavTabScroller;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/NavTabScroller$2;->this$0:Lme/android/browser/NavTabScroller;

    iput p2, p0, Lme/android/browser/NavTabScroller$2;->val$position:I

    iput p3, p0, Lme/android/browser/NavTabScroller$2;->val$pos:I

    .line 347
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 349
    iget-object v0, p0, Lme/android/browser/NavTabScroller$2;->this$0:Lme/android/browser/NavTabScroller;

    # getter for: Lme/android/browser/NavTabScroller;->mRemoveListener:Lme/android/browser/NavTabScroller$OnRemoveListener;
    invoke-static {v0}, Lme/android/browser/NavTabScroller;->access$0(Lme/android/browser/NavTabScroller;)Lme/android/browser/NavTabScroller$OnRemoveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lme/android/browser/NavTabScroller$2;->this$0:Lme/android/browser/NavTabScroller;

    # getter for: Lme/android/browser/NavTabScroller;->mRemoveListener:Lme/android/browser/NavTabScroller$OnRemoveListener;
    invoke-static {v0}, Lme/android/browser/NavTabScroller;->access$0(Lme/android/browser/NavTabScroller;)Lme/android/browser/NavTabScroller$OnRemoveListener;

    move-result-object v0

    iget v1, p0, Lme/android/browser/NavTabScroller$2;->val$position:I

    invoke-interface {v0, v1}, Lme/android/browser/NavTabScroller$OnRemoveListener;->onRemovePosition(I)V

    .line 351
    iget-object v0, p0, Lme/android/browser/NavTabScroller$2;->this$0:Lme/android/browser/NavTabScroller;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/android/browser/NavTabScroller;->access$1(Lme/android/browser/NavTabScroller;Landroid/animation/AnimatorSet;)V

    .line 352
    iget-object v0, p0, Lme/android/browser/NavTabScroller$2;->this$0:Lme/android/browser/NavTabScroller;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lme/android/browser/NavTabScroller;->access$2(Lme/android/browser/NavTabScroller;I)V

    .line 353
    iget-object v0, p0, Lme/android/browser/NavTabScroller$2;->this$0:Lme/android/browser/NavTabScroller;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/android/browser/NavTabScroller;->access$3(Lme/android/browser/NavTabScroller;I)V

    .line 354
    iget-object v0, p0, Lme/android/browser/NavTabScroller$2;->this$0:Lme/android/browser/NavTabScroller;

    iget v1, p0, Lme/android/browser/NavTabScroller$2;->val$pos:I

    invoke-virtual {v0, v1}, Lme/android/browser/NavTabScroller;->handleDataChanged(I)V

    .line 356
    :cond_0
    return-void
.end method
