.class Lme/android/browser/TabBar$1;
.super Ljava/lang/Object;
.source "TabBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/TabBar;->animateTabOut(Lme/android/browser/Tab;Lme/android/browser/TabBar$TabView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/TabBar;

.field private final synthetic val$tab:Lme/android/browser/Tab;

.field private final synthetic val$tv:Lme/android/browser/TabBar$TabView;


# direct methods
.method constructor <init>(Lme/android/browser/TabBar;Lme/android/browser/TabBar$TabView;Lme/android/browser/Tab;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/TabBar$1;->this$0:Lme/android/browser/TabBar;

    iput-object p2, p0, Lme/android/browser/TabBar$1;->val$tv:Lme/android/browser/TabBar$TabView;

    iput-object p3, p0, Lme/android/browser/TabBar$1;->val$tab:Lme/android/browser/Tab;

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 438
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 442
    iget-object v0, p0, Lme/android/browser/TabBar$1;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mTabs:Lme/android/browser/TabScrollView;
    invoke-static {v0}, Lme/android/browser/TabBar;->access$23(Lme/android/browser/TabBar;)Lme/android/browser/TabScrollView;

    move-result-object v0

    iget-object v1, p0, Lme/android/browser/TabBar$1;->val$tv:Lme/android/browser/TabBar$TabView;

    invoke-virtual {v0, v1}, Lme/android/browser/TabScrollView;->removeTab(Landroid/view/View;)V

    .line 443
    iget-object v0, p0, Lme/android/browser/TabBar$1;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mTabMap:Ljava/util/Map;
    invoke-static {v0}, Lme/android/browser/TabBar;->access$24(Lme/android/browser/TabBar;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lme/android/browser/TabBar$1;->val$tab:Lme/android/browser/Tab;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    iget-object v0, p0, Lme/android/browser/TabBar$1;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mUi:Lme/android/browser/XLargeUi;
    invoke-static {v0}, Lme/android/browser/TabBar;->access$2(Lme/android/browser/TabBar;)Lme/android/browser/XLargeUi;

    move-result-object v0

    iget-object v1, p0, Lme/android/browser/TabBar$1;->val$tab:Lme/android/browser/Tab;

    invoke-virtual {v0, v1}, Lme/android/browser/XLargeUi;->onRemoveTabCompleted(Lme/android/browser/Tab;)V

    .line 445
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 449
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 453
    return-void
.end method
