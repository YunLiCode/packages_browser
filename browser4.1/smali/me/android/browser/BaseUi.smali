.class public abstract Lme/android/browser/BaseUi;
.super Ljava/lang/Object;
.source "BaseUi.java"

# interfaces
.implements Lme/android/browser/UI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/android/browser/BaseUi$FullscreenHolder;
    }
.end annotation


# static fields
.field protected static final COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

.field protected static final COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

.field public static final HIDE_TITLEBAR_DELAY:I = 0x5dc

.field private static final LOGTAG:Ljava/lang/String; = "BaseUi"

.field private static final MSG_HIDE_TITLEBAR:I = 0x1


# instance fields
.field protected mActiveTab:Lme/android/browser/Tab;

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

.field private mNavigationBar:Lme/android/browser/NavigationBarBase;

.field private mOriginalOrientation:I

.field protected mPieControl:Lme/android/browser/PieControl;

.field private mStopToast:Landroid/widget/Toast;

.field mTabControl:Lme/android/browser/TabControl;

.field protected mTitleBar:Lme/android/browser/TitleBar;

.field mUiController:Lme/android/browser/UiController;

.field private mUrlBarAutoShowManager:Lme/android/browser/UrlBarAutoShowManager;

.field protected mUseQuickControls:Z

.field private mVideoProgressView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 68
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 67
    sput-object v0, Lme/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 73
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 76
    const/16 v1, 0x11

    .line 73
    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 72
    sput-object v0, Lme/android/browser/BaseUi;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lme/android/browser/UiController;)V
    .locals 6
    .param p1, "browser"    # Landroid/app/Activity;
    .param p2, "controller"    # Lme/android/browser/UiController;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v2, 0x0

    iput-object v2, p0, Lme/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    .line 823
    new-instance v2, Lme/android/browser/BaseUi$1;

    invoke-direct {v2, p0}, Lme/android/browser/BaseUi$1;-><init>(Lme/android/browser/BaseUi;)V

    iput-object v2, p0, Lme/android/browser/BaseUi;->mHandler:Landroid/os/Handler;

    .line 119
    iput-object p1, p0, Lme/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    .line 120
    iput-object p2, p0, Lme/android/browser/BaseUi;->mUiController:Lme/android/browser/UiController;

    .line 121
    invoke-interface {p2}, Lme/android/browser/UiController;->getTabControl()Lme/android/browser/TabControl;

    move-result-object v2

    iput-object v2, p0, Lme/android/browser/BaseUi;->mTabControl:Lme/android/browser/TabControl;

    .line 122
    iget-object v2, p0, Lme/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 124
    .local v1, "res":Landroid/content/res/Resources;
    const-string v2, "input_method"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 123
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lme/android/browser/BaseUi;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 125
    const v2, 0x7f020046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lme/android/browser/BaseUi;->mLockIconSecure:Landroid/graphics/drawable/Drawable;

    .line 126
    const v2, 0x7f020047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lme/android/browser/BaseUi;->mLockIconMixed:Landroid/graphics/drawable/Drawable;

    .line 127
    iget-object v2, p0, Lme/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 127
    check-cast v0, Landroid/widget/FrameLayout;

    .line 129
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lme/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 130
    const v3, 0x7f040014

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 132
    const v2, 0x7f0d0040

    .line 131
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lme/android/browser/BaseUi;->mFixedTitlebarContainer:Landroid/widget/FrameLayout;

    .line 134
    const v2, 0x7f0d0041

    .line 133
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lme/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    .line 136
    const v2, 0x7f0d003d

    .line 135
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lme/android/browser/BaseUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 138
    const v2, 0x7f0d003f

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 137
    iput-object v2, p0, Lme/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    .line 139
    invoke-static {}, Lme/android/browser/BrowserSettings;->getInstance()Lme/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lme/android/browser/BrowserSettings;->useFullscreen()Z

    move-result v2

    invoke-virtual {p0, v2}, Lme/android/browser/BaseUi;->setFullscreen(Z)V

    .line 141
    const v2, 0x7f020001

    .line 140
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lme/android/browser/BaseUi;->mGenericFavicon:Landroid/graphics/drawable/Drawable;

    .line 142
    new-instance v2, Lme/android/browser/TitleBar;

    iget-object v3, p0, Lme/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lme/android/browser/BaseUi;->mUiController:Lme/android/browser/UiController;

    .line 143
    iget-object v5, p0, Lme/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-direct {v2, v3, v4, p0, v5}, Lme/android/browser/TitleBar;-><init>(Landroid/content/Context;Lme/android/browser/UiController;Lme/android/browser/BaseUi;Landroid/widget/FrameLayout;)V

    .line 142
    iput-object v2, p0, Lme/android/browser/BaseUi;->mTitleBar:Lme/android/browser/TitleBar;

    .line 144
    iget-object v2, p0, Lme/android/browser/BaseUi;->mTitleBar:Lme/android/browser/TitleBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lme/android/browser/TitleBar;->setProgress(I)V

    .line 145
    iget-object v2, p0, Lme/android/browser/BaseUi;->mTitleBar:Lme/android/browser/TitleBar;

    invoke-virtual {v2}, Lme/android/browser/TitleBar;->getNavigationBar()Lme/android/browser/NavigationBarBase;

    move-result-object v2

    iput-object v2, p0, Lme/android/browser/BaseUi;->mNavigationBar:Lme/android/browser/NavigationBarBase;

    .line 146
    new-instance v2, Lme/android/browser/UrlBarAutoShowManager;

    invoke-direct {v2, p0}, Lme/android/browser/UrlBarAutoShowManager;-><init>(Lme/android/browser/BaseUi;)V

    iput-object v2, p0, Lme/android/browser/BaseUi;->mUrlBarAutoShowManager:Lme/android/browser/UrlBarAutoShowManager;

    .line 147
    return-void
