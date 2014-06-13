.class Lme/android/browser/NavigationBarTablet$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NavigationBarTablet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/NavigationBarTablet;->hideNavButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/NavigationBarTablet;


# direct methods
.method constructor <init>(Lme/android/browser/NavigationBarTablet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/NavigationBarTablet$1;->this$0:Lme/android/browser/NavigationBarTablet;

    .line 279
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 282
    iget-object v0, p0, Lme/android/browser/NavigationBarTablet$1;->this$0:Lme/android/browser/NavigationBarTablet;

    # getter for: Lme/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;
    invoke-static {v0}, Lme/android/browser/NavigationBarTablet;->access$0(Lme/android/browser/NavigationBarTablet;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lme/android/browser/NavigationBarTablet$1;->this$0:Lme/android/browser/NavigationBarTablet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/android/browser/NavigationBarTablet;->access$1(Lme/android/browser/NavigationBarTablet;Landroid/animation/AnimatorSet;)V

    .line 284
    return-void
.end method
