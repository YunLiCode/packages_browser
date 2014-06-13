.class Lme/android/browser/view/PieMenu$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PieMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/view/PieMenu;->openSub(Lme/android/browser/view/PieItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/view/PieMenu;

.field private final synthetic val$item:Lme/android/browser/view/PieItem;


# direct methods
.method constructor <init>(Lme/android/browser/view/PieMenu;Lme/android/browser/view/PieItem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/view/PieMenu$4;->this$0:Lme/android/browser/view/PieMenu;

    iput-object p2, p0, Lme/android/browser/view/PieMenu$4;->val$item:Lme/android/browser/view/PieItem;

    .line 530
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lme/android/browser/view/PieMenu$4;)Lme/android/browser/view/PieMenu;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lme/android/browser/view/PieMenu$4;->this$0:Lme/android/browser/view/PieMenu;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 532
    iget-object v4, p0, Lme/android/browser/view/PieMenu$4;->this$0:Lme/android/browser/view/PieMenu;

    # getter for: Lme/android/browser/view/PieMenu;->mCurrentItems:Ljava/util/List;
    invoke-static {v4}, Lme/android/browser/view/PieMenu;->access$0(Lme/android/browser/view/PieMenu;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 535
    iget-object v4, p0, Lme/android/browser/view/PieMenu$4;->this$0:Lme/android/browser/view/PieMenu;

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lme/android/browser/view/PieMenu$4;->this$0:Lme/android/browser/view/PieMenu;

    # getter for: Lme/android/browser/view/PieMenu;->mItems:Ljava/util/List;
    invoke-static {v6}, Lme/android/browser/view/PieMenu;->access$1(Lme/android/browser/view/PieMenu;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v4, v5}, Lme/android/browser/view/PieMenu;->access$2(Lme/android/browser/view/PieMenu;Ljava/util/List;)V

    .line 536
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v2, 0x0

    .line 537
    .local v2, "j":I
    :goto_1
    iget-object v4, p0, Lme/android/browser/view/PieMenu$4;->this$0:Lme/android/browser/view/PieMenu;

    # getter for: Lme/android/browser/view/PieMenu;->mItems:Ljava/util/List;
    invoke-static {v4}, Lme/android/browser/view/PieMenu;->access$1(Lme/android/browser/view/PieMenu;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 545
    iget-object v4, p0, Lme/android/browser/view/PieMenu$4;->this$0:Lme/android/browser/view/PieMenu;

    # invokes: Lme/android/browser/view/PieMenu;->layoutPie()V
    invoke-static {v4}, Lme/android/browser/view/PieMenu;->access$3(Lme/android/browser/view/PieMenu;)V

    .line 546
    iget-object v4, p0, Lme/android/browser/view/PieMenu$4;->this$0:Lme/android/browser/view/PieMenu;

    iget-object v5, p0, Lme/android/browser/view/PieMenu$4;->val$item:Lme/android/browser/view/PieItem;

    new-instance v6, Lme/android/browser/view/PieMenu$4$1;

    invoke-direct {v6, p0}, Lme/android/browser/view/PieMenu$4$1;-><init>(Lme/android/browser/view/PieMenu$4;)V

    # invokes: Lme/android/browser/view/PieMenu;->animateIn(Lme/android/browser/view/PieItem;Landroid/animation/Animator$AnimatorListener;)V
    invoke-static {v4, v5, v6}, Lme/android/browser/view/PieMenu;->access$5(Lme/android/browser/view/PieMenu;Lme/android/browser/view/PieItem;Landroid/animation/Animator$AnimatorListener;)V

    .line 554
    return-void

    .line 532
    .end local v0    # "i":I
    .end local v2    # "j":I
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/android/browser/view/PieItem;

    .line 533
    .local v1, "item":Lme/android/browser/view/PieItem;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lme/android/browser/view/PieItem;->setAnimationAngle(F)V

    goto :goto_0

    .line 538
    .end local v1    # "item":Lme/android/browser/view/PieItem;
    .restart local v0    # "i":I
    .restart local v2    # "j":I
    :cond_1
    iget-object v4, p0, Lme/android/browser/view/PieMenu$4;->this$0:Lme/android/browser/view/PieMenu;

    # getter for: Lme/android/browser/view/PieMenu;->mItems:Ljava/util/List;
    invoke-static {v4}, Lme/android/browser/view/PieMenu;->access$1(Lme/android/browser/view/PieMenu;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lme/android/browser/view/PieMenu$4;->val$item:Lme/android/browser/view/PieItem;

    if-ne v4, v5, :cond_2

    .line 539
    iget-object v4, p0, Lme/android/browser/view/PieMenu$4;->this$0:Lme/android/browser/view/PieMenu;

    # getter for: Lme/android/browser/view/PieMenu;->mCurrentItems:Ljava/util/List;
    invoke-static {v4}, Lme/android/browser/view/PieMenu;->access$0(Lme/android/browser/view/PieMenu;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lme/android/browser/view/PieMenu$4;->val$item:Lme/android/browser/view/PieItem;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 541
    :cond_2
    iget-object v4, p0, Lme/android/browser/view/PieMenu$4;->this$0:Lme/android/browser/view/PieMenu;

    # getter for: Lme/android/browser/view/PieMenu;->mCurrentItems:Ljava/util/List;
    invoke-static {v4}, Lme/android/browser/view/PieMenu;->access$0(Lme/android/browser/view/PieMenu;)Ljava/util/List;

    move-result-object v5

    iget-object v4, p0, Lme/android/browser/view/PieMenu$4;->val$item:Lme/android/browser/view/PieItem;

    invoke-virtual {v4}, Lme/android/browser/view/PieItem;->getItems()Ljava/util/List;

    move-result-object v4

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .local v3, "j":I
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lme/android/browser/view/PieItem;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    .end local v3    # "j":I
    .restart local v2    # "j":I
    goto :goto_2
.end method