.end method

.method private cancelStopToast()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lme/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lme/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lme/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    .line 154
    :cond_0
    return-void
.end method

.method private removeTabFromContentView(Lme/android/browser/Tab;)V
    .locals 5
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 366
    invoke-virtual {p0}, Lme/android/browser/BaseUi;->hideTitleBar()V

    .line 368
    invoke-virtual {p1}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 369
    .local v2, "mainView":Landroid/webkit/WebView;
    invoke-virtual {p1}, Lme/android/browser/Tab;->getViewContainer()Landroid/view/View;

    move-result-object v0

    .line 370
    .local v0, "container":Landroid/view/View;
    if-nez v2, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    const v4, 0x7f0d006d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 378
    .local v3, "wrapper":Landroid/widget/FrameLayout;
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 379
    iget-object v4, p0, Lme/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 380
    iget-object v4, p0, Lme/android/browser/BaseUi;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v4}, Lme/android/browser/UiController;->endActionMode()V

    .line 381
    iget-object v4, p0, Lme/android/browser/BaseUi;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v4, p1}, Lme/android/browser/UiController;->removeSubWindow(Lme/android/browser/Tab;)V

    .line 382
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lme/android/browser/Tab;->getErrorConsole(Z)Lme/android/browser/ErrorConsoleView;

    move-result-object v1

    .line 383
    .local v1, "errorConsole":Lme/android/browser/ErrorConsoleView;
    if-eqz v1, :cond_0

    .line 384
    iget-object v4, p0, Lme/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private updateLockIconImage(Lme/android/browser/Tab$SecurityState;)V
    .locals 2
    .param p1, "securityState"    # Lme/android/browser/Tab$SecurityState;

    .prologue
    .line 606
    const/4 v0, 0x0

    .line 607
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    sget-object v1, Lme/android/browser/Tab$SecurityState;->SECURITY_STATE_SECURE:Lme/android/browser/Tab$SecurityState;

    if-ne p1, v1, :cond_1

    .line 608
    iget-object v0, p0, Lme/android/browser/BaseUi;->mLockIconSecure:Landroid/graphics/drawable/Drawable;

    .line 615
    :cond_0
    :goto_0
    iget-object v1, p0, Lme/android/browser/BaseUi;->mNavigationBar:Lme/android/browser/NavigationBarBase;

    invoke-virtual {v1, v0}, Lme/android/browser/NavigationBarBase;->setLock(Landroid/graphics/drawable/Drawable;)V

    .line 616
    return-void

    .line 609
    :cond_1
    sget-object v1, Lme/android/browser/Tab$SecurityState;->SECURITY_STATE_MIXED:Lme/android/browser/Tab$SecurityState;

    if-eq p1, v1, :cond_2

    .line 610
    sget-object v1, Lme/android/browser/Tab$SecurityState;->SECURITY_STATE_BAD_CERTIFICATE:Lme/android/browser/Tab$SecurityState;

    if-ne p1, v1, :cond_0

    .line 613
    :cond_2
    iget-object v0, p0, Lme/android/browser/BaseUi;->mLockIconMixed:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public addFixedTitleBar(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 856
    iget-object v0, p0, Lme/android/browser/BaseUi;->mFixedTitlebarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 857
    return-void
.end method

.method public addTab(Lme/android/browser/Tab;)V
    .locals 0
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 263
    return-void
.end method

.method public attachSubWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 448
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 452
    :cond_0
    iget-object v0, p0, Lme/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    sget-object v1, Lme/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    return-void
.end method

.method public attachTab(Lme/android/browser/Tab;)V
    .locals 0
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 335
    invoke-virtual {p0, p1}, Lme/android/browser/BaseUi;->attachTabToContentView(Lme/android/browser/Tab;)V

    .line 336
    return-void
.end method

.method protected attachTabToContentView(Lme/android/browser/Tab;)V
    .locals 6
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 339
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    if-nez v4, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    invoke-virtual {p1}, Lme/android/browser/Tab;->getViewContainer()Landroid/view/View;

    move-result-object v0

    .line 343
    .local v0, "container":Landroid/view/View;
    invoke-virtual {p1}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 347
    .local v1, "mainView":Landroid/webkit/WebView;
    const v4, 0x7f0d006d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 348
    .local v3, "wrapper":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 349
    .local v2, "parent":Landroid/view/ViewGroup;
    if-eq v2, v3, :cond_3

    .line 350
    if-eqz v2, :cond_2

    .line 351
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 353
    :cond_2
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 355
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2    # "parent":Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 356
    .restart local v2    # "parent":Landroid/view/ViewGroup;
    iget-object v4, p0, Lme/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    if-eq v2, v4, :cond_5

    .line 357
    if-eqz v2, :cond_4

    .line 358
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 360
    :cond_4
    iget-object v4, p0, Lme/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    sget-object v5, Lme/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4, v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    :cond_5
    iget-object v4, p0, Lme/android/browser/BaseUi;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v4, p1}, Lme/android/browser/UiController;->attachSubWindow(Lme/android/browser/Tab;)V

    goto :goto_0
.end method

.method public blockFocusAnimations()Z
    .locals 1

    .prologue
    .line 870
    iget-boolean v0, p0, Lme/android/browser/BaseUi;->mBlockFocusAnimations:Z

    return v0
.end method

.method public bookmarkedStatusHasChanged(Lme/android/browser/Tab;)V
    .locals 2
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 240
    invoke-virtual {p1}, Lme/android/browser/Tab;->inForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    invoke-virtual {p1}, Lme/android/browser/Tab;->isBookmarkedSite()Z

    move-result v0

    .line 242
    .local v0, "isBookmark":Z
    iget-object v1, p0, Lme/android/browser/BaseUi;->mNavigationBar:Lme/android/browser/NavigationBarBase;

    invoke-virtual {v1, v0}, Lme/android/browser/NavigationBarBase;->setCurrentUrlIsBookmark(Z)V

    .line 244
    .end local v0    # "isBookmark":Z
    :cond_0
    return-void
