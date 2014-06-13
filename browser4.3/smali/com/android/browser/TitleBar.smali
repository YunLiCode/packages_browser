.class public Lcom/android/browser/TitleBar;
.super Landroid/widget/RelativeLayout;
.source "TitleBar.java"


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAutoLogin:Lcom/android/browser/AutologinBar;

.field private mBaseUi:Lcom/android/browser/BaseUi;

.field private mContentView:Landroid/widget/FrameLayout;

.field private mHideTileBarAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mInLoad:Z

.field private mIsFixedTitleBar:Z

.field private mNavBar:Lcom/android/browser/NavigationBarBase;

.field private mProgress:Lcom/android/browser/PageProgressView;

.field private mShowing:Z

.field private mSkipTitleBarAnimations:Z

.field private mSnapshotBar:Lcom/android/browser/SnapshotBar;

.field private mTitleBarAnimator:Landroid/animation/Animator;

.field private mUiController:Lcom/android/browser/UiController;

.field private mUseQuickControls:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/UiController;Lcom/android/browser/BaseUi;Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/browser/UiController;
    .param p3, "ui"    # Lcom/android/browser/BaseUi;
    .param p4, "contentView"    # Landroid/widget/FrameLayout;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 236
    new-instance v0, Lcom/android/browser/TitleBar$1;

    invoke-direct {v0, p0}, Lcom/android/browser/TitleBar$1;-><init>(Lcom/android/browser/TitleBar;)V

    iput-object v0, p0, Lcom/android/browser/TitleBar;->mHideTileBarAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 68
    iput-object p2, p0, Lcom/android/browser/TitleBar;->mUiController:Lcom/android/browser/UiController;

    .line 69
    iput-object p3, p0, Lcom/android/browser/TitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    .line 70
    iput-object p4, p0, Lcom/android/browser/TitleBar;->mContentView:Landroid/widget/FrameLayout;

    .line 71
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/browser/TitleBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 72
    invoke-direct {p0, p1}, Lcom/android/browser/TitleBar;->initLayout(Landroid/content/Context;)V

    .line 73
    invoke-direct {p0}, Lcom/android/browser/TitleBar;->setFixedTitleBar()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/TitleBar;)Lcom/android/browser/AutologinBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/TitleBar;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/TitleBar;)Lcom/android/browser/BaseUi;
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/TitleBar;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    return-object v0
.end method

.method private calculateEmbeddedHeight()I
    .locals 2

    .prologue
    .line 303
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mNavBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v1}, Lcom/android/browser/NavigationBarBase;->getHeight()I

    move-result v0

    .line 304
    .local v0, "height":I
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    invoke-virtual {v1}, Lcom/android/browser/AutologinBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    invoke-virtual {v1}, Lcom/android/browser/AutologinBar;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 307
    :cond_0
    return v0
.end method

.method private getVisibleTitleHeight()I
    .locals 3

    .prologue
    .line 258
    iget-object v2, p0, Lcom/android/browser/TitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v2}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 259
    .local v0, "tab":Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 260
    .local v1, "webview":Landroid/webkit/WebView;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v2

    :goto_1
    return v2

    .line 259
    .end local v1    # "webview":Landroid/webkit/WebView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 260
    .restart local v1    # "webview":Landroid/webkit/WebView;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private inAutoLogin()Z
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    invoke-virtual {v0}, Lcom/android/browser/AutologinBar;->getVisibility()I

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
    .line 85
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    if-eqz v1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    const v1, 0x7f0d0076

    invoke-virtual {p0, v1}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 90
    .local v0, "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/browser/AutologinBar;

    iput-object v1, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    .line 91
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    invoke-virtual {v1, p0}, Lcom/android/browser/AutologinBar;->setTitleBar(Lcom/android/browser/TitleBar;)V

    goto :goto_0
.end method

