.class Lme/android/browser/PhoneUi$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhoneUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/PhoneUi;->showNavScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/PhoneUi;


# direct methods
.method constructor <init>(Lme/android/browser/PhoneUi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/PhoneUi$1;->this$0:Lme/android/browser/PhoneUi;

    .line 308
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 311
    iget-object v0, p0, Lme/android/browser/PhoneUi$1;->this$0:Lme/android/browser/PhoneUi;

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lme/android/browser/PhoneUi$1;->this$0:Lme/android/browser/PhoneUi;

    # getter for: Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;
    invoke-static {v1}, Lme/android/browser/PhoneUi;->access$0(Lme/android/browser/PhoneUi;)Lme/android/browser/PhoneUi$AnimScreen;

    move-result-object v1

    # getter for: Lme/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static {v1}, Lme/android/browser/PhoneUi$AnimScreen;->access$0(Lme/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 312
    iget-object v0, p0, Lme/android/browser/PhoneUi$1;->this$0:Lme/android/browser/PhoneUi;

    # invokes: Lme/android/browser/PhoneUi;->finishAnimationIn()V
    invoke-static {v0}, Lme/android/browser/PhoneUi;->access$1(Lme/android/browser/PhoneUi;)V

    .line 313
    iget-object v0, p0, Lme/android/browser/PhoneUi$1;->this$0:Lme/android/browser/PhoneUi;

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mUiController:Lme/android/browser/UiController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lme/android/browser/UiController;->setBlockEvents(Z)V

    .line 314
    return-void
.end method