.end method

.method canShowTitleBar()Z
    .locals 1

    .prologue
    .line 473
    invoke-virtual {p0}, Lme/android/browser/BaseUi;->isTitleBarShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lme/android/browser/BaseUi;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    invoke-virtual {p0}, Lme/android/browser/BaseUi;->getActiveTab()Lme/android/browser/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {p0}, Lme/android/browser/BaseUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lme/android/browser/BaseUi;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v0}, Lme/android/browser/UiController;->isInCustomActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 473
    goto :goto_0
.end method

.method public createSubWindow(Lme/android/browser/Tab;Landroid/webkit/WebView;)V
    .locals 8
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "subView"    # Landroid/webkit/WebView;

    .prologue
    const/4 v7, -0x1

    .line 415
    iget-object v4, p0, Lme/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 416
    const v5, 0x7f040013

    const/4 v6, 0x0

    .line 415
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 418
    .local v3, "subViewContainer":Landroid/view/View;
    const v4, 0x7f0d003c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 417
    check-cast v2, Landroid/view/ViewGroup;

    .line 419
    .local v2, "inner":Landroid/view/ViewGroup;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 420
    invoke-direct {v4, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 419
    invoke-virtual {v2, p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    const v4, 0x7f0d003b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 421
    check-cast v0, Landroid/widget/ImageButton;

    .line 423
    .local v0, "cancel":Landroid/widget/ImageButton;
    move-object v1, p2

    .line 424
    .local v1, "cancelSubView":Landroid/webkit/WebView;
    new-instance v4, Lme/android/browser/BaseUi$2;

    invoke-direct {v4, p0, v1}, Lme/android/browser/BaseUi$2;-><init>(Lme/android/browser/BaseUi;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    invoke-virtual {p1, p2}, Lme/android/browser/Tab;->setSubWebView(Landroid/webkit/WebView;)V

    .line 431
    invoke-virtual {p1, v3}, Lme/android/browser/Tab;->setSubViewContainer(Landroid/view/View;)V

    .line 432
    return-void
.end method

.method public detachTab(Lme/android/browser/Tab;)V
    .locals 0
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lme/android/browser/BaseUi;->removeTabFromContentView(Lme/android/browser/Tab;)V

    .line 331
    return-void
.end method

.method protected dismissIME()V
    .locals 3

    .prologue
    .line 563
    iget-object v0, p0, Lme/android/browser/BaseUi;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lme/android/browser/BaseUi;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lme/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 565
    const/4 v2, 0x0

    .line 564
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 567
    :cond_0
    return-void
.end method

.method public editUrl(ZZ)V
    .locals 1
    .param p1, "clearInput"    # Z
    .param p2, "forceIME"    # Z

    .prologue
    .line 463
    iget-object v0, p0, Lme/android/browser/BaseUi;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v0}, Lme/android/browser/UiController;->isInCustomActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lme/android/browser/BaseUi;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v0}, Lme/android/browser/UiController;->endActionMode()V

    .line 466
    :cond_0
    invoke-virtual {p0}, Lme/android/browser/BaseUi;->showTitleBar()V

    .line 467
    invoke-virtual {p0}, Lme/android/browser/BaseUi;->getActiveTab()Lme/android/browser/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lme/android/browser/BaseUi;->getActiveTab()Lme/android/browser/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lme/android/browser/Tab;->isSnapshot()Z

    move-result v0

    if-nez v0, :cond_1

    .line 468
    iget-object v0, p0, Lme/android/browser/BaseUi;->mNavigationBar:Lme/android/browser/NavigationBarBase;

    invoke-virtual {v0, p1, p2}, Lme/android/browser/NavigationBarBase;->startEditingUrl(ZZ)V

    .line 470
    :cond_1
    return-void
.end method

.method getActiveTab()Lme/android/browser/Tab;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lme/android/browser/BaseUi;->mActiveTab:Lme/android/browser/Tab;

    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lme/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 725
    iget-object v0, p0, Lme/android/browser/BaseUi;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 727
    iget-object v0, p0, Lme/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020016

    .line 726
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/BaseUi;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    .line 729
    :cond_0
    iget-object v0, p0, Lme/android/browser/BaseUi;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFaviconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x2

    .line 782
    const/4 v2, 0x3

    new-array v6, v2, [Landroid/graphics/drawable/Drawable;

    .line 783
    .local v6, "array":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/PaintDrawable;

    const/high16 v4, -0x1000000

    invoke-direct {v3, v4}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    aput-object v3, v6, v2

    .line 784
    new-instance v7, Landroid/graphics/drawable/PaintDrawable;

    const/4 v2, -0x1

    invoke-direct {v7, v2}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 785
    .local v7, "p":Landroid/graphics/drawable/PaintDrawable;
    aput-object v7, v6, v1

    .line 786
    if-nez p1, :cond_0

    .line 787
    iget-object v2, p0, Lme/android/browser/BaseUi;->mGenericFavicon:Landroid/graphics/drawable/Drawable;

    aput-object v2, v6, v8

    .line 791
    :goto_0
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v0, "d":Landroid/graphics/drawable/LayerDrawable;
    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 792
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    move v1, v8

    move v2, v8

    move v3, v8

    move v4, v8

    move v5, v8

    .line 793
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 794
    return-object v0

    .line 789
    .end local v0    # "d":Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v6, v8

    goto :goto_0
.end method

.method protected getMenu()Landroid/view/Menu;
    .locals 3

    .prologue
    .line 759
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lme/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 760
    .local v0, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v1, p0, Lme/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100002

    invoke-virtual {v1, v2, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 761
    return-object v0
.end method

.method public getTitleBar()Lme/android/browser/TitleBar;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lme/android/browser/BaseUi;->mTitleBar:Lme/android/browser/TitleBar;

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 3

    .prologue
    .line 734
    iget-object v1, p0, Lme/android/browser/BaseUi;->mVideoProgressView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 735
    iget-object v1, p0, Lme/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 737
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040035

    const/4 v2, 0x0

    .line 736
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lme/android/browser/BaseUi;->mVideoProgressView:Landroid/view/View;

    .line 739
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lme/android/browser/BaseUi;->mVideoProgressView:Landroid/view/View;

    return-object v1
.end method

.method protected getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lme/android/browser/BaseUi;->mActiveTab:Lme/android/browser/Tab;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lme/android/browser/BaseUi;->mActiveTab:Lme/android/browser/Tab;

    invoke-virtual {v0}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 754
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
    .line 834
    return-void
.end method

.method public hideAutoLogin(Lme/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 581
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lme/android/browser/BaseUi;->updateAutoLogin(Lme/android/browser/Tab;Z)V

    .line 582
    return-void
.end method

.method protected hideTitleBar()V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lme/android/browser/BaseUi;->mTitleBar:Lme/android/browser/TitleBar;

    invoke-virtual {v0}, Lme/android/browser/TitleBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lme/android/browser/BaseUi;->mTitleBar:Lme/android/browser/TitleBar;

    invoke-virtual {v0}, Lme/android/browser/TitleBar;->hide()V

    .line 491
    :cond_0
    return-void
.end method

.method protected isActivityPaused()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lme/android/browser/BaseUi;->mActivityPaused:Z

    return v0
.end method

.method public isCustomViewShowing()Z
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lme/android/browser/BaseUi;->mCustomView:Landroid/view/View;

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
    .line 498
    iget-object v0, p0, Lme/android/browser/BaseUi;->mTitleBar:Lme/android/browser/TitleBar;

    invoke-virtual {v0}, Lme/android/browser/TitleBar;->isEditingUrl()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lme/android/browser/BaseUi;->mActiveTab:Lme/android/browser/Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/android/browser/BaseUi;->mActiveTab:Lme/android/browser/Tab;

    invoke-virtual {v0}, Lme/android/browser/Tab;->inPageLoad()Z

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
    .line 494
    iget-object v0, p0, Lme/android/browser/BaseUi;->mTitleBar:Lme/android/browser/TitleBar;

    invoke-virtual {v0}, Lme/android/browser/TitleBar;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isWebShowing()Z
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lme/android/browser/BaseUi;->mCustomView:Landroid/view/View;

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
    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method public onActionModeFinished(Z)V
    .locals 0
    .param p1, "inLoad"    # Z

    .prologue
    .line 639
    return-void
.end method

.method public onBackKey()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lme/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lme/android/browser/BaseUi;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v0}, Lme/android/browser/UiController;->hideCustomView()V

    .line 193
    const/4 v0, 0x1

    .line 195
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
    .line 181
    return-void
.end method

.method public onContextMenuClosed(Landroid/view/Menu;Z)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inLoad"    # Z

    .prologue
    .line 690
    return-void
.end method

.method public onContextMenuCreated(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 686
    return-void
.end method

.method public onExtendedMenuClosed(Z)V
    .locals 0
    .param p1, "inLoad"    # Z

    .prologue
    .line 682
    return-void
.end method

.method public onExtendedMenuOpened()V
    .locals 0

    .prologue
    .line 669
    return-void
.end method

.method public onHideCustomView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 544
    invoke-virtual {p0}, Lme/android/browser/BaseUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    check-cast v1, Lme/android/browser/BrowserWebView;

    invoke-virtual {v1, v2}, Lme/android/browser/BrowserWebView;->setVisibility(I)V

    .line 545
    iget-object v1, p0, Lme/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 555
    :goto_0
    return-void

    .line 547
    :cond_0
    invoke-virtual {p0, v2}, Lme/android/browser/BaseUi;->setFullscreen(Z)V

    .line 548
    iget-object v1, p0, Lme/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 549
    .local v0, "decor":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lme/android/browser/BaseUi;->mFullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 550
    iput-object v3, p0, Lme/android/browser/BaseUi;->mFullscreenContainer:Landroid/widget/FrameLayout;

    .line 551
    iput-object v3, p0, Lme/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    .line 552
    iget-object v1, p0, Lme/android/browser/BaseUi;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 554
    iget-object v1, p0, Lme/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lme/android/browser/BaseUi;->mOriginalOrientation:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onMenuKey()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 673
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Z)V
    .locals 0
    .param p1, "inLoad"    # Z

    .prologue
    .line 678
    return-void
.end method

.method public onOptionsMenuOpened()V
    .locals 0

    .prologue
    .line 665
    return-void
.end method

.method public onPageStopped(Lme/android/browser/Tab;)V
    .locals 3
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 248
    invoke-direct {p0}, Lme/android/browser/BaseUi;->cancelStopToast()V

    .line 249
    invoke-virtual {p1}, Lme/android/browser/Tab;->inForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lme/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f080024

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 250
    iput-object v0, p0, Lme/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    .line 252
    iget-object v0, p0, Lme/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 254
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lme/android/browser/BaseUi;->isCustomViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lme/android/browser/BaseUi;->onHideCustomView()V

    .line 162
    :cond_0
    invoke-direct {p0}, Lme/android/browser/BaseUi;->cancelStopToast()V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/android/browser/BaseUi;->mActivityPaused:Z

    .line 164
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 656
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Lme/android/browser/Tab;)V
    .locals 2
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 232
    invoke-virtual {p1}, Lme/android/browser/Tab;->getLoadProgress()I

    move-result v0

    .line 233
    .local v0, "progress":I
    invoke-virtual {p1}, Lme/android/browser/Tab;->inForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lme/android/browser/BaseUi;->mTitleBar:Lme/android/browser/TitleBar;

    invoke-virtual {v1, v0}, Lme/android/browser/TitleBar;->setProgress(I)V

    .line 236
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 167
    const/4 v1, 0x0

    iput-boolean v1, p0, Lme/android/browser/BaseUi;->mActivityPaused:Z

    .line 170
    iget-object v1, p0, Lme/android/browser/BaseUi;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v0

    .line 171
    .local v0, "ct":Lme/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0, v0}, Lme/android/browser/BaseUi;->setActiveTab(Lme/android/browser/Tab;)V

    .line 174
    :cond_0
    return-void
.end method

.method public onSetWebView(Lme/android/browser/Tab;Landroid/webkit/WebView;)V
    .locals 6
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 390
    invoke-virtual {p1}, Lme/android/browser/Tab;->getViewContainer()Landroid/view/View;

    move-result-object v0

    .line 391
    .local v0, "container":Landroid/view/View;
    if-nez v0, :cond_0

    .line 394
    iget-object v2, p0, Lme/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04002e

    .line 395
    iget-object v4, p0, Lme/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    .line 394
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 396
    invoke-virtual {p1, v0}, Lme/android/browser/Tab;->setViewContainer(Landroid/view/View;)V

    .line 398
    :cond_0
    invoke-virtual {p1}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    if-eq v2, p2, :cond_1

    .line 401
    const v2, 0x7f0d006d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 402
    .local v1, "wrapper":Landroid/widget/FrameLayout;
    invoke-virtual {p1}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 404
    .end local v1    # "wrapper":Landroid/widget/FrameLayout;
    :cond_1
    return-void
.end method

.method public onTabDataChanged(Lme/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lme/android/browser/BaseUi;->setUrlTitle(Lme/android/browser/Tab;)V

    .line 222
    invoke-virtual {p0, p1}, Lme/android/browser/BaseUi;->setFavicon(Lme/android/browser/Tab;)V

    .line 223
    invoke-virtual {p0, p1}, Lme/android/browser/BaseUi;->updateLockIconToLatest(Lme/android/browser/Tab;)V

    .line 224
    invoke-virtual {p0, p1}, Lme/android/browser/BaseUi;->updateNavigationState(Lme/android/browser/Tab;)V

    .line 225
    iget-object v0, p0, Lme/android/browser/BaseUi;->mTitleBar:Lme/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lme/android/browser/TitleBar;->onTabDataChanged(Lme/android/browser/Tab;)V

    .line 226
    iget-object v0, p0, Lme/android/browser/BaseUi;->mNavigationBar:Lme/android/browser/NavigationBarBase;

    invoke-virtual {v0, p1}, Lme/android/browser/NavigationBarBase;->onTabDataChanged(Lme/android/browser/Tab;)V

    .line 227
    invoke-virtual {p0, p1}, Lme/android/browser/BaseUi;->onProgressChanged(Lme/android/browser/Tab;)V

    .line 228
    return-void
.end method

.method public onVoiceResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 875
    iget-object v0, p0, Lme/android/browser/BaseUi;->mNavigationBar:Lme/android/browser/NavigationBarBase;

    invoke-virtual {v0, p1}, Lme/android/browser/NavigationBarBase;->onVoiceResult(Ljava/lang/String;)V

    .line 876
    return-void
.end method

.method protected refreshWebView()V
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0}, Lme/android/browser/BaseUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 457
    .local v0, "web":Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 460
    :cond_0
    return-void
.end method

.method public removeActiveTabsPage()V
    .locals 0

    .prologue
    .line 650
    return-void
.end method

.method public removeSubWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "subviewContainer"    # Landroid/view/View;

    .prologue
    .line 439
    iget-object v0, p0, Lme/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 440
    iget-object v0, p0, Lme/android/browser/BaseUi;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v0}, Lme/android/browser/UiController;->endActionMode()V

    .line 441
    return-void
