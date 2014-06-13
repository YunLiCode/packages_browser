.class public abstract Lcom/android/browser/BaseUi;
.super Ljava/lang/Object;
.source "BaseUi.java"

# interfaces
.implements Lcom/android/browser/UI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BaseUi$FullscreenHolder;
    }
.end annotation


# static fields
.field protected static final COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

.field protected static final COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field protected mActiveTab:Lcom/android/browser/Tab;

.field mActivity:Landroid/app/Activity;

.field private mActivityPaused:Z

.field private mBlockFocusAnimations:Z

.field protected mContentView:Landroid/widget/FrameLayout;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field protected mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mDefaultVideoPoster:Landroid/graphics/Bitmap;

.field private mErrorConsoleContainer:Landroid/widget/LinearLayout;

.field private mFixedTitlebarContainer:Landroid/widget/FrameLayout;

.field protected mFullscreenContainer:Landroid/widget/FrameLayout;

.field protected mGenericFavicon:Landroid/graphics/drawable/Drawable;

.field protected mHandler:Landroid/os/Handler;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLockIconMixed:Landroid/graphics/drawable/Drawable;

.field private mLockIconSecure:Landroid/graphics/drawable/Drawable;

.field private mNavigationBar:Lcom/android/browser/NavigationBarBase;

.field private mOriginalOrientation:I

.field protected mPieControl:Lcom/android/browser/PieControl;

.field private mStopToast:Landroid/widget/Toast;

.field mTabControl:Lcom/android/browser/TabControl;

.field protected mTitleBar:Lcom/android/browser/TitleBar;

.field mUiController:Lcom/android/browser/UiController;

.field private mUrlBarAutoShowManager:Lcom/android/browser/UrlBarAutoShowManager;

.field protected mUseQuickControls:Z

.field private mVideoProgressView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 67
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 72
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/android/browser/BaseUi;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V
    .locals 6
    .param p1, "browser"    # Landroid/app/Activity;
    .param p2, "controller"    # Lcom/android/browser/UiController;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    .line 824
    new-instance v2, Lcom/android/browser/BaseUi$2;

    invoke-direct {v2, p0}, Lcom/android/browser/BaseUi$2;-><init>(Lcom/android/browser/BaseUi;)V

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mHandler:Landroid/os/Handler;

    .line 119
    iput-object p1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    .line 120
    iput-object p2, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    .line 121
    invoke-interface {p2}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mTabControl:Lcom/android/browser/TabControl;

    .line 122
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 123
    .local v1, "res":Landroid/content/res/Resources;
    const-string v2, "input_method"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 125
    const v2, 0x7f020042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mLockIconSecure:Landroid/graphics/drawable/Drawable;

    .line 126
    const v2, 0x7f020043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mLockIconMixed:Landroid/graphics/drawable/Drawable;

    .line 127
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 129
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040014

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 131
    const v2, 0x7f0d0040

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mFixedTitlebarContainer:Landroid/widget/FrameLayout;

    .line 133
    const v2, 0x7f0d0041

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    .line 135
    const v2, 0x7f0d003d

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 137
    const v2, 0x7f0d003f

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    .line 139
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->useFullscreen()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/browser/BaseUi;->setFullscreen(Z)V

    .line 140
    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mGenericFavicon:Landroid/graphics/drawable/Drawable;

    .line 142
    new-instance v2, Lcom/android/browser/TitleBar;

    iget-object v3, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    iget-object v5, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-direct {v2, v3, v4, p0, v5}, Lcom/android/browser/TitleBar;-><init>(Landroid/content/Context;Lcom/android/browser/UiController;Lcom/android/browser/BaseUi;Landroid/widget/FrameLayout;)V

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    .line 144
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/android/browser/TitleBar;->setProgress(I)V

    .line 145
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v2}, Lcom/android/browser/TitleBar;->getNavigationBar()Lcom/android/browser/NavigationBarBase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    .line 146
    new-instance v2, Lcom/android/browser/UrlBarAutoShowManager;

    invoke-direct {v2, p0}, Lcom/android/browser/UrlBarAutoShowManager;-><init>(Lcom/android/browser/BaseUi;)V

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mUrlBarAutoShowManager:Lcom/android/browser/UrlBarAutoShowManager;

    .line 147
    return-void
