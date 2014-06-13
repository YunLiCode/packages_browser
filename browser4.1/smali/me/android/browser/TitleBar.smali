.class public Lme/android/browser/TitleBar;
.super Landroid/widget/RelativeLayout;
.source "TitleBar.java"


# static fields
.field private static final ANIM_TITLEBAR_DECELERATE:F = 2.5f

.field private static final PROGRESS_MAX:I = 0x64


# instance fields
.field private mAutoLogin:Lme/android/browser/AutologinBar;

.field private mBaseUi:Lme/android/browser/BaseUi;

.field private mContentView:Landroid/widget/FrameLayout;

.field private mHideTileBarAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mInLoad:Z

.field private mIsFixedTitleBar:Z

.field private mNavBar:Lme/android/browser/NavigationBarBase;

.field private mProgress:Lme/android/browser/PageProgressView;

.field private mShowing:Z

.field private mSkipTitleBarAnimations:Z

.field private mSnapshotBar:Lme/android/browser/SnapshotBar;

.field private mTitleBarAnimator:Landroid/animation/Animator;

.field private mUiController:Lme/android/browser/UiController;

.field private mUseQuickControls:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lme/android/browser/UiController;Lme/android/browser/BaseUi;Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lme/android/browser/UiController;
    .param p3, "ui"    # Lme/android/browser/BaseUi;
    .param p4, "contentView"    # Landroid/widget/FrameLayout;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 232
    new-instance v0, Lme/android/browser/TitleBar$1;

    invoke-direct {v0, p0}, Lme/android/browser/TitleBar$1;-><init>(Lme/android/browser/TitleBar;)V

    iput-object v0, p0, Lme/android/browser/TitleBar;->mHideTileBarAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 66
    iput-object p2, p0, Lme/android/browser/TitleBar;->mUiController:Lme/android/browser/UiController;

    .line 67
    iput-object p3, p0, Lme/android/browser/TitleBar;->mBaseUi:Lme/android/browser/BaseUi;

    .line 68
    iput-object p4, p0, Lme/android/browser/TitleBar;->mContentView:Landroid/widget/FrameLayout;

    .line 69
    invoke-direct {p0, p1}, Lme/android/browser/TitleBar;->initLayout(Landroid/content/Context;)V

    .line 70
    invoke-direct {p0}, Lme/android/browser/TitleBar;->setFixedTitleBar()V

    .line 71
    return-void
.end method

.method static synthetic access$0(Lme/android/browser/TitleBar;)Lme/android/browser/AutologinBar;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lme/android/browser/TitleBar;->mAutoLogin:Lme/android/browser/AutologinBar;

    return-object v0
.end method

.method static synthetic access$1(Lme/android/browser/TitleBar;)Lme/android/browser/BaseUi;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lme/android/browser/TitleBar;->mBaseUi:Lme/android/browser/BaseUi;

    return-object v0
.end method

.method private calculateEmbeddedHeight()I
    .locals 2

    .prologue
    .line 299
    iget-object v1, p0, Lme/android/browser/TitleBar;->mNavBar:Lme/android/browser/NavigationBarBase;

    invoke-virtual {v1}, Lme/android/browser/NavigationBarBase;->getHeight()I

    move-result v0

    .line 300
    .local v0, "height":I
    iget-object v1, p0, Lme/android/browser/TitleBar;->mAutoLogin:Lme/android/browser/AutologinBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lme/android/browser/TitleBar;->mAutoLogin:Lme/android/browser/AutologinBar;

    invoke-virtual {v1}, Lme/android/browser/AutologinBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 301
    iget-object v1, p0, Lme/android/browser/TitleBar;->mAutoLogin:Lme/android/browser/AutologinBar;

    invoke-virtual {v1}, Lme/android/browser/AutologinBar;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 303
    :cond_0
    return v0
.end method