.end method

.method public removeTab(Lme/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 322
    iget-object v0, p0, Lme/android/browser/BaseUi;->mActiveTab:Lme/android/browser/Tab;

    if-ne v0, p1, :cond_0

    .line 323
    invoke-direct {p0, p1}, Lme/android/browser/BaseUi;->removeTabFromContentView(Lme/android/browser/Tab;)V

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lme/android/browser/BaseUi;->mActiveTab:Lme/android/browser/Tab;

    .line 326
    :cond_0
    return-void
.end method

.method public setActiveTab(Lme/android/browser/Tab;)V
    .locals 5
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 267
    if-nez p1, :cond_0

    .line 301
    :goto_0
    return-void

    .line 269
    :cond_0
    iput-boolean v2, p0, Lme/android/browser/BaseUi;->mBlockFocusAnimations:Z

    .line 270
    iget-object v1, p0, Lme/android/browser/BaseUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 271
    iget-object v1, p0, Lme/android/browser/BaseUi;->mActiveTab:Lme/android/browser/Tab;

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lme/android/browser/BaseUi;->mActiveTab:Lme/android/browser/Tab;

    if-eqz v1, :cond_1

    .line 272
    iget-object v1, p0, Lme/android/browser/BaseUi;->mActiveTab:Lme/android/browser/Tab;

    invoke-direct {p0, v1}, Lme/android/browser/BaseUi;->removeTabFromContentView(Lme/android/browser/Tab;)V

    .line 273
    iget-object v1, p0, Lme/android/browser/BaseUi;->mActiveTab:Lme/android/browser/Tab;

    invoke-virtual {v1}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 274
    .local v0, "web":Landroid/webkit/WebView;
    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 278
    .end local v0    # "web":Landroid/webkit/WebView;
    :cond_1
    iput-object p1, p0, Lme/android/browser/BaseUi;->mActiveTab:Lme/android/browser/Tab;

    .line 279
    iget-object v1, p0, Lme/android/browser/BaseUi;->mActiveTab:Lme/android/browser/Tab;

    invoke-virtual {v1}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Lme/android/browser/BrowserWebView;

    .line 280
    .local v0, "web":Lme/android/browser/BrowserWebView;
    invoke-virtual {p0}, Lme/android/browser/BaseUi;->updateUrlBarAutoShowManagerTarget()V

    .line 281
    invoke-virtual {p0, p1}, Lme/android/browser/BaseUi;->attachTabToContentView(Lme/android/browser/Tab;)V

    .line 282
    if-eqz v0, :cond_2

    .line 284
    iget-boolean v1, p0, Lme/android/browser/BaseUi;->mUseQuickControls:Z

    if-eqz v1, :cond_3

    .line 285
    iget-object v1, p0, Lme/android/browser/BaseUi;->mPieControl:Lme/android/browser/PieControl;

    iget-object v2, p0, Lme/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lme/android/browser/PieControl;->forceToTop(Landroid/widget/FrameLayout;)V

    .line 286
    invoke-virtual {v0, v4}, Lme/android/browser/BrowserWebView;->setTitleBar(Lme/android/browser/TitleBar;)V

    .line 287
    iget-object v1, p0, Lme/android/browser/BaseUi;->mTitleBar:Lme/android/browser/TitleBar;

    invoke-virtual {v1}, Lme/android/browser/TitleBar;->hide()V

    .line 293
    :cond_2
    :goto_1
    iget-object v1, p0, Lme/android/browser/BaseUi;->mTitleBar:Lme/android/browser/TitleBar;

    invoke-virtual {v1}, Lme/android/browser/TitleBar;->bringToFront()V

    .line 294
    invoke-virtual {p1}, Lme/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 295
    iget-object v1, p0, Lme/android/browser/BaseUi;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v1}, Lme/android/browser/UiController;->shouldShowErrorConsole()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lme/android/browser/BaseUi;->setShouldShowErrorConsole(Lme/android/browser/Tab;Z)V

    .line 296
    invoke-virtual {p0, p1}, Lme/android/browser/BaseUi;->onTabDataChanged(Lme/android/browser/Tab;)V

    .line 297
    invoke-virtual {p0, p1}, Lme/android/browser/BaseUi;->onProgressChanged(Lme/android/browser/Tab;)V

    .line 298
    iget-object v1, p0, Lme/android/browser/BaseUi;->mNavigationBar:Lme/android/browser/NavigationBarBase;

    invoke-virtual {p1}, Lme/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lme/android/browser/NavigationBarBase;->setIncognitoMode(Z)V

    .line 299
    invoke-virtual {p0, p1, v3}, Lme/android/browser/BaseUi;->updateAutoLogin(Lme/android/browser/Tab;Z)V

    .line 300
    iput-boolean v3, p0, Lme/android/browser/BaseUi;->mBlockFocusAnimations:Z

    goto :goto_0

    .line 289
    :cond_3
    iget-object v1, p0, Lme/android/browser/BaseUi;->mTitleBar:Lme/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Lme/android/browser/BrowserWebView;->setTitleBar(Lme/android/browser/TitleBar;)V

    .line 290
    iget-object v1, p0, Lme/android/browser/BaseUi;->mTitleBar:Lme/android/browser/TitleBar;

    invoke-virtual {v1}, Lme/android/browser/TitleBar;->onScrollChanged()V

    goto :goto_1