.method private inflateSnapshotBar()V
    .locals 2

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mSnapshotBar:Lcom/android/browser/SnapshotBar;

    if-eqz v1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 99
    :cond_0
    const v1, 0x7f0d0075

    invoke-virtual {p0, v1}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 100
    .local v0, "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/browser/SnapshotBar;

    iput-object v1, p0, Lcom/android/browser/TitleBar;->mSnapshotBar:Lcom/android/browser/SnapshotBar;

    .line 101
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mSnapshotBar:Lcom/android/browser/SnapshotBar;

    invoke-virtual {v1, p0}, Lcom/android/browser/SnapshotBar;->setTitleBar(Lcom/android/browser/TitleBar;)V

    goto :goto_0
.end method

.method private initLayout(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 78
    .local v0, "factory":Landroid/view/LayoutInflater;
    const v1, 0x7f040031

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 79
    const v1, 0x7f0d0077

    invoke-virtual {p0, v1}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/browser/PageProgressView;

    iput-object v1, p0, Lcom/android/browser/TitleBar;->mProgress:Lcom/android/browser/PageProgressView;

    .line 80
    const v1, 0x7f0d0074

    invoke-virtual {p0, v1}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/browser/NavigationBarBase;

    iput-object v1, p0, Lcom/android/browser/TitleBar;->mNavBar:Lcom/android/browser/NavigationBarBase;

    .line 81
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mNavBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v1, p0}, Lcom/android/browser/NavigationBarBase;->setTitleBar(Lcom/android/browser/TitleBar;)V

    .line 82
    return-void
.end method

.method private makeLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 406
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private setFixedTitleBar()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 122
    iget-boolean v4, p0, Lcom/android/browser/TitleBar;->mUseQuickControls:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/browser/TitleBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    .line 124
    .local v0, "isFixed":Z
    :goto_0
    iget-object v4, p0, Lcom/android/browser/TitleBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    or-int/2addr v0, v4

    .line 126
    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 127
    .local v1, "parent":Landroid/view/ViewGroup;
    iget-boolean v4, p0, Lcom/android/browser/TitleBar;->mIsFixedTitleBar:Z

    if-ne v4, v0, :cond_1

    if-eqz v1, :cond_1

    .line 141
    :goto_1
    return-void

    .end local v0    # "isFixed":Z
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_0
    move v0, v3

    .line 122
    goto :goto_0

    .line 128
    .restart local v0    # "isFixed":Z
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    :cond_1
    iput-boolean v0, p0, Lcom/android/browser/TitleBar;->mIsFixedTitleBar:Z

    .line 129
    invoke-virtual {p0, v2}, Lcom/android/browser/TitleBar;->setSkipTitleBarAnimations(Z)V

    .line 130
    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->show()V

    .line 131
    invoke-virtual {p0, v3}, Lcom/android/browser/TitleBar;->setSkipTitleBarAnimations(Z)V

    .line 132
    if-eqz v1, :cond_2

    .line 133
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 135
    :cond_2
    iget-boolean v2, p0, Lcom/android/browser/TitleBar;->mIsFixedTitleBar:Z

    if-eqz v2, :cond_3

    .line 136
    iget-object v2, p0, Lcom/android/browser/TitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v2, p0}, Lcom/android/browser/BaseUi;->addFixedTitleBar(Landroid/view/View;)V

    goto :goto_1

    .line 138
    :cond_3
    iget-object v2, p0, Lcom/android/browser/TitleBar;->mContentView:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/android/browser/TitleBar;->makeLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, p0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v2, p0, Lcom/android/browser/TitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v2, v3}, Lcom/android/browser/BaseUi;->setContentViewMarginTop(I)V

    goto :goto_1
.end method


# virtual methods
.method cancelTitleBarAnimation(Z)V
    .locals 1
    .param p1, "reset"    # Z

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    .line 231
    :cond_0
    if-eqz p1, :cond_1

    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/TitleBar;->setTranslationY(F)V

    .line 234
    :cond_1
    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "dir"    # I

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 413
    .local v0, "web":Landroid/webkit/WebView;
    const/16 v1, 0x82

    if-ne v1, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->hasFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 417
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
    .line 381
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 382
    .local v0, "t":Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 385
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEmbeddedHeight()I
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mUseQuickControls:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mIsFixedTitleBar:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 299
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/browser/TitleBar;->calculateEmbeddedHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getNavigationBar()Lcom/android/browser/NavigationBarBase;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mNavBar:Lcom/android/browser/NavigationBarBase;

    return-object v0