.end method

.method private cancelStopToast()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    .line 154
    :cond_0
    return-void
.end method

.method private removeTabFromContentView(Lcom/android/browser/Tab;)V
    .locals 5
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->hideTitleBar()V

    .line 369
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 370
    .local v2, "mainView":Landroid/webkit/WebView;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getViewContainer()Landroid/view/View;

    move-result-object v0

    .line 371
    .local v0, "container":Landroid/view/View;
    if-nez v2, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    const v4, 0x7f0d006d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 379
    .local v3, "wrapper":Landroid/widget/FrameLayout;
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 380
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 381
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v4}, Lcom/android/browser/UiController;->endActionMode()V

    .line 382
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v4, p1}, Lcom/android/browser/UiController;->removeSubWindow(Lcom/android/browser/Tab;)V

    .line 383
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/android/browser/Tab;->getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;

    move-result-object v1

    .line 384
    .local v1, "errorConsole":Lcom/android/browser/ErrorConsoleView;
    if-eqz v1, :cond_0

    .line 385
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private updateLockIconImage(Lcom/android/browser/Tab$SecurityState;)V
    .locals 2
    .param p1, "securityState"    # Lcom/android/browser/Tab$SecurityState;

    .prologue
    .line 607
    const/4 v0, 0x0

    .line 608
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    sget-object v1, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_SECURE:Lcom/android/browser/Tab$SecurityState;

    if-ne p1, v1, :cond_1

    .line 609
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mLockIconSecure:Landroid/graphics/drawable/Drawable;

    .line 616
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v1, v0}, Lcom/android/browser/NavigationBarBase;->setLock(Landroid/graphics/drawable/Drawable;)V

    .line 617
    return-void

    .line 610
    :cond_1
    sget-object v1, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_MIXED:Lcom/android/browser/Tab$SecurityState;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_BAD_CERTIFICATE:Lcom/android/browser/Tab$SecurityState;

    if-ne p1, v1, :cond_0

    .line 614
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mLockIconMixed:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public addFixedTitleBar(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mFixedTitlebarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 858
    return-void
.end method

.method public addTab(Lcom/android/browser/Tab;)V
    .locals 0
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 264
    return-void
.end method

.method public attachSubWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 449
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    return-void
.end method

.method public attachTab(Lcom/android/browser/Tab;)V
    .locals 0
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 336
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 337
    return-void
.end method

.method protected attachTabToContentView(Lcom/android/browser/Tab;)V
    .locals 6
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 340
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    if-nez v4, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getViewContainer()Landroid/view/View;

    move-result-object v0

    .line 344
    .local v0, "container":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 347
    .local v1, "mainView":Landroid/webkit/WebView;
    const v4, 0x7f0d006d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 349
    .local v3, "wrapper":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 350
    .local v2, "parent":Landroid/view/ViewGroup;
    if-eq v2, v3, :cond_3

    .line 351
    if-eqz v2, :cond_2

    .line 352
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 354
    :cond_2
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 356
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2    # "parent":Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 357
    .restart local v2    # "parent":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    if-eq v2, v4, :cond_5

    .line 358
    if-eqz v2, :cond_4

    .line 359
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 361
    :cond_4
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    sget-object v5, Lcom/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4, v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    :cond_5
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v4, p1}, Lcom/android/browser/UiController;->attachSubWindow(Lcom/android/browser/Tab;)V

    goto :goto_0
.end method

.method public blockFocusAnimations()Z
    .locals 1

    .prologue
    .line 871
    iget-boolean v0, p0, Lcom/android/browser/BaseUi;->mBlockFocusAnimations:Z

    return v0