.end method

.method public setContentViewMarginTop(I)V
    .locals 2
    .param p1, "margin"    # I

    .prologue
    .line 861
    iget-object v1, p0, Lme/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 862
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v1, p1, :cond_0

    .line 863
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 864
    iget-object v1, p0, Lme/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 866
    :cond_0
    return-void
.end method

.method protected setFavicon(Lme/android/browser/Tab;)V
    .locals 2
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 631
    invoke-virtual {p1}, Lme/android/browser/Tab;->inForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    invoke-virtual {p1}, Lme/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 633
    .local v0, "icon":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lme/android/browser/BaseUi;->mNavigationBar:Lme/android/browser/NavigationBarBase;

    invoke-virtual {v1, v0}, Lme/android/browser/NavigationBarBase;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 635
    .end local v0    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v4, 0x0

    .line 765
    iget-object v3, p0, Lme/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 766
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 767
    .local v2, "winParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x400

    .line 768
    .local v0, "bits":I
    if-eqz p1, :cond_0

    .line 769
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 778
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 779
    return-void

    .line 771
    :cond_0
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x401

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 772
    iget-object v3, p0, Lme/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 773
    iget-object v3, p0, Lme/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 775
    :cond_1
    iget-object v3, p0, Lme/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public setShouldShowErrorConsole(Lme/android/browser/Tab;Z)V
    .locals 5
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "flag"    # Z

    .prologue
    .line 696
    if-nez p1, :cond_0

    .line 717
    :goto_0
    return-void

    .line 697
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lme/android/browser/Tab;->getErrorConsole(Z)Lme/android/browser/ErrorConsoleView;

    move-result-object v0

    .line 698
    .local v0, "errorConsole":Lme/android/browser/ErrorConsoleView;
    if-eqz p2, :cond_3

    .line 701
    invoke-virtual {v0}, Lme/android/browser/ErrorConsoleView;->numberOfErrors()I

    move-result v1

    if-lez v1, :cond_2

    .line 702
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/android/browser/ErrorConsoleView;->showConsole(I)V

    .line 706
    :goto_1
    invoke-virtual {v0}, Lme/android/browser/ErrorConsoleView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 707
    iget-object v1, p0, Lme/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 710
    :cond_1
    iget-object v1, p0, Lme/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    .line 711
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 712
    const/4 v3, -0x1

    .line 713
    const/4 v4, -0x2

    .line 711
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 710
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 704
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lme/android/browser/ErrorConsoleView;->showConsole(I)V

    goto :goto_1

    .line 715
    :cond_3
    iget-object v1, p0, Lme/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected setUrlTitle(Lme/android/browser/Tab;)V
    .locals 3
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 619
    invoke-virtual {p1}, Lme/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 620
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p1}, Lme/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 622
    move-object v0, v1

    .line 624
    :cond_0
    invoke-virtual {p1}, Lme/android/browser/Tab;->inForeground()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 625
    iget-object v2, p0, Lme/android/browser/BaseUi;->mNavigationBar:Lme/android/browser/NavigationBarBase;

    invoke-virtual {v2, v1}, Lme/android/browser/NavigationBarBase;->setDisplayTitle(Ljava/lang/String;)V

    .line 627
    :cond_1
    return-void