.end method

.method public getProgressView()Lcom/android/browser/PageProgressView;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mProgress:Lcom/android/browser/PageProgressView;

    return-object v0
.end method

.method public getUi()Lcom/android/browser/BaseUi;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    return-object v0
.end method

.method public getUiController()Lcom/android/browser/UiController;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mUiController:Lcom/android/browser/UiController;

    return-object v0
.end method

.method hide()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 202
    iget-boolean v1, p0, Lcom/android/browser/TitleBar;->mUseQuickControls:Z

    if-eqz v1, :cond_1

    .line 203
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/browser/TitleBar;->setVisibility(I)V

    .line 219
    :goto_0
    iput-boolean v5, p0, Lcom/android/browser/TitleBar;->mShowing:Z

    .line 220
    :cond_0
    return-void

    .line 205
    :cond_1
    iget-boolean v1, p0, Lcom/android/browser/TitleBar;->mIsFixedTitleBar:Z

    if-nez v1, :cond_0

    .line 206
    iget-boolean v1, p0, Lcom/android/browser/TitleBar;->mSkipTitleBarAnimations:Z

    if-nez v1, :cond_2

    .line 207
    invoke-virtual {p0, v5}, Lcom/android/browser/TitleBar;->cancelTitleBarAnimation(Z)V

    .line 208
    invoke-direct {p0}, Lcom/android/browser/TitleBar;->getVisibleTitleHeight()I

    move-result v0

    .line 209
    .local v0, "visibleHeight":I
    const-string v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->getTranslationY()F

    move-result v3

    aput v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->getEmbeddedHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v4, v0

    int-to-float v4, v4

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    .line 212
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/browser/TitleBar;->mHideTileBarAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 213
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    invoke-virtual {p0, v1}, Lcom/android/browser/TitleBar;->setupTitleBarAnimator(Landroid/animation/Animator;)V

    .line 214
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 216
    .end local v0    # "visibleHeight":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->onScrollChanged()V

    goto :goto_0
.end method