.end method

.method public bookmarkedStatusHasChanged(Lcom/android/browser/Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 241
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isBookmarkedSite()Z

    move-result v0

    .line 243
    .local v0, "isBookmark":Z
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v1, v0}, Lcom/android/browser/NavigationBarBase;->setCurrentUrlIsBookmark(Z)V

    .line 245
    .end local v0    # "isBookmark":Z
    :cond_0
    return-void
.end method

.method canShowTitleBar()Z
    .locals 1

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->isTitleBarShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->isInCustomActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createSubWindow(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V
    .locals 8
    .param p1, "tab"    # Lcom/android/browser/Tab;
    .param p2, "subView"    # Landroid/webkit/WebView;

    .prologue
    const/4 v7, -0x1

    .line 416
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040013

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 418
    .local v3, "subViewContainer":Landroid/view/View;
    const v4, 0x7f0d003c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 420
    .local v2, "inner":Landroid/view/ViewGroup;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    const v4, 0x7f0d003b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 424
    .local v0, "cancel":Landroid/widget/ImageButton;
    move-object v1, p2

    .line 425
    .local v1, "cancelSubView":Landroid/webkit/WebView;
    new-instance v4, Lcom/android/browser/BaseUi$1;

    invoke-direct {v4, p0, v1}, Lcom/android/browser/BaseUi$1;-><init>(Lcom/android/browser/BaseUi;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    invoke-virtual {p1, p2}, Lcom/android/browser/Tab;->setSubWebView(Landroid/webkit/WebView;)V

    .line 432
    invoke-virtual {p1, v3}, Lcom/android/browser/Tab;->setSubViewContainer(Landroid/view/View;)V

    .line 433
    return-void
.end method

.method public detachTab(Lcom/android/browser/Tab;)V
    .locals 0
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/android/browser/BaseUi;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 332
    return-void
.end method

.method public editUrl(ZZ)V
    .locals 1
    .param p1, "clearInput"    # Z
    .param p2, "forceIME"    # Z

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->isInCustomActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->endActionMode()V

    .line 467
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->showTitleBar()V

    .line 468
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->isSnapshot()Z

    move-result v0

    if-nez v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/NavigationBarBase;->startEditingUrl(ZZ)V

    .line 471
    :cond_1
    return-void
.end method

.method getActiveTab()Lcom/android/browser/Tab;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020016

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BaseUi;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFaviconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x2

    .line 783
    const/4 v2, 0x3

    new-array v6, v2, [Landroid/graphics/drawable/Drawable;

    .line 784
    .local v6, "array":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/PaintDrawable;

    const/high16 v4, -0x1000000

    invoke-direct {v3, v4}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    aput-object v3, v6, v2

    .line 785
    new-instance v7, Landroid/graphics/drawable/PaintDrawable;

    const/4 v2, -0x1

    invoke-direct {v7, v2}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 786
    .local v7, "p":Landroid/graphics/drawable/PaintDrawable;
    aput-object v7, v6, v1

    .line 787
    if-nez p1, :cond_0

    .line 788
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mGenericFavicon:Landroid/graphics/drawable/Drawable;

    aput-object v2, v6, v8

    .line 792
    :goto_0
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v0, "d":Landroid/graphics/drawable/LayerDrawable;
    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 793
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    move v1, v8

    move v2, v8

    move v3, v8

    move v4, v8

    move v5, v8

    .line 794
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 795
    return-object v0

    .line 790
    .end local v0    # "d":Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v6, v8

    goto :goto_0
.end method

.method public getTitleBar()Lcom/android/browser/TitleBar;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 3

    .prologue
    .line 735
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mVideoProgressView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 736
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 737
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BaseUi;->mVideoProgressView:Landroid/view/View;

    .line 740
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mVideoProgressView:Landroid/view/View;

    return-object v1
.end method

.method protected getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 755
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 835
    return-void
.end method

.method public hideAutoLogin(Lcom/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 582
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/BaseUi;->updateAutoLogin(Lcom/android/browser/Tab;Z)V

    .line 583
    return-void
.end method

.method protected hideTitleBar()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->hide()V

    .line 492
    :cond_0
    return-void
.end method

.method protected isActivityPaused()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/browser/BaseUi;->mActivityPaused:Z

    return v0
.end method

.method public isCustomViewShowing()Z
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEditingUrl()Z
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->isEditingUrl()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->inPageLoad()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTitleBarShowing()Z
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isWebShowing()Z
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsRestoreAllTabs()Z
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    return v0
.end method

.method public onActionModeFinished(Z)V
    .locals 0
    .param p1, "inLoad"    # Z

    .prologue
    .line 640
    return-void
.end method

.method public onBackKey()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->hideCustomView()V

    .line 194
    const/4 v0, 0x1

    .line 196
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 182
    return-void
.end method

.method public onContextMenuClosed(Landroid/view/Menu;Z)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inLoad"    # Z

    .prologue
    .line 691
    return-void
.end method

.method public onContextMenuCreated(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 687
    return-void
.end method

.method public onExtendedMenuClosed(Z)V
    .locals 0
    .param p1, "inLoad"    # Z

    .prologue
    .line 683
    return-void
.end method

.method public onExtendedMenuOpened()V
    .locals 0

    .prologue
    .line 670
    return-void
.end method

.method public onHideCustomView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 545
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    check-cast v1, Lcom/android/browser/BrowserWebView;

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserWebView;->setVisibility(I)V

    .line 546
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 556
    :goto_0
    return-void

    .line 548
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/browser/BaseUi;->setFullscreen(Z)V

    .line 549
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 550
    .local v0, "decor":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mFullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 551
    iput-object v3, p0, Lcom/android/browser/BaseUi;->mFullscreenContainer:Landroid/widget/FrameLayout;

    .line 552
    iput-object v3, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    .line 553
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 555
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/android/browser/BaseUi;->mOriginalOrientation:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onMenuKey()Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 674
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Z)V
    .locals 0
    .param p1, "inLoad"    # Z

    .prologue
    .line 679
    return-void
.end method

.method public onOptionsMenuOpened()V
    .locals 0

    .prologue
    .line 666
    return-void
.end method

.method public onPageStopped(Lcom/android/browser/Tab;)V
    .locals 3
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/android/browser/BaseUi;->cancelStopToast()V

    .line 250
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c0023

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    .line 253
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 255
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->isCustomViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->onHideCustomView()V

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/BaseUi;->cancelStopToast()V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BaseUi;->mActivityPaused:Z

    .line 164
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 657
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Lcom/android/browser/Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 233
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getLoadProgress()I

    move-result v0

    .line 234
    .local v0, "progress":I
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v0}, Lcom/android/browser/TitleBar;->setProgress(I)V

    .line 237
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 167
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/BaseUi;->mActivityPaused:Z

    .line 170
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 171
    .local v0, "ct":Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/browser/BaseUi;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->onResume()V

    .line 175
    return-void
.end method

.method public onSetWebView(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V
    .locals 6
    .param p1, "tab"    # Lcom/android/browser/Tab;
    .param p2, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 391
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getViewContainer()Landroid/view/View;

    move-result-object v0

    .line 392
    .local v0, "container":Landroid/view/View;
    if-nez v0, :cond_0

    .line 395
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04002e

    iget-object v4, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 397
    invoke-virtual {p1, v0}, Lcom/android/browser/Tab;->setViewContainer(Landroid/view/View;)V

    .line 399
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    if-eq v2, p2, :cond_1

    .line 401
    const v2, 0x7f0d006d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 403
    .local v1, "wrapper":Landroid/widget/FrameLayout;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 405
    .end local v1    # "wrapper":Landroid/widget/FrameLayout;
    :cond_1
    return-void
.end method

.method public onTabDataChanged(Lcom/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->setUrlTitle(Lcom/android/browser/Tab;)V

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->setFavicon(Lcom/android/browser/Tab;)V

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->updateLockIconToLatest(Lcom/android/browser/Tab;)V

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->updateNavigationState(Lcom/android/browser/Tab;)V

    .line 226
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 227
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0, p1}, Lcom/android/browser/NavigationBarBase;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->onProgressChanged(Lcom/android/browser/Tab;)V

    .line 229
    return-void
.end method

.method public onVoiceResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0, p1}, Lcom/android/browser/NavigationBarBase;->onVoiceResult(Ljava/lang/String;)V

    .line 877
    return-void
.end method

.method protected refreshWebView()V
    .locals 1

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 458
    .local v0, "web":Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 461
    :cond_0
    return-void
.end method

.method public removeSubWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "subviewContainer"    # Landroid/view/View;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 441
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->endActionMode()V

    .line 442
    return-void
.end method

.method public removeTab(Lcom/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-ne v0, p1, :cond_0

    .line 324
    invoke-direct {p0, p1}, Lcom/android/browser/BaseUi;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    .line 327
    :cond_0
    return-void
.end method

.method public setActiveTab(Lcom/android/browser/Tab;)V
    .locals 5
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 268
    if-nez p1, :cond_0

    .line 302
    :goto_0
    return-void

    .line 270
    :cond_0
    iput-boolean v2, p0, Lcom/android/browser/BaseUi;->mBlockFocusAnimations:Z

    .line 271
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 272
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eqz v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-direct {p0, v1}, Lcom/android/browser/BaseUi;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 274
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 275
    .local v0, "web":Landroid/webkit/WebView;
    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 279
    .end local v0    # "web":Landroid/webkit/WebView;
    :cond_1
    iput-object p1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    .line 280
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserWebView;

    .line 281
    .local v0, "web":Lcom/android/browser/BrowserWebView;
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->updateUrlBarAutoShowManagerTarget()V

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 283
    if-eqz v0, :cond_2

    .line 285
    iget-boolean v1, p0, Lcom/android/browser/BaseUi;->mUseQuickControls:Z

    if-eqz v1, :cond_3

    .line 286
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mPieControl:Lcom/android/browser/PieControl;

    iget-object v2, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/android/browser/PieControl;->forceToTop(Landroid/widget/FrameLayout;)V

    .line 287
    invoke-virtual {v0, v4}, Lcom/android/browser/BrowserWebView;->setTitleBar(Lcom/android/browser/TitleBar;)V

    .line 288
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->hide()V

    .line 294
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->bringToFront()V

    .line 295
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 296
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->shouldShowErrorConsole()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/browser/BaseUi;->setShouldShowErrorConsole(Lcom/android/browser/Tab;Z)V

    .line 297
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 298
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->onProgressChanged(Lcom/android/browser/Tab;)V

    .line 299
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/browser/NavigationBarBase;->setIncognitoMode(Z)V

    .line 300
    invoke-virtual {p0, p1, v3}, Lcom/android/browser/BaseUi;->updateAutoLogin(Lcom/android/browser/Tab;Z)V

    .line 301
    iput-boolean v3, p0, Lcom/android/browser/BaseUi;->mBlockFocusAnimations:Z

    goto :goto_0

    .line 290
    :cond_3
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserWebView;->setTitleBar(Lcom/android/browser/TitleBar;)V

    .line 291
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->onScrollChanged()V

    goto :goto_1
.end method

.method public setContentViewMarginTop(I)V
    .locals 2
    .param p1, "margin"    # I

    .prologue
    .line 861
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 863
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v1, p1, :cond_0

    .line 864
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 865
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 867
    :cond_0
    return-void
.end method

.method protected setFavicon(Lcom/android/browser/Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 632
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 634
    .local v0, "icon":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v1, v0}, Lcom/android/browser/NavigationBarBase;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 636
    .end local v0    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v4, 0x0

    .line 766
    iget-object v3, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 767
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 768
    .local v2, "winParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x400

    .line 769
    .local v0, "bits":I
    if-eqz p1, :cond_0

    .line 770
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 779
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 780
    return-void

    .line 772
    :cond_0
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x401

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 773
    iget-object v3, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 774
    iget-object v3, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 776
    :cond_1
    iget-object v3, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public setShouldShowErrorConsole(Lcom/android/browser/Tab;Z)V
    .locals 5
    .param p1, "tab"    # Lcom/android/browser/Tab;
    .param p2, "flag"    # Z

    .prologue
    .line 697
    if-nez p1, :cond_0

    .line 718
    :goto_0
    return-void

    .line 698
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/browser/Tab;->getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;

    move-result-object v0

    .line 699
    .local v0, "errorConsole":Lcom/android/browser/ErrorConsoleView;
    if-eqz p2, :cond_3

    .line 702
    invoke-virtual {v0}, Lcom/android/browser/ErrorConsoleView;->numberOfErrors()I

    move-result v1

    if-lez v1, :cond_2

    .line 703
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    .line 707
    :goto_1
    invoke-virtual {v0}, Lcom/android/browser/ErrorConsoleView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 708
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 711
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 705
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    goto :goto_1

    .line 716
    :cond_3
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected setUrlTitle(Lcom/android/browser/Tab;)V
    .locals 3
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 620
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 621
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 623
    move-object v0, v1

    .line 625
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 626
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v2, v1}, Lcom/android/browser/NavigationBarBase;->setDisplayTitle(Ljava/lang/String;)V

    .line 628
    :cond_1
    return-void
.end method

.method public setUseQuickControls(Z)V
    .locals 3
    .param p1, "useQuickControls"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/android/browser/BaseUi;->mUseQuickControls:Z

    .line 207
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    iget-boolean v1, p0, Lcom/android/browser/BaseUi;->mUseQuickControls:Z

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setUseQuickControls(Z)V

    .line 208
    if-eqz p1, :cond_1

    .line 209
    new-instance v0, Lcom/android/browser/PieControl;

    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/browser/PieControl;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/BaseUi;)V

    iput-object v0, p0, Lcom/android/browser/BaseUi;->mPieControl:Lcom/android/browser/PieControl;

    .line 210
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mPieControl:Lcom/android/browser/PieControl;

    iget-object v1, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/browser/PieControl;->attachToContainer(Landroid/widget/FrameLayout;)V

    .line 216
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->updateUrlBarAutoShowManagerTarget()V

    .line 217
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mPieControl:Lcom/android/browser/PieControl;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mPieControl:Lcom/android/browser/PieControl;

    iget-object v1, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/browser/PieControl;->removeFromContainer(Landroid/widget/FrameLayout;)V

    goto :goto_0
.end method

.method public showAutoLogin(Lcom/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 577
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/BaseUi;->updateAutoLogin(Lcom/android/browser/Tab;Z)V

    .line 578
    return-void
.end method

.method public showComboView(Lcom/android/browser/UI$ComboViews;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 512
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/browser/ComboViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 513
    const-string v1, "initial_view"

    invoke-virtual {p1}, Lcom/android/browser/UI$ComboViews;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    const-string v1, "combo_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 515
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 516
    if-eqz v1, :cond_0

    .line 517
    const-string v2, "url"

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 520
    return-void
.end method

.method public showCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "requestedOrientation"    # I
    .param p3, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 526
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 527
    invoke-interface {p3}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 541
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    iput v1, p0, Lcom/android/browser/BaseUi;->mOriginalOrientation:I

    .line 532
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 533
    .local v0, "decor":Landroid/widget/FrameLayout;
    new-instance v1, Lcom/android/browser/BaseUi$FullscreenHolder;

    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/browser/BaseUi$FullscreenHolder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/browser/BaseUi;->mFullscreenContainer:Landroid/widget/FrameLayout;

    .line 534
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mFullscreenContainer:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mFullscreenContainer:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    iput-object p1, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    .line 537
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/browser/BaseUi;->setFullscreen(Z)V

    .line 538
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    check-cast v1, Lcom/android/browser/BrowserWebView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserWebView;->setVisibility(I)V

    .line 539
    iput-object p3, p0, Lcom/android/browser/BaseUi;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 540
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public showMaxTabsWarning()V
    .locals 4

    .prologue
    .line 745
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c014f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 748
    .local v0, "warning":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 749
    return-void
.end method

.method protected showTitleBar()V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 483
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->canShowTitleBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->show()V

    .line 486
    :cond_0
    return-void
.end method

.method protected final showTitleBarForDuration()V
    .locals 2

    .prologue
    .line 815
    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BaseUi;->showTitleBarForDuration(J)V

    .line 816
    return-void
.end method

.method protected final showTitleBarForDuration(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->showTitleBar()V

    .line 820
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 821
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 822
    return-void
.end method

.method public showWeb(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->hideCustomView()V

    .line 840
    return-void
.end method

.method public stopEditingUrl()V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getNavigationBar()Lcom/android/browser/NavigationBarBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/NavigationBarBase;->stopEditingUrl()V

    .line 504
    return-void
.end method

.method public suggestHideTitleBar()V
    .locals 1

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->wantsToBeVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0}, Lcom/android/browser/NavigationBarBase;->isMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 810
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->hideTitleBar()V

    .line 812
    :cond_0
    return-void
.end method

.method protected updateAutoLogin(Lcom/android/browser/Tab;Z)V
    .locals 1
    .param p1, "tab"    # Lcom/android/browser/Tab;
    .param p2, "animate"    # Z

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/TitleBar;->updateAutoLogin(Lcom/android/browser/Tab;Z)V

    .line 592
    return-void
.end method

.method protected updateLockIconToLatest(Lcom/android/browser/Tab;)V
    .locals 1
    .param p1, "t"    # Lcom/android/browser/Tab;

    .prologue
    .line 598
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSecurityState()Lcom/android/browser/Tab$SecurityState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BaseUi;->updateLockIconImage(Lcom/android/browser/Tab$SecurityState;)V

    .line 601
    :cond_0
    return-void
.end method

.method public updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V
    .locals 0
    .param p1, "tab"    # Lcom/android/browser/Tab;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 662
    return-void
.end method

.method protected updateNavigationState(Lcom/android/browser/Tab;)V
    .locals 0
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 588
    return-void
.end method

.method public updateTabs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/Tab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, "tabs":Ljava/util/List;, "Ljava/util/List<Lcom/android/browser/Tab;>;"
    return-void
.end method

.method protected updateUrlBarAutoShowManagerTarget()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 305
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v2}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 306
    .local v0, "web":Landroid/webkit/WebView;
    :goto_0
    iget-boolean v2, p0, Lcom/android/browser/BaseUi;->mUseQuickControls:Z

    if-nez v2, :cond_1

    instance-of v2, v0, Lcom/android/browser/BrowserWebView;

    if-eqz v2, :cond_1

    .line 307
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mUrlBarAutoShowManager:Lcom/android/browser/UrlBarAutoShowManager;

    check-cast v0, Lcom/android/browser/BrowserWebView;

    .end local v0    # "web":Landroid/webkit/WebView;
    invoke-virtual {v1, v0}, Lcom/android/browser/UrlBarAutoShowManager;->setTarget(Lcom/android/browser/BrowserWebView;)V

    .line 311
    :goto_1
    return-void

    :cond_0
    move-object v0, v1

    .line 305
    goto :goto_0

    .line 309
    .restart local v0    # "web":Landroid/webkit/WebView;
    :cond_1
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mUrlBarAutoShowManager:Lcom/android/browser/UrlBarAutoShowManager;

    invoke-virtual {v2, v1}, Lcom/android/browser/UrlBarAutoShowManager;->setTarget(Lcom/android/browser/BrowserWebView;)V

    goto :goto_1
.end method