.end method

.method public setUseQuickControls(Z)V
    .locals 3
    .param p1, "useQuickControls"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Lme/android/browser/BaseUi;->mUseQuickControls:Z

    .line 206
    iget-object v0, p0, Lme/android/browser/BaseUi;->mTitleBar:Lme/android/browser/TitleBar;

    iget-boolean v1, p0, Lme/android/browser/BaseUi;->mUseQuickControls:Z

    invoke-virtual {v0, v1}, Lme/android/browser/TitleBar;->setUseQuickControls(Z)V

    .line 207
    if-eqz p1, :cond_1

    .line 208
    new-instance v0, Lme/android/browser/PieControl;

    iget-object v1, p0, Lme/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lme/android/browser/BaseUi;->mUiController:Lme/android/browser/UiController;

    invoke-direct {v0, v1, v2, p0}, Lme/android/browser/PieControl;-><init>(Landroid/app/Activity;Lme/android/browser/UiController;Lme/android/browser/BaseUi;)V

    iput-object v0, p0, Lme/android/browser/BaseUi;->mPieControl:Lme/android/browser/PieControl;

    .line 209
    iget-object v0, p0, Lme/android/browser/BaseUi;->mPieControl:Lme/android/browser/PieControl;

    iget-object v1, p0, Lme/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lme/android/browser/PieControl;->attachToContainer(Landroid/widget/FrameLayout;)V

    .line 215
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lme/android/browser/BaseUi;->updateUrlBarAutoShowManagerTarget()V

    .line 216
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lme/android/browser/BaseUi;->mPieControl:Lme/android/browser/PieControl;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lme/android/browser/BaseUi;->mPieControl:Lme/android/browser/PieControl;

    iget-object v1, p0, Lme/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lme/android/browser/PieControl;->removeFromContainer(Landroid/widget/FrameLayout;)V

    goto :goto_0