.method public hideAutoLogin(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    const/16 v2, 0x8

    .line 335
    iget-boolean v1, p0, Lcom/android/browser/TitleBar;->mUseQuickControls:Z

    if-eqz v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->hideTitleBar()V

    .line 337
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    invoke-virtual {v1, v2}, Lcom/android/browser/AutologinBar;->setVisibility(I)V

    .line 338
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->refreshWebView()V

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    if-eqz p1, :cond_2

    .line 341
    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 343
    .local v0, "anim":Landroid/view/animation/Animation;
    new-instance v1, Lcom/android/browser/TitleBar$2;

    invoke-direct {v1, p0}, Lcom/android/browser/TitleBar$2;-><init>(Lcom/android/browser/TitleBar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 358
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    invoke-virtual {v1, v0}, Lcom/android/browser/AutologinBar;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 359
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_2
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    invoke-virtual {v1}, Lcom/android/browser/AutologinBar;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    invoke-virtual {v1, v2}, Lcom/android/browser/AutologinBar;->setVisibility(I)V

    .line 361
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->refreshWebView()V

    goto :goto_0
.end method

.method public isEditingUrl()Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mNavBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0}, Lcom/android/browser/NavigationBarBase;->isEditingUrl()Z

    move-result v0

    return v0
.end method

.method public isInLoad()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mInLoad:Z

    return v0
.end method

.method isShowing()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mShowing:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 107
    invoke-direct {p0}, Lcom/android/browser/TitleBar;->setFixedTitleBar()V

    .line 108
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 113
    iget-boolean v1, p0, Lcom/android/browser/TitleBar;->mIsFixedTitleBar:Z

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/android/browser/TitleBar;->calculateEmbeddedHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 115
    .local v0, "margin":I
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    neg-int v2, v0

    invoke-virtual {v1, v2}, Lcom/android/browser/BaseUi;->setContentViewMarginTop(I)V

    .line 119
    .end local v0    # "margin":I
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/browser/BaseUi;->setContentViewMarginTop(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/android/browser/TitleBar;->setFixedTitleBar()V

    .line 445
    return-void
.end method

.method public onScrollChanged()V
    .locals 2

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mIsFixedTitleBar:Z

    if-nez v0, :cond_0

    .line 439
    invoke-direct {p0}, Lcom/android/browser/TitleBar;->getVisibleTitleHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->getEmbeddedHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/browser/TitleBar;->setTranslationY(F)V

    .line 441
    :cond_0
    return-void
.end method

.method public onTabDataChanged(Lcom/android/browser/Tab;)V
    .locals 3
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 421
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mSnapshotBar:Lcom/android/browser/SnapshotBar;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mSnapshotBar:Lcom/android/browser/SnapshotBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/SnapshotBar;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 425
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isSnapshot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    invoke-direct {p0}, Lcom/android/browser/TitleBar;->inflateSnapshotBar()V

    .line 427
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mSnapshotBar:Lcom/android/browser/SnapshotBar;

    invoke-virtual {v0, v1}, Lcom/android/browser/SnapshotBar;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mNavBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0, v2}, Lcom/android/browser/NavigationBarBase;->setVisibility(I)V

    .line 435
    :goto_0
    return-void

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mSnapshotBar:Lcom/android/browser/SnapshotBar;

    if-eqz v0, :cond_2

    .line 431
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mSnapshotBar:Lcom/android/browser/SnapshotBar;

    invoke-virtual {v0, v2}, Lcom/android/browser/SnapshotBar;->setVisibility(I)V

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mNavBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0, v1}, Lcom/android/browser/NavigationBarBase;->setVisibility(I)V

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 4
    .param p1, "newProgress"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 267
    const/16 v0, 0x64

    if-lt p1, v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mProgress:Lcom/android/browser/PageProgressView;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/android/browser/PageProgressView;->setProgress(I)V

    .line 269
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mProgress:Lcom/android/browser/PageProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/browser/PageProgressView;->setVisibility(I)V

    .line 270
    iput-boolean v2, p0, Lcom/android/browser/TitleBar;->mInLoad:Z

    .line 271
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mNavBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0}, Lcom/android/browser/NavigationBarBase;->onProgressStopped()V

    .line 273
    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->wantsToBeVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mUseQuickControls:Z

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->hide()V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v0}, Lcom/android/browser/BaseUi;->showTitleBarForDuration()V

    goto :goto_0

    .line 281
    :cond_2
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mInLoad:Z

    if-nez v0, :cond_3

    .line 282
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mProgress:Lcom/android/browser/PageProgressView;

    invoke-virtual {v0, v2}, Lcom/android/browser/PageProgressView;->setVisibility(I)V

    .line 283
    iput-boolean v3, p0, Lcom/android/browser/TitleBar;->mInLoad:Z

    .line 284
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mNavBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0}, Lcom/android/browser/NavigationBarBase;->onProgressStarted()V

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mProgress:Lcom/android/browser/PageProgressView;

    mul-int/lit16 v1, p1, 0x2710

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/browser/PageProgressView;->setProgress(I)V

    .line 288
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mUseQuickControls:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_4

    .line 289
    invoke-virtual {p0, v3}, Lcom/android/browser/TitleBar;->setShowProgressOnly(Z)V

    .line 291
    :cond_4
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mShowing:Z

    if-nez v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->show()V

    goto :goto_0
.end method

.method setShowProgressOnly(Z)V
    .locals 2
    .param p1, "progress"    # Z

    .prologue
    .line 162
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->wantsToBeVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mNavBar:Lcom/android/browser/NavigationBarBase;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/browser/NavigationBarBase;->setVisibility(I)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mNavBar:Lcom/android/browser/NavigationBarBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/NavigationBarBase;->setVisibility(I)V

    goto :goto_0
.end method

