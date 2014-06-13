.class Lme/android/browser/view/PieMenu$4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PieMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/view/PieMenu$4;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lme/android/browser/view/PieMenu$4;


# direct methods
.method constructor <init>(Lme/android/browser/view/PieMenu$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/view/PieMenu$4$1;->this$1:Lme/android/browser/view/PieMenu$4;

    .line 546
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 548
    iget-object v1, p0, Lme/android/browser/view/PieMenu$4$1;->this$1:Lme/android/browser/view/PieMenu$4;

    # getter for: Lme/android/browser/view/PieMenu$4;->this$0:Lme/android/browser/view/PieMenu;
    invoke-static {v1}, Lme/android/browser/view/PieMenu$4;->access$0(Lme/android/browser/view/PieMenu$4;)Lme/android/browser/view/PieMenu;

    move-result-object v1

    # getter for: Lme/android/browser/view/PieMenu;->mCurrentItems:Ljava/util/List;
    invoke-static {v1}, Lme/android/browser/view/PieMenu;->access$0(Lme/android/browser/view/PieMenu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 551
    iget-object v1, p0, Lme/android/browser/view/PieMenu$4$1;->this$1:Lme/android/browser/view/PieMenu$4;

    # getter for: Lme/android/browser/view/PieMenu$4;->this$0:Lme/android/browser/view/PieMenu;
    invoke-static {v1}, Lme/android/browser/view/PieMenu$4;->access$0(Lme/android/browser/view/PieMenu$4;)Lme/android/browser/view/PieMenu;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lme/android/browser/view/PieMenu;->access$4(Lme/android/browser/view/PieMenu;Z)V

    .line 552
    return-void

    .line 548
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/android/browser/view/PieItem;

    .line 549
    .local v0, "item":Lme/android/browser/view/PieItem;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lme/android/browser/view/PieItem;->setAnimationAngle(F)V

    goto :goto_0
.end method