.end method

.method public showActiveTabsPage()V
    .locals 0

    .prologue
    .line 644
    return-void
.end method

.method public showAutoLogin(Lme/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 576
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lme/android/browser/BaseUi;->updateAutoLogin(Lme/android/browser/Tab;Z)V

    .line 577
    return-void
.end method

.method public showComboView(Lme/android/browser/UI$ComboViews;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "startingView"    # Lme/android/browser/UI$ComboViews;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 511
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lme/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    const-class v3, Lme/android/browser/ComboViewActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 512
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "initial_view"

    invoke-virtual {p1}, Lme/android/browser/UI$ComboViews;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    const-string v2, "combo_args"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 514
    invoke-virtual {p0}, Lme/android/browser/BaseUi;->getActiveTab()Lme/android/browser/Tab;

    move-result-object v1

    .line 515
    .local v1, "t":Lme/android/browser/Tab;
    if-eqz v1, :cond_0

    .line 516
    const-string v2, "url"

    invoke-virtual {v1}, Lme/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    :cond_0
    iget-object v2, p0, Lme/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 519
    return-void
.end method

.method public showCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "requestedOrientation"    # I
    .param p3, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 525
    iget-object v1, p0, Lme/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 526
    invoke-interface {p3}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 540
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v1, p0, Lme/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    iput v1, p0, Lme/android/browser/BaseUi;->mOriginalOrientation:I

    .line 531
    iget-object v1, p0, Lme/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 532
    .local v0, "decor":Landroid/widget/FrameLayout;
    new-instance v1, Lme/android/browser/BaseUi$FullscreenHolder;

    iget-object v2, p0, Lme/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lme/android/browser/BaseUi$FullscreenHolder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lme/android/browser/BaseUi;->mFullscreenContainer:Landroid/widget/FrameLayout;

    .line 533
    iget-object v1, p0, Lme/android/browser/BaseUi;->mFullscreenContainer:Landroid/widget/FrameLayout;

    sget-object v2, Lme/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    iget-object v1, p0, Lme/android/browser/BaseUi;->mFullscreenContainer:Landroid/widget/FrameLayout;

    sget-object v2, Lme/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    iput-object p1, p0, Lme/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    .line 536
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lme/android/browser/BaseUi;->setFullscreen(Z)V

    .line 537
    invoke-virtual {p0}, Lme/android/browser/BaseUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    check-cast v1, Lme/android/browser/BrowserWebView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lme/android/browser/BrowserWebView;->setVisibility(I)V

    .line 538
    iput-object p3, p0, Lme/android/browser/BaseUi;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 539
    iget-object v1, p0, Lme/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public showMaxTabsWarning()V
    .locals 4

    .prologue
    .line 744
    iget-object v1, p0, Lme/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    .line 745
    iget-object v2, p0, Lme/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    const v3, 0x7f08014f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 746
    const/4 v3, 0x0

    .line 744
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 747
    .local v0, "warning":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 748
    return-void
.end method

.method protected showTitleBar()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lme/android/browser/BaseUi;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 482
    invoke-virtual {p0}, Lme/android/browser/BaseUi;->canShowTitleBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lme/android/browser/BaseUi;->mTitleBar:Lme/android/browser/TitleBar;

    invoke-virtual {v0}, Lme/android/browser/TitleBar;->show()V

    .line 485
    :cond_0
    return-void
.end method

.method protected final showTitleBarForDuration()V
    .locals 2

    .prologue
    .line 814
    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, v0, v1}, Lme/android/browser/BaseUi;->showTitleBarForDuration(J)V

    .line 815
    return-void
.end method

.method protected final showTitleBarForDuration(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 818
    invoke-virtual {p0}, Lme/android/browser/BaseUi;->showTitleBar()V

    .line 819
    iget-object v1, p0, Lme/android/browser/BaseUi;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 820
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lme/android/browser/BaseUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 821
    return-void
.end method

.method public showWeb(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 838
    iget-object v0, p0, Lme/android/browser/BaseUi;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v0}, Lme/android/browser/UiController;->hideCustomView()V

    .line 839
    return-void
.end method

.method public stopEditingUrl()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lme/android/browser/BaseUi;->mTitleBar:Lme/android/browser/TitleBar;

    invoke-virtual {v0}, Lme/android/browser/TitleBar;->getNavigationBar()Lme/android/browser/NavigationBarBase;

    move-result-object v0

    invoke-virtual {v0}, Lme/android/browser/NavigationBarBase;->stopEditingUrl()V

    .line 503
    return-void
.end method

.method public suggestHideTitleBar()V
    .locals 1

    .prologue
    .line 807
    invoke-virtual {p0}, Lme/android/browser/BaseUi;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lme/android/browser/BaseUi;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lme/android/browser/BaseUi;->mTitleBar:Lme/android/browser/TitleBar;

    invoke-virtual {v0}, Lme/android/browser/TitleBar;->wantsToBeVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 808
    iget-object v0, p0, Lme/android/browser/BaseUi;->mNavigationBar:Lme/android/browser/NavigationBarBase;

    invoke-virtual {v0}, Lme/android/browser/NavigationBarBase;->isMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 809
    invoke-virtual {p0}, Lme/android/browser/BaseUi;->hideTitleBar()V

    .line 811
    :cond_0
    return-void
.end method

.method protected updateAutoLogin(Lme/android/browser/Tab;Z)V
    .locals 1
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "animate"    # Z

    .prologue
    .line 590
    iget-object v0, p0, Lme/android/browser/BaseUi;->mTitleBar:Lme/android/browser/TitleBar;

    invoke-virtual {v0, p1, p2}, Lme/android/browser/TitleBar;->updateAutoLogin(Lme/android/browser/Tab;Z)V

    .line 591
    return-void
.end method

.method protected updateLockIconToLatest(Lme/android/browser/Tab;)V
    .locals 1
    .param p1, "t"    # Lme/android/browser/Tab;

    .prologue
    .line 597
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lme/android/browser/Tab;->inForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {p1}, Lme/android/browser/Tab;->getSecurityState()Lme/android/browser/Tab$SecurityState;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/android/browser/BaseUi;->updateLockIconImage(Lme/android/browser/Tab$SecurityState;)V

    .line 600
    :cond_0
    return-void
.end method

.method public updateMenuState(Lme/android/browser/Tab;Landroid/view/Menu;)V
    .locals 0
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 661
    return-void
.end method

.method protected updateNavigationState(Lme/android/browser/Tab;)V
    .locals 0
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 587
    return-void
.end method

.method public updateTabs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lme/android/browser/Tab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p1, "tabs":Ljava/util/List;, "Ljava/util/List<Lme/android/browser/Tab;>;"
    return-void
.end method

.method protected updateUrlBarAutoShowManagerTarget()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 304
    iget-object v2, p0, Lme/android/browser/BaseUi;->mActiveTab:Lme/android/browser/Tab;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lme/android/browser/BaseUi;->mActiveTab:Lme/android/browser/Tab;

    invoke-virtual {v2}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 305
    .local v0, "web":Landroid/webkit/WebView;
    :goto_0
    iget-boolean v2, p0, Lme/android/browser/BaseUi;->mUseQuickControls:Z

    if-nez v2, :cond_1

    instance-of v2, v0, Lme/android/browser/BrowserWebView;

    if-eqz v2, :cond_1

    .line 306
    iget-object v1, p0, Lme/android/browser/BaseUi;->mUrlBarAutoShowManager:Lme/android/browser/UrlBarAutoShowManager;

    check-cast v0, Lme/android/browser/BrowserWebView;

    .end local v0    # "web":Landroid/webkit/WebView;
    invoke-virtual {v1, v0}, Lme/android/browser/UrlBarAutoShowManager;->setTarget(Lme/android/browser/BrowserWebView;)V

    .line 310
    :goto_1
    return-void

    :cond_0
    move-object v0, v1

    .line 304
    goto :goto_0

    .line 308
    .restart local v0    # "web":Landroid/webkit/WebView;
    :cond_1
    iget-object v2, p0, Lme/android/browser/BaseUi;->mUrlBarAutoShowManager:Lme/android/browser/UrlBarAutoShowManager;

    invoke-virtual {v2, v1}, Lme/android/browser/UrlBarAutoShowManager;->setTarget(Lme/android/browser/BrowserWebView;)V

    goto :goto_1
.end method
