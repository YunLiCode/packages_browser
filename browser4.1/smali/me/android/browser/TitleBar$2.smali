.class Lme/android/browser/TitleBar$2;
.super Ljava/lang/Object;
.source "TitleBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/TitleBar;->hideAutoLogin(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/TitleBar;


# direct methods
.method constructor <init>(Lme/android/browser/TitleBar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/TitleBar$2;->this$0:Lme/android/browser/TitleBar;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "a"    # Landroid/view/animation/Animation;

    .prologue
    .line 342
    iget-object v0, p0, Lme/android/browser/TitleBar$2;->this$0:Lme/android/browser/TitleBar;

    # getter for: Lme/android/browser/TitleBar;->mAutoLogin:Lme/android/browser/AutologinBar;
    invoke-static {v0}, Lme/android/browser/TitleBar;->access$0(Lme/android/browser/TitleBar;)Lme/android/browser/AutologinBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lme/android/browser/AutologinBar;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lme/android/browser/TitleBar$2;->this$0:Lme/android/browser/TitleBar;

    # getter for: Lme/android/browser/TitleBar;->mBaseUi:Lme/android/browser/BaseUi;
    invoke-static {v0}, Lme/android/browser/TitleBar;->access$1(Lme/android/browser/TitleBar;)Lme/android/browser/BaseUi;

    move-result-object v0

    invoke-virtual {v0}, Lme/android/browser/BaseUi;->refreshWebView()V

    .line 344
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "a"    # Landroid/view/animation/Animation;

    .prologue
    .line 352
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "a"    # Landroid/view/animation/Animation;

    .prologue
    .line 348
    return-void
.end method