.method private getVisibleTitleHeight()I
    .locals 3

    .prologue
    .line 254
    iget-object v2, p0, Lme/android/browser/TitleBar;->mBaseUi:Lme/android/browser/BaseUi;

    invoke-virtual {v2}, Lme/android/browser/BaseUi;->getActiveTab()Lme/android/browser/Tab;

    move-result-object v0

    .line 255
    .local v0, "tab":Lme/android/browser/Tab;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 256
    .local v1, "webview":Landroid/webkit/WebView;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v2

    :goto_1
    return v2

    .line 255
    .end local v1    # "webview":Landroid/webkit/WebView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 256
    .restart local v1    # "webview":Landroid/webkit/WebView;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private inAutoLogin()Z
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lme/android/browser/TitleBar;->mAutoLogin:Lme/android/browser/AutologinBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/android/browser/TitleBar;->mAutoLogin:Lme/android/browser/AutologinBar;

    invoke-virtual {v0}, Lme/android/browser/AutologinBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inflateAutoLoginBar()V
    .locals 2

    .prologue
    .line 82
    iget-object v1, p0, Lme/android/browser/TitleBar;->mAutoLogin:Lme/android/browser/AutologinBar;

    if-eqz v1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    const v1, 0x7f0d0076

    invoke-virtual {p0, v1}, Lme/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 87
    .local v0, "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lme/android/browser/AutologinBar;

    iput-object v1, p0, Lme/android/browser/TitleBar;->mAutoLogin:Lme/android/browser/AutologinBar;

    .line 88
    iget-object v1, p0, Lme/android/browser/TitleBar;->mAutoLogin:Lme/android/browser/AutologinBar;

    invoke-virtual {v1, p0}, Lme/android/browser/AutologinBar;->setTitleBar(Lme/android/browser/TitleBar;)V

    goto :goto_0
.end method

.method private inflateSnapshotBar()V
    .locals 2

    .prologue
    .line 92
    iget-object v1, p0, Lme/android/browser/TitleBar;->mSnapshotBar:Lme/android/browser/SnapshotBar;

    if-eqz v1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    const v1, 0x7f0d0075

    invoke-virtual {p0, v1}, Lme/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 97
    .local v0, "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lme/android/browser/SnapshotBar;

    iput-object v1, p0, Lme/android/browser/TitleBar;->mSnapshotBar:Lme/android/browser/SnapshotBar;

    .line 98
    iget-object v1, p0, Lme/android/browser/TitleBar;->mSnapshotBar:Lme/android/browser/SnapshotBar;

    invoke-virtual {v1, p0}, Lme/android/browser/SnapshotBar;->setTitleBar(Lme/android/browser/TitleBar;)V

    goto :goto_0
.end method

