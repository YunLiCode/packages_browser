.class Lme/android/browser/view/PieMenu$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PieMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/view/PieMenu;->closeSub()V
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
    iput-object p1, p0, Lme/android/browser/view/PieMenu$5;->this$0:Lme/android/browser/view/PieMenu;

    .line 563
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lme/android/browser/view/PieMenu$5;)Lme/android/browser/view/PieMenu;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lme/android/browser/view/PieMenu$5;->this$0:Lme/android/browser/view/PieMenu;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 565
    iget-object v1, p0, Lme/android/browser/view/PieMenu$5;->this$0:Lme/android/browser/view/PieMenu;

    # getter for: Lme/android/browser/view/PieMenu;->mCurrentItems:Ljava/util/List;
    invoke-static {v1}, Lme/android/browser/view/PieMenu;->access$0(Lme/android/browser/view/PieMenu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 568
    iget-object v1, p0, Lme/android/browser/view/PieMenu$5;->this$0:Lme/android/browser/view/PieMenu;

    iget-object v2, p0, Lme/android/browser/view/PieMenu$5;->this$0:Lme/android/browser/view/PieMenu;

    # getter for: Lme/android/browser/view/PieMenu;->mItems:Ljava/util/List;
    invoke-static {v2}, Lme/android/browser/view/PieMenu;->access$1(Lme/android/browser/view/PieMenu;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lme/android/browser/view/PieMenu;->access$2(Lme/android/browser/view/PieMenu;Ljava/util/List;)V

    .line 569
    iget-object v1, p0, Lme/android/browser/view/PieMenu$5;->this$0:Lme/android/browser/view/PieMenu;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lme/android/browser/view/PieMenu;->access$6(Lme/android/browser/view/PieMenu;Lme/android/browser/view/PieMenu$PieView;)V

    .line 570
    iget-object v1, p0, Lme/android/browser/view/PieMenu$5;->this$0:Lme/android/browser/view/PieMenu;

    iget-object v2, p0, Lme/android/browser/view/PieMenu$5;->this$0:Lme/android/browser/view/PieMenu;

    # getter for: Lme/android/browser/view/PieMenu;->mOpenItem:Lme/android/browser/view/PieItem;
    invoke-static {v2}, Lme/android/browser/view/PieMenu;->access$7(Lme/android/browser/view/PieMenu;)Lme/android/browser/view/PieItem;

    move-result-object v2

    new-instance v3, Lme/android/browser/view/PieMenu$5$1;

    invoke-direct {v3, p0}, Lme/android/browser/view/PieMenu$5$1;-><init>(Lme/android/browser/view/PieMenu$5;)V

    # invokes: Lme/android/browser/view/PieMenu;->animateIn(Lme/android/browser/view/PieItem;Landroid/animation/Animator$AnimatorListener;)V
    invoke-static {v1, v2, v3}, Lme/android/browser/view/PieMenu;->access$5(Lme/android/browser/view/PieMenu;Lme/android/browser/view/PieItem;Landroid/animation/Animator$AnimatorListener;)V

    .line 580
    return-void

    .line 565
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/android/browser/view/PieItem;

    .line 566
    .local v0, "item":Lme/android/browser/view/PieItem;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lme/android/browser/view/PieItem;->setAnimationAngle(F)V

    goto :goto_0
.end method
