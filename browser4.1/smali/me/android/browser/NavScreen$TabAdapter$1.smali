.class Lme/android/browser/NavScreen$TabAdapter$1;
.super Ljava/lang/Object;
.source "NavScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/NavScreen$TabAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lme/android/browser/NavScreen$TabAdapter;

.field private final synthetic val$position:I

.field private final synthetic val$tab:Lme/android/browser/Tab;

.field private final synthetic val$tabview:Lme/android/browser/NavTabView;


# direct methods
.method constructor <init>(Lme/android/browser/NavScreen$TabAdapter;Lme/android/browser/NavTabView;Lme/android/browser/Tab;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/NavScreen$TabAdapter$1;->this$1:Lme/android/browser/NavScreen$TabAdapter;

    iput-object p2, p0, Lme/android/browser/NavScreen$TabAdapter$1;->val$tabview:Lme/android/browser/NavTabView;

    iput-object p3, p0, Lme/android/browser/NavScreen$TabAdapter$1;->val$tab:Lme/android/browser/Tab;

    iput p4, p0, Lme/android/browser/NavScreen$TabAdapter$1;->val$position:I

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 239
    iget-object v0, p0, Lme/android/browser/NavScreen$TabAdapter$1;->val$tabview:Lme/android/browser/NavTabView;

    invoke-virtual {v0, p1}, Lme/android/browser/NavTabView;->isClose(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lme/android/browser/NavScreen$TabAdapter$1;->this$1:Lme/android/browser/NavScreen$TabAdapter;

    # getter for: Lme/android/browser/NavScreen$TabAdapter;->this$0:Lme/android/browser/NavScreen;
    invoke-static {v0}, Lme/android/browser/NavScreen$TabAdapter;->access$1(Lme/android/browser/NavScreen$TabAdapter;)Lme/android/browser/NavScreen;

    move-result-object v0

    iget-object v0, v0, Lme/android/browser/NavScreen;->mScroller:Lme/android/browser/NavTabScroller;

    iget-object v1, p0, Lme/android/browser/NavScreen$TabAdapter$1;->val$tabview:Lme/android/browser/NavTabView;

    invoke-virtual {v0, v1}, Lme/android/browser/NavTabScroller;->animateOut(Landroid/view/View;)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lme/android/browser/NavScreen$TabAdapter$1;->val$tabview:Lme/android/browser/NavTabView;

    invoke-virtual {v0, p1}, Lme/android/browser/NavTabView;->isTitle(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lme/android/browser/NavScreen$TabAdapter$1;->this$1:Lme/android/browser/NavScreen$TabAdapter;

    # getter for: Lme/android/browser/NavScreen$TabAdapter;->this$0:Lme/android/browser/NavScreen;
    invoke-static {v0}, Lme/android/browser/NavScreen$TabAdapter;->access$1(Lme/android/browser/NavScreen$TabAdapter;)Lme/android/browser/NavScreen;

    move-result-object v0

    iget-object v1, p0, Lme/android/browser/NavScreen$TabAdapter$1;->val$tab:Lme/android/browser/Tab;

    # invokes: Lme/android/browser/NavScreen;->switchToTab(Lme/android/browser/Tab;)V
    invoke-static {v0, v1}, Lme/android/browser/NavScreen;->access$0(Lme/android/browser/NavScreen;Lme/android/browser/Tab;)V

    .line 243
    iget-object v0, p0, Lme/android/browser/NavScreen$TabAdapter$1;->this$1:Lme/android/browser/NavScreen$TabAdapter;

    # getter for: Lme/android/browser/NavScreen$TabAdapter;->this$0:Lme/android/browser/NavScreen;
    invoke-static {v0}, Lme/android/browser/NavScreen$TabAdapter;->access$1(Lme/android/browser/NavScreen$TabAdapter;)Lme/android/browser/NavScreen;

    move-result-object v0

    iget-object v0, v0, Lme/android/browser/NavScreen;->mUi:Lme/android/browser/PhoneUi;

    invoke-virtual {v0}, Lme/android/browser/PhoneUi;->getTitleBar()Lme/android/browser/TitleBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lme/android/browser/TitleBar;->setSkipTitleBarAnimations(Z)V

    .line 244
    iget-object v0, p0, Lme/android/browser/NavScreen$TabAdapter$1;->this$1:Lme/android/browser/NavScreen$TabAdapter;

    # getter for: Lme/android/browser/NavScreen$TabAdapter;->this$0:Lme/android/browser/NavScreen;
    invoke-static {v0}, Lme/android/browser/NavScreen$TabAdapter;->access$1(Lme/android/browser/NavScreen$TabAdapter;)Lme/android/browser/NavScreen;

    move-result-object v0

    iget v1, p0, Lme/android/browser/NavScreen$TabAdapter$1;->val$position:I

    invoke-virtual {v0, v1, v2}, Lme/android/browser/NavScreen;->close(IZ)V

    .line 245
    iget-object v0, p0, Lme/android/browser/NavScreen$TabAdapter$1;->this$1:Lme/android/browser/NavScreen$TabAdapter;

    # getter for: Lme/android/browser/NavScreen$TabAdapter;->this$0:Lme/android/browser/NavScreen;
    invoke-static {v0}, Lme/android/browser/NavScreen$TabAdapter;->access$1(Lme/android/browser/NavScreen$TabAdapter;)Lme/android/browser/NavScreen;

    move-result-object v0

    iget-object v0, v0, Lme/android/browser/NavScreen;->mUi:Lme/android/browser/PhoneUi;

    invoke-virtual {v0, v2, v3}, Lme/android/browser/PhoneUi;->editUrl(ZZ)V

    .line 246
    iget-object v0, p0, Lme/android/browser/NavScreen$TabAdapter$1;->this$1:Lme/android/browser/NavScreen$TabAdapter;

    # getter for: Lme/android/browser/NavScreen$TabAdapter;->this$0:Lme/android/browser/NavScreen;
    invoke-static {v0}, Lme/android/browser/NavScreen$TabAdapter;->access$1(Lme/android/browser/NavScreen$TabAdapter;)Lme/android/browser/NavScreen;

    move-result-object v0

    iget-object v0, v0, Lme/android/browser/NavScreen;->mUi:Lme/android/browser/PhoneUi;

    invoke-virtual {v0}, Lme/android/browser/PhoneUi;->getTitleBar()Lme/android/browser/TitleBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lme/android/browser/TitleBar;->setSkipTitleBarAnimations(Z)V

    goto :goto_0

    .line 247
    :cond_2
    iget-object v0, p0, Lme/android/browser/NavScreen$TabAdapter$1;->val$tabview:Lme/android/browser/NavTabView;

    invoke-virtual {v0, p1}, Lme/android/browser/NavTabView;->isWebView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lme/android/browser/NavScreen$TabAdapter$1;->this$1:Lme/android/browser/NavScreen$TabAdapter;

    # getter for: Lme/android/browser/NavScreen$TabAdapter;->this$0:Lme/android/browser/NavScreen;
    invoke-static {v0}, Lme/android/browser/NavScreen$TabAdapter;->access$1(Lme/android/browser/NavScreen$TabAdapter;)Lme/android/browser/NavScreen;

    move-result-object v0

    iget v1, p0, Lme/android/browser/NavScreen$TabAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lme/android/browser/NavScreen;->close(I)V

    goto :goto_0
.end method