.method private initLayout(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 75
    .local v0, "factory":Landroid/view/LayoutInflater;
    const v1, 0x7f040031

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 76
    const v1, 0x7f0d0077

    invoke-virtual {p0, v1}, Lme/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lme/android/browser/PageProgressView;

    iput-object v1, p0, Lme/android/browser/TitleBar;->mProgress:Lme/android/browser/PageProgressView;

    .line 77
    const v1, 0x7f0d0074

    invoke-virtual {p0, v1}, Lme/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lme/android/browser/NavigationBarBase;

    iput-object v1, p0, Lme/android/browser/TitleBar;->mNavBar:Lme/android/browser/NavigationBarBase;

    .line 78
    iget-object v1, p0, Lme/android/browser/TitleBar;->mNavBar:Lme/android/browser/NavigationBarBase;

    invoke-virtual {v1, p0}, Lme/android/browser/NavigationBarBase;->setTitleBar(Lme/android/browser/TitleBar;)V

    .line 79
    return-void
.end method

.method private makeLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 402
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    .line 403
    const/4 v2, -0x2

    .line 402
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private setFixedTitleBar()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 119
    iget-boolean v4, p0, Lme/android/browser/TitleBar;->mUseQuickControls:Z

    if-nez v4, :cond_0

    .line 120
    iget-object v4, p0, Lme/android/browser/TitleBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    .line 122
    .local v0, "isFixed":Z
    :goto_0
    invoke-virtual {p0}, Lme/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 123
    .local v1, "parent":Landroid/view/ViewGroup;
    iget-boolean v4, p0, Lme/android/browser/TitleBar;->mIsFixedTitleBar:Z

    if-ne v4, v0, :cond_1

    if-eqz v1, :cond_1

    .line 137
    :goto_1
    return-void

    .end local v0    # "isFixed":Z
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_0
    move v0, v3

    .line 120
    goto :goto_0

    .line 124
    .restart local v0    # "isFixed":Z
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    :cond_1
    iput-boolean v0, p0, Lme/android/browser/TitleBar;->mIsFixedTitleBar:Z

    .line 125
    invoke-virtual {p0, v2}, Lme/android/browser/TitleBar;->setSkipTitleBarAnimations(Z)V

    .line 126
    invoke-virtual {p0}, Lme/android/browser/TitleBar;->show()V

    .line 127
    invoke-virtual {p0, v3}, Lme/android/browser/TitleBar;->setSkipTitleBarAnimations(Z)V

    .line 128
    if-eqz v1, :cond_2

    .line 129
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 131
    :cond_2
    iget-boolean v2, p0, Lme/android/browser/TitleBar;->mIsFixedTitleBar:Z

    if-eqz v2, :cond_3

    .line 132
    iget-object v2, p0, Lme/android/browser/TitleBar;->mBaseUi:Lme/android/browser/BaseUi;

    invoke-virtual {v2, p0}, Lme/android/browser/BaseUi;->addFixedTitleBar(Landroid/view/View;)V

    goto :goto_1

    .line 134
    :cond_3
    iget-object v2, p0, Lme/android/browser/TitleBar;->mContentView:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lme/android/browser/TitleBar;->makeLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, p0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v2, p0, Lme/android/browser/TitleBar;->mBaseUi:Lme/android/browser/BaseUi;

    invoke-virtual {v2, v3}, Lme/android/browser/BaseUi;->setContentViewMarginTop(I)V

    goto :goto_1
.end method


# virtual methods
.method cancelTitleBarAnimation(Z)V
    .locals 1
    .param p1, "reset"    # Z

    .prologue
    .line 223
    iget-object v0, p0, Lme/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lme/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lme/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    .line 227
    :cond_0
    if-eqz p1, :cond_1

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lme/android/browser/TitleBar;->setTranslationY(F)V

    .line 230
    :cond_1
    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "dir"    # I

    .prologue
    .line 408
    invoke-virtual {p0}, Lme/android/browser/TitleBar;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 409
    .local v0, "web":Landroid/webkit/WebView;
    const/16 v1, 0x82

    if-ne v1, p2, :cond_0

    invoke-virtual {p0}, Lme/android/browser/TitleBar;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0}, Landroid/webkit/WebView;->hasFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 413
    .end local v0    # "web":Landroid/webkit/WebView;
    :goto_0
    return-object v0

    .restart local v0    # "web":Landroid/webkit/WebView;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentWebView()Landroid/webkit/WebView;
    .locals 2

    .prologue
    .line 377
    iget-object v1, p0, Lme/android/browser/TitleBar;->mBaseUi:Lme/android/browser/BaseUi;

    invoke-virtual {v1}, Lme/android/browser/BaseUi;->getActiveTab()Lme/android/browser/Tab;

    move-result-object v0

    .line 378
    .local v0, "t":Lme/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {v0}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 381
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEmbeddedHeight()I
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lme/android/browser/TitleBar;->mUseQuickControls:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lme/android/browser/TitleBar;->mIsFixedTitleBar:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 295
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lme/android/browser/TitleBar;->calculateEmbeddedHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getNavigationBar()Lme/android/browser/NavigationBarBase;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lme/android/browser/TitleBar;->mNavBar:Lme/android/browser/NavigationBarBase;

    return-object v0
.end method

.method public getProgressView()Lme/android/browser/PageProgressView;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lme/android/browser/TitleBar;->mProgress:Lme/android/browser/PageProgressView;

    return-object v0
.end method

.method public getUi()Lme/android/browser/BaseUi;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lme/android/browser/TitleBar;->mBaseUi:Lme/android/browser/BaseUi;

    return-object v0
.end method

.method public getUiController()Lme/android/browser/UiController;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lme/android/browser/TitleBar;->mUiController:Lme/android/browser/UiController;

    return-object v0
.end method