.method setSkipTitleBarAnimations(Z)V
    .locals 0
    .param p1, "skip"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/browser/TitleBar;->mSkipTitleBarAnimations:Z

    .line 171
    return-void
.end method

.method public setUseQuickControls(Z)V
    .locals 1
    .param p1, "use"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/android/browser/TitleBar;->mUseQuickControls:Z

    .line 153
    invoke-direct {p0}, Lcom/android/browser/TitleBar;->setFixedTitleBar()V

    .line 154
    if-eqz p1, :cond_0

    .line 155
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/browser/TitleBar;->setVisibility(I)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/TitleBar;->setVisibility(I)V

    goto :goto_0
.end method

.method setupTitleBarAnimator(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 174
    iget-object v2, p0, Lcom/android/browser/TitleBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 175
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0e0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 176
    .local v0, "duration":I
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40200000

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 178
    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 179
    return-void
.end method

.method show()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 182
    invoke-virtual {p0, v5}, Lcom/android/browser/TitleBar;->cancelTitleBarAnimation(Z)V

    .line 183
    iget-boolean v2, p0, Lcom/android/browser/TitleBar;->mUseQuickControls:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/browser/TitleBar;->mSkipTitleBarAnimations:Z

    if-eqz v2, :cond_1

    .line 184
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/browser/TitleBar;->setVisibility(I)V

    .line 185
    invoke-virtual {p0, v4}, Lcom/android/browser/TitleBar;->setTranslationY(F)V

    .line 198
    :goto_0
    iput-boolean v6, p0, Lcom/android/browser/TitleBar;->mShowing:Z

    .line 199
    return-void

    .line 187
    :cond_1
    invoke-direct {p0}, Lcom/android/browser/TitleBar;->getVisibleTitleHeight()I

    move-result v1

    .line 188
    .local v1, "visibleHeight":I
    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->getEmbeddedHeight()I

    move-result v2

    neg-int v2, v2

    add-int/2addr v2, v1

    int-to-float v0, v2

    .line 189
    .local v0, "startPos":F
    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_2

    .line 190
    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->getTranslationY()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 192
    :cond_2
    const-string v2, "translationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v0, v3, v5

    aput v4, v3, v6

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    .line 195
    iget-object v2, p0, Lcom/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    invoke-virtual {p0, v2}, Lcom/android/browser/TitleBar;->setupTitleBarAnimator(Landroid/animation/Animator;)V

    .line 196
    iget-object v2, p0, Lcom/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public showAutoLogin(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v0}, Lcom/android/browser/BaseUi;->showTitleBar()V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    if-nez v0, :cond_1

    .line 325
    invoke-direct {p0}, Lcom/android/browser/TitleBar;->inflateAutoLoginBar()V

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/AutologinBar;->setVisibility(I)V

    .line 328
    if-eqz p1, :cond_2

    .line 329
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f050000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/AutologinBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 332
    :cond_2
    return-void
.end method

.method public updateAutoLogin(Lcom/android/browser/Tab;Z)V
    .locals 1
    .param p1, "tab"    # Lcom/android/browser/Tab;
    .param p2, "animate"    # Z

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    if-nez v0, :cond_1

    .line 312
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getDeviceAccountLogin()Lcom/android/browser/DeviceAccountLogin;

    move-result-object v0

    if-nez v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/TitleBar;->inflateAutoLoginBar()V

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/AutologinBar;->updateAutoLogin(Lcom/android/browser/Tab;Z)V

    goto :goto_0
.end method

.method public useQuickControls()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mUseQuickControls:Z

    return v0
.end method

.method public wantsToBeVisible()Z
    .locals 1

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/android/browser/TitleBar;->inAutoLogin()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/TitleBar;->mSnapshotBar:Lcom/android/browser/SnapshotBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/TitleBar;->mSnapshotBar:Lcom/android/browser/SnapshotBar;

    invoke-virtual {v0}, Lcom/android/browser/SnapshotBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/TitleBar;->mSnapshotBar:Lcom/android/browser/SnapshotBar;

    invoke-virtual {v0}, Lcom/android/browser/SnapshotBar;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