.method hide()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 198
    iget-boolean v1, p0, Lme/android/browser/TitleBar;->mUseQuickControls:Z

    if-eqz v1, :cond_1

    .line 199
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lme/android/browser/TitleBar;->setVisibility(I)V

    .line 215
    :goto_0
    iput-boolean v5, p0, Lme/android/browser/TitleBar;->mShowing:Z

    .line 216
    :cond_0
    return-void

    .line 201
    :cond_1
    iget-boolean v1, p0, Lme/android/browser/TitleBar;->mIsFixedTitleBar:Z

    if-nez v1, :cond_0

    .line 202
    iget-boolean v1, p0, Lme/android/browser/TitleBar;->mSkipTitleBarAnimations:Z

    if-nez v1, :cond_2

    .line 203
    invoke-virtual {p0, v5}, Lme/android/browser/TitleBar;->cancelTitleBarAnimation(Z)V

    .line 204
    invoke-direct {p0}, Lme/android/browser/TitleBar;->getVisibleTitleHeight()I

    move-result v0

    .line 206
    .local v0, "visibleHeight":I
    const-string v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {p0}, Lme/android/browser/TitleBar;->getTranslationY()F

    move-result v3

    aput v3, v2, v5

    const/4 v3, 0x1

    .line 207
    invoke-virtual {p0}, Lme/android/browser/TitleBar;->getEmbeddedHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v4, v0

    int-to-float v4, v4

    aput v4, v2, v3

    .line 205
    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lme/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    .line 208
    iget-object v1, p0, Lme/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    iget-object v2, p0, Lme/android/browser/TitleBar;->mHideTileBarAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 209
    iget-object v1, p0, Lme/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    invoke-virtual {p0, v1}, Lme/android/browser/TitleBar;->setupTitleBarAnimator(Landroid/animation/Animator;)V

    .line 210
    iget-object v1, p0, Lme/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 212
    .end local v0    # "visibleHeight":I
    :cond_2
    invoke-virtual {p0}, Lme/android/browser/TitleBar;->onScrollChanged()V

    goto :goto_0
.end method

.method public hideAutoLogin(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    const/16 v2, 0x8

    .line 331
    iget-boolean v1, p0, Lme/android/browser/TitleBar;->mUseQuickControls:Z

    if-eqz v1, :cond_1

    .line 332
    iget-object v1, p0, Lme/android/browser/TitleBar;->mBaseUi:Lme/android/browser/BaseUi;

    invoke-virtual {v1}, Lme/android/browser/BaseUi;->hideTitleBar()V

    .line 333
    iget-object v1, p0, Lme/android/browser/TitleBar;->mAutoLogin:Lme/android/browser/AutologinBar;

    invoke-virtual {v1, v2}, Lme/android/browser/AutologinBar;->setVisibility(I)V

    .line 334
    iget-object v1, p0, Lme/android/browser/TitleBar;->mBaseUi:Lme/android/browser/BaseUi;

    invoke-virtual {v1}, Lme/android/browser/BaseUi;->refreshWebView()V

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    if-eqz p1, :cond_2

    .line 337
    invoke-virtual {p0}, Lme/android/browser/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 338
    const v2, 0x7f050001

    .line 337
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 339
    .local v0, "anim":Landroid/view/animation/Animation;
    new-instance v1, Lme/android/browser/TitleBar$2;

    invoke-direct {v1, p0}, Lme/android/browser/TitleBar$2;-><init>(Lme/android/browser/TitleBar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 354
    iget-object v1, p0, Lme/android/browser/TitleBar;->mAutoLogin:Lme/android/browser/AutologinBar;

    invoke-virtual {v1, v0}, Lme/android/browser/AutologinBar;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 355
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_2
    iget-object v1, p0, Lme/android/browser/TitleBar;->mAutoLogin:Lme/android/browser/AutologinBar;

    invoke-virtual {v1}, Lme/android/browser/AutologinBar;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_0

    .line 356
    iget-object v1, p0, Lme/android/browser/TitleBar;->mAutoLogin:Lme/android/browser/AutologinBar;

    invoke-virtual {v1, v2}, Lme/android/browser/AutologinBar;->setVisibility(I)V

    .line 357
    iget-object v1, p0, Lme/android/browser/TitleBar;->mBaseUi:Lme/android/browser/BaseUi;

    invoke-virtual {v1}, Lme/android/browser/BaseUi;->refreshWebView()V

    goto :goto_0
.end method

.method public isEditingUrl()Z
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lme/android/browser/TitleBar;->mNavBar:Lme/android/browser/NavigationBarBase;

    invoke-virtual {v0}, Lme/android/browser/NavigationBarBase;->isEditingUrl()Z

    move-result v0

    return v0
.end method

.method public isInLoad()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lme/android/browser/TitleBar;->mInLoad:Z

    return v0
.end method

.method isShowing()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lme/android/browser/TitleBar;->mShowing:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 104
    invoke-direct {p0}, Lme/android/browser/TitleBar;->setFixedTitleBar()V

    .line 105
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 109
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 110
    iget-boolean v1, p0, Lme/android/browser/TitleBar;->mIsFixedTitleBar:Z

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lme/android/browser/TitleBar;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0}, Lme/android/browser/TitleBar;->calculateEmbeddedHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 112
    .local v0, "margin":I
    iget-object v1, p0, Lme/android/browser/TitleBar;->mBaseUi:Lme/android/browser/BaseUi;

    neg-int v2, v0

    invoke-virtual {v1, v2}, Lme/android/browser/BaseUi;->setContentViewMarginTop(I)V

    .line 116
    .end local v0    # "margin":I
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v1, p0, Lme/android/browser/TitleBar;->mBaseUi:Lme/android/browser/BaseUi;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lme/android/browser/BaseUi;->setContentViewMarginTop(I)V

    goto :goto_0
.end method

.method public onScrollChanged()V
    .locals 2

    .prologue
    .line 434
    iget-boolean v0, p0, Lme/android/browser/TitleBar;->mShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lme/android/browser/TitleBar;->mIsFixedTitleBar:Z

    if-nez v0, :cond_0

    .line 435
    invoke-direct {p0}, Lme/android/browser/TitleBar;->getVisibleTitleHeight()I

    move-result v0

    invoke-virtual {p0}, Lme/android/browser/TitleBar;->getEmbeddedHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lme/android/browser/TitleBar;->setTranslationY(F)V

    .line 437
    :cond_0
    return-void
.end method

.method public onTabDataChanged(Lme/android/browser/Tab;)V
    .locals 3
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 417
    iget-object v0, p0, Lme/android/browser/TitleBar;->mSnapshotBar:Lme/android/browser/SnapshotBar;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lme/android/browser/TitleBar;->mSnapshotBar:Lme/android/browser/SnapshotBar;

    invoke-virtual {v0, p1}, Lme/android/browser/SnapshotBar;->onTabDataChanged(Lme/android/browser/Tab;)V

    .line 421
    :cond_0
    invoke-virtual {p1}, Lme/android/browser/Tab;->isSnapshot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    invoke-direct {p0}, Lme/android/browser/TitleBar;->inflateSnapshotBar()V

    .line 423
    iget-object v0, p0, Lme/android/browser/TitleBar;->mSnapshotBar:Lme/android/browser/SnapshotBar;

    invoke-virtual {v0, v1}, Lme/android/browser/SnapshotBar;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lme/android/browser/TitleBar;->mNavBar:Lme/android/browser/NavigationBarBase;

    invoke-virtual {v0, v2}, Lme/android/browser/NavigationBarBase;->setVisibility(I)V

    .line 431
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lme/android/browser/TitleBar;->mSnapshotBar:Lme/android/browser/SnapshotBar;

    if-eqz v0, :cond_2

    .line 427
    iget-object v0, p0, Lme/android/browser/TitleBar;->mSnapshotBar:Lme/android/browser/SnapshotBar;

    invoke-virtual {v0, v2}, Lme/android/browser/SnapshotBar;->setVisibility(I)V

    .line 429
    :cond_2
    iget-object v0, p0, Lme/android/browser/TitleBar;->mNavBar:Lme/android/browser/NavigationBarBase;

    invoke-virtual {v0, v1}, Lme/android/browser/NavigationBarBase;->setVisibility(I)V

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 4
    .param p1, "newProgress"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 263
    const/16 v0, 0x64

    if-lt p1, v0, :cond_2

    .line 264
    iget-object v0, p0, Lme/android/browser/TitleBar;->mProgress:Lme/android/browser/PageProgressView;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lme/android/browser/PageProgressView;->setProgress(I)V

    .line 265
    iget-object v0, p0, Lme/android/browser/TitleBar;->mProgress:Lme/android/browser/PageProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lme/android/browser/PageProgressView;->setVisibility(I)V

    .line 266
    iput-boolean v2, p0, Lme/android/browser/TitleBar;->mInLoad:Z

    .line 267
    iget-object v0, p0, Lme/android/browser/TitleBar;->mNavBar:Lme/android/browser/NavigationBarBase;

    invoke-virtual {v0}, Lme/android/browser/NavigationBarBase;->onProgressStopped()V

    .line 269
    invoke-virtual {p0}, Lme/android/browser/TitleBar;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lme/android/browser/TitleBar;->wantsToBeVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-boolean v0, p0, Lme/android/browser/TitleBar;->mUseQuickControls:Z

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {p0}, Lme/android/browser/TitleBar;->hide()V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lme/android/browser/TitleBar;->mBaseUi:Lme/android/browser/BaseUi;

    invoke-virtual {v0}, Lme/android/browser/BaseUi;->showTitleBarForDuration()V

    goto :goto_0

    .line 277
    :cond_2
    iget-boolean v0, p0, Lme/android/browser/TitleBar;->mInLoad:Z

    if-nez v0, :cond_3

    .line 278
    iget-object v0, p0, Lme/android/browser/TitleBar;->mProgress:Lme/android/browser/PageProgressView;

    invoke-virtual {v0, v2}, Lme/android/browser/PageProgressView;->setVisibility(I)V

    .line 279
    iput-boolean v3, p0, Lme/android/browser/TitleBar;->mInLoad:Z

    .line 280
    iget-object v0, p0, Lme/android/browser/TitleBar;->mNavBar:Lme/android/browser/NavigationBarBase;

    invoke-virtual {v0}, Lme/android/browser/NavigationBarBase;->onProgressStarted()V

    .line 282
    :cond_3
    iget-object v0, p0, Lme/android/browser/TitleBar;->mProgress:Lme/android/browser/PageProgressView;

    mul-int/lit16 v1, p1, 0x2710

    .line 283
    div-int/lit8 v1, v1, 0x64

    .line 282
    invoke-virtual {v0, v1}, Lme/android/browser/PageProgressView;->setProgress(I)V

    .line 284
    iget-boolean v0, p0, Lme/android/browser/TitleBar;->mUseQuickControls:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lme/android/browser/TitleBar;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_4

    .line 285
    invoke-virtual {p0, v3}, Lme/android/browser/TitleBar;->setShowProgressOnly(Z)V

    .line 287
    :cond_4
    iget-boolean v0, p0, Lme/android/browser/TitleBar;->mShowing:Z

    if-nez v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lme/android/browser/TitleBar;->show()V

    goto :goto_0
.end method

.method setShowProgressOnly(Z)V
    .locals 2
    .param p1, "progress"    # Z

    .prologue
    .line 158
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lme/android/browser/TitleBar;->wantsToBeVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lme/android/browser/TitleBar;->mNavBar:Lme/android/browser/NavigationBarBase;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lme/android/browser/NavigationBarBase;->setVisibility(I)V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lme/android/browser/TitleBar;->mNavBar:Lme/android/browser/NavigationBarBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/android/browser/NavigationBarBase;->setVisibility(I)V

    goto :goto_0
.end method

.method setSkipTitleBarAnimations(Z)V
    .locals 0
    .param p1, "skip"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lme/android/browser/TitleBar;->mSkipTitleBarAnimations:Z

    .line 167
    return-void
.end method

.method public setUseQuickControls(Z)V
    .locals 1
    .param p1, "use"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lme/android/browser/TitleBar;->mUseQuickControls:Z

    .line 149
    invoke-direct {p0}, Lme/android/browser/TitleBar;->setFixedTitleBar()V

    .line 150
    if-eqz p1, :cond_0

    .line 151
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lme/android/browser/TitleBar;->setVisibility(I)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lme/android/browser/TitleBar;->setVisibility(I)V

    goto :goto_0
.end method

.method setupTitleBarAnimator(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 170
    iget-object v2, p0, Lme/android/browser/TitleBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 171
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0e0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 172
    .local v0, "duration":I
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .line 173
    const/high16 v3, 0x40200000

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 172
    invoke-virtual {p1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 174
    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 175
    return-void
.end method

.method show()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 178
    invoke-virtual {p0, v5}, Lme/android/browser/TitleBar;->cancelTitleBarAnimation(Z)V

    .line 179
    iget-boolean v2, p0, Lme/android/browser/TitleBar;->mUseQuickControls:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lme/android/browser/TitleBar;->mSkipTitleBarAnimations:Z

    if-eqz v2, :cond_1

    .line 180
    :cond_0
    invoke-virtual {p0, v5}, Lme/android/browser/TitleBar;->setVisibility(I)V

    .line 181
    invoke-virtual {p0, v4}, Lme/android/browser/TitleBar;->setTranslationY(F)V

    .line 194
    :goto_0
    iput-boolean v6, p0, Lme/android/browser/TitleBar;->mShowing:Z

    .line 195
    return-void

    .line 183
    :cond_1
    invoke-direct {p0}, Lme/android/browser/TitleBar;->getVisibleTitleHeight()I

    move-result v1

    .line 184
    .local v1, "visibleHeight":I
    invoke-virtual {p0}, Lme/android/browser/TitleBar;->getEmbeddedHeight()I

    move-result v2

    neg-int v2, v2

    add-int/2addr v2, v1

    int-to-float v0, v2

    .line 185
    .local v0, "startPos":F
    invoke-virtual {p0}, Lme/android/browser/TitleBar;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_2

    .line 186
    invoke-virtual {p0}, Lme/android/browser/TitleBar;->getTranslationY()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 189
    :cond_2
    const-string v2, "translationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 190
    aput v0, v3, v5

    aput v4, v3, v6

    .line 188
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lme/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    .line 191
    iget-object v2, p0, Lme/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    invoke-virtual {p0, v2}, Lme/android/browser/TitleBar;->setupTitleBarAnimator(Landroid/animation/Animator;)V

    .line 192
    iget-object v2, p0, Lme/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public showAutoLogin(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    .line 317
    iget-boolean v0, p0, Lme/android/browser/TitleBar;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lme/android/browser/TitleBar;->mBaseUi:Lme/android/browser/BaseUi;

    invoke-virtual {v0}, Lme/android/browser/BaseUi;->showTitleBar()V

    .line 320
    :cond_0
    iget-object v0, p0, Lme/android/browser/TitleBar;->mAutoLogin:Lme/android/browser/AutologinBar;

    if-nez v0, :cond_1

    .line 321
    invoke-direct {p0}, Lme/android/browser/TitleBar;->inflateAutoLoginBar()V

    .line 323
    :cond_1
    iget-object v0, p0, Lme/android/browser/TitleBar;->mAutoLogin:Lme/android/browser/AutologinBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/android/browser/AutologinBar;->setVisibility(I)V

    .line 324
    if-eqz p1, :cond_2

    .line 325
    iget-object v0, p0, Lme/android/browser/TitleBar;->mAutoLogin:Lme/android/browser/AutologinBar;

    .line 326
    invoke-virtual {p0}, Lme/android/browser/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f050000

    .line 325
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/android/browser/AutologinBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 328
    :cond_2
    return-void
.end method

.method public updateAutoLogin(Lme/android/browser/Tab;Z)V
    .locals 1
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "animate"    # Z

    .prologue
    .line 307
    iget-object v0, p0, Lme/android/browser/TitleBar;->mAutoLogin:Lme/android/browser/AutologinBar;

    if-nez v0, :cond_1

    .line 308
    invoke-virtual {p1}, Lme/android/browser/Tab;->getDeviceAccountLogin()Lme/android/browser/DeviceAccountLogin;

    move-result-object v0

    if-nez v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-direct {p0}, Lme/android/browser/TitleBar;->inflateAutoLoginBar()V

    .line 313
    :cond_1
    iget-object v0, p0, Lme/android/browser/TitleBar;->mAutoLogin:Lme/android/browser/AutologinBar;

    invoke-virtual {v0, p1, p2}, Lme/android/browser/AutologinBar;->updateAutoLogin(Lme/android/browser/Tab;Z)V

    goto :goto_0
.end method

.method public useQuickControls()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lme/android/browser/TitleBar;->mUseQuickControls:Z

    return v0
.end method

.method public wantsToBeVisible()Z
    .locals 1

    .prologue
    .line 363
    invoke-direct {p0}, Lme/android/browser/TitleBar;->inAutoLogin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    iget-object v0, p0, Lme/android/browser/TitleBar;->mSnapshotBar:Lme/android/browser/SnapshotBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/android/browser/TitleBar;->mSnapshotBar:Lme/android/browser/SnapshotBar;

    invoke-virtual {v0}, Lme/android/browser/SnapshotBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lme/android/browser/TitleBar;->mSnapshotBar:Lme/android/browser/SnapshotBar;

    invoke-virtual {v0}, Lme/android/browser/SnapshotBar;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    .line 363
    goto :goto_0
.end method
