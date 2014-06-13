.class public Lcom/android/browser/PhoneUi;
.super Lcom/android/browser/BaseUi;
.source "PhoneUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/PhoneUi$AnimScreen;
    }
.end annotation


# instance fields
.field private mActionBarHeight:I

.field private mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

.field private mNavScreen:Lcom/android/browser/NavScreen;

.field private mNavigationBar:Lcom/android/browser/NavigationBarPhone;

.field mShowNav:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V
    .locals 4
    .param p1, "browser"    # Landroid/app/Activity;
    .param p2, "controller"    # Lcom/android/browser/UiController;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BaseUi;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V

    .line 57
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/PhoneUi;->mShowNav:Z

    .line 65
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->useQuickControls()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/browser/PhoneUi;->setUseQuickControls(Z)V

    .line 66
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getNavigationBar()Lcom/android/browser/NavigationBarBase;

    move-result-object v1

    check-cast v1, Lcom/android/browser/NavigationBarPhone;

    iput-object v1, p0, Lcom/android/browser/PhoneUi;->mNavigationBar:Lcom/android/browser/NavigationBarPhone;

    .line 67
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 68
    .local v0, "heightValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 70
    iget v1, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/browser/PhoneUi;->mActionBarHeight:I

    .line 72
    return-void
.end method

.method static synthetic access$400(Lcom/android/browser/PhoneUi;)Lcom/android/browser/PhoneUi$AnimScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/PhoneUi;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/PhoneUi;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/PhoneUi;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/browser/PhoneUi;->finishAnimationIn()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/browser/PhoneUi;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/PhoneUi;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/browser/PhoneUi;->finishAnimateOut()V

    return-void
.end method

.method private finishAnimateOut()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 435
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mTabControl:Lcom/android/browser/TabControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->setOnThumbnailUpdatedListener(Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;)V

    .line 436
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    invoke-virtual {v0, v2}, Lcom/android/browser/NavScreen;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 438
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 439
    return-void
.end method

.method private finishAnimationIn()V
    .locals 2

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/browser/NavScreen;->sendAccessibilityEvent(I)V

    .line 342
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mTabControl:Lcom/android/browser/TabControl;

    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->setOnThumbnailUpdatedListener(Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;)V

    .line 344
    :cond_0
    return-void
.end method

.method private showingNavScreen()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    invoke-virtual {v0}, Lcom/android/browser/NavScreen;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public editUrl(ZZ)V
    .locals 2
    .param p1, "clearInput"    # Z
    .param p2, "forceIME"    # Z

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/browser/PhoneUi;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setShowProgressOnly(Z)V

    .line 85
    :cond_0
    iget-boolean v0, p0, Lcom/android/browser/PhoneUi;->mShowNav:Z

    if-eqz v0, :cond_1

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/browser/BaseUi;->editUrl(ZZ)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->handleMessage(Landroid/os/Message;)V

    .line 118
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/android/browser/NavScreen;

    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/browser/PhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/browser/NavScreen;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/PhoneUi;)V

    iput-object v0, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    .line 121
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    sget-object v2, Lcom/android/browser/PhoneUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/browser/NavScreen;->setVisibility(I)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    if-nez v0, :cond_1

    .line 125
    new-instance v0, Lcom/android/browser/PhoneUi$AnimScreen;

    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/browser/PhoneUi$AnimScreen;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    .line 127
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->getTitleBar()Lcom/android/browser/TitleBar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/PhoneUi$AnimScreen;->set(Lcom/android/browser/TitleBar;Landroid/webkit/WebView;)V

    .line 130
    :cond_1
    return-void
.end method

.method hideNavScreen(IZ)V
    .locals 33
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 347
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/PhoneUi;->mShowNav:Z

    .line 348
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v28

    if-nez v28, :cond_0

    .line 432
    :goto_0
    return-void

    .line 349
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mUiController:Lcom/android/browser/UiController;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v20

    .line 350
    .local v20, "tab":Lcom/android/browser/Tab;
    if-eqz v20, :cond_1

    if-nez p2, :cond_4

    .line 351
    :cond_1
    if-eqz v20, :cond_3

    .line 352
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/browser/PhoneUi;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 357
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 358
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/PhoneUi;->finishAnimateOut()V

    goto :goto_0

    .line 353
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v28

    if-lez v28, :cond_2

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/browser/PhoneUi;->setActiveTab(Lcom/android/browser/Tab;)V

    goto :goto_1

    .line 361
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/browser/NavScreen;->getTabView(I)Lcom/android/browser/NavTabView;

    move-result-object v21

    .line 362
    .local v21, "tabview":Lcom/android/browser/NavTabView;
    if-nez v21, :cond_6

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v28

    if-lez v28, :cond_5

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/browser/PhoneUi;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 367
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 368
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/PhoneUi;->finishAnimateOut()V

    goto/16 :goto_0

    .line 371
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mUiController:Lcom/android/browser/UiController;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-interface/range {v28 .. v29}, Lcom/android/browser/UiController;->setBlockEvents(Z)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mUiController:Lcom/android/browser/UiController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/browser/UiController;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    if-nez v28, :cond_7

    .line 375
    new-instance v28, Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Lcom/android/browser/PhoneUi$AnimScreen;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    .line 377
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/browser/Tab;->getScreenshot()Landroid/graphics/Bitmap;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/browser/PhoneUi$AnimScreen;->set(Landroid/graphics/Bitmap;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    # getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v28 .. v28}, Lcom/android/browser/PhoneUi$AnimScreen;->access$000(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    if-nez v28, :cond_8

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v29, v0

    # getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v29 .. v29}, Lcom/android/browser/PhoneUi$AnimScreen;->access$000(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v29

    sget-object v30, Lcom/android/browser/PhoneUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {v28 .. v30}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    # getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v28 .. v28}, Lcom/android/browser/PhoneUi$AnimScreen;->access$000(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v32

    invoke-virtual/range {v28 .. v32}, Landroid/view/View;->layout(IIII)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/browser/NavTabScroller;->finishScroller()V

    .line 384
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/browser/NavTabView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    .line 385
    .local v22, "target":Landroid/widget/ImageView;
    const/16 v24, 0x0

    .line 386
    .local v24, "toLeft":I
    invoke-virtual/range {v20 .. v20}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v28

    if-eqz v28, :cond_9

    invoke-virtual/range {v20 .. v20}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v26

    .line 387
    .local v26, "toTop":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v25

    .line 388
    .local v25, "toRight":I
    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v27

    .line 389
    .local v27, "width":I
    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 390
    .local v11, "height":I
    invoke-virtual/range {v21 .. v21}, Lcom/android/browser/NavTabView;->getLeft()I

    move-result v28

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getLeft()I

    move-result v29

    add-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/browser/NavTabScroller;->getScrollX()I

    move-result v29

    sub-int v8, v28, v29

    .line 391
    .local v8, "fromLeft":I
    invoke-virtual/range {v21 .. v21}, Lcom/android/browser/NavTabView;->getTop()I

    move-result v28

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getTop()I

    move-result v29

    add-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/browser/NavTabScroller;->getScrollY()I

    move-result v29

    sub-int v10, v28, v29

    .line 392
    .local v10, "fromTop":I
    add-int v9, v8, v27

    .line 393
    .local v9, "fromRight":I
    add-int v7, v10, v11

    .line 394
    .local v7, "fromBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v16, v28, v29

    .line 395
    .local v16, "scaleFactor":F
    int-to-float v0, v11

    move/from16 v28, v0

    mul-float v28, v28, v16

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-int v23, v26, v28

    .line 396
    .local v23, "toBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    # getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v28 .. v28}, Lcom/android/browser/PhoneUi$AnimScreen;->access$300(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setLeft(I)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    # getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v28 .. v28}, Lcom/android/browser/PhoneUi$AnimScreen;->access$300(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setTop(I)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    # getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v28 .. v28}, Lcom/android/browser/PhoneUi$AnimScreen;->access$300(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setRight(I)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    # getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v28 .. v28}, Lcom/android/browser/PhoneUi$AnimScreen;->access$300(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBottom(I)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    const/high16 v29, 0x3f800000

    # invokes: Lcom/android/browser/PhoneUi$AnimScreen;->setScaleFactor(F)V
    invoke-static/range {v28 .. v29}, Lcom/android/browser/PhoneUi$AnimScreen;->access$200(Lcom/android/browser/PhoneUi$AnimScreen;F)V

    .line 401
    new-instance v17, Landroid/animation/AnimatorSet;

    invoke-direct/range {v17 .. v17}, Landroid/animation/AnimatorSet;-><init>()V

    .line 402
    .local v17, "set1":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    # getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v28 .. v28}, Lcom/android/browser/PhoneUi$AnimScreen;->access$000(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v28

    const-string v29, "alpha"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v30, v0

    fill-array-data v30, :array_0

    invoke-static/range {v28 .. v30}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 403
    .local v6, "fade2":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    move-object/from16 v28, v0

    const-string v29, "alpha"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v30, v0

    fill-array-data v30, :array_1

    invoke-static/range {v28 .. v30}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 404
    .local v5, "fade1":Landroid/animation/ObjectAnimator;
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v5, v28, v29

    const/16 v29, 0x1

    aput-object v6, v28, v29

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 405
    const-wide/16 v28, 0x64

    move-object/from16 v0, v17

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 406
    new-instance v18, Landroid/animation/AnimatorSet;

    invoke-direct/range {v18 .. v18}, Landroid/animation/AnimatorSet;-><init>()V

    .line 407
    .local v18, "set2":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    # getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v28 .. v28}, Lcom/android/browser/PhoneUi$AnimScreen;->access$300(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v28

    const-string v29, "left"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput v8, v30, v31

    const/16 v31, 0x1

    aput v24, v30, v31

    invoke-static/range {v28 .. v30}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 409
    .local v12, "l":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    # getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v28 .. v28}, Lcom/android/browser/PhoneUi$AnimScreen;->access$300(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v28

    const-string v29, "top"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput v10, v30, v31

    const/16 v31, 0x1

    aput v26, v30, v31

    invoke-static/range {v28 .. v30}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v19

    .line 411
    .local v19, "t":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    # getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v28 .. v28}, Lcom/android/browser/PhoneUi$AnimScreen;->access$300(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v28

    const-string v29, "right"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput v9, v30, v31

    const/16 v31, 0x1

    aput v25, v30, v31

    invoke-static/range {v28 .. v30}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 413
    .local v14, "r":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    # getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v28 .. v28}, Lcom/android/browser/PhoneUi$AnimScreen;->access$300(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v28

    const-string v29, "bottom"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput v7, v30, v31

    const/16 v31, 0x1

    aput v23, v30, v31

    invoke-static/range {v28 .. v30}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 415
    .local v3, "b":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    const-string v29, "scaleFactor"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/high16 v32, 0x3f800000

    aput v32, v30, v31

    const/16 v31, 0x1

    aput v16, v30, v31

    invoke-static/range {v28 .. v30}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 417
    .local v15, "scale":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    const-string v29, "alpha"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v30, v0

    fill-array-data v30, :array_2

    invoke-static/range {v28 .. v30}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 418
    .local v13, "otheralpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v28, 0x64

    move-wide/from16 v0, v28

    invoke-virtual {v13, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 419
    const/16 v28, 0x5

    move/from16 v0, v28

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v12, v28, v29

    const/16 v29, 0x1

    aput-object v19, v28, v29

    const/16 v29, 0x2

    aput-object v14, v28, v29

    const/16 v29, 0x3

    aput-object v3, v28, v29

    const/16 v29, 0x4

    aput-object v15, v28, v29

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 420
    const-wide/16 v28, 0xc8

    move-object/from16 v0, v18

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 421
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 422
    .local v4, "combo":Landroid/animation/AnimatorSet;
    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v17, v28, v29

    const/16 v29, 0x1

    aput-object v18, v28, v29

    const/16 v29, 0x2

    aput-object v13, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 423
    new-instance v28, Lcom/android/browser/PhoneUi$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/browser/PhoneUi$2;-><init>(Lcom/android/browser/PhoneUi;)V

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 431
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 386
    .end local v3    # "b":Landroid/animation/ObjectAnimator;
    .end local v4    # "combo":Landroid/animation/AnimatorSet;
    .end local v5    # "fade1":Landroid/animation/ObjectAnimator;
    .end local v6    # "fade2":Landroid/animation/ObjectAnimator;
    .end local v7    # "fromBottom":I
    .end local v8    # "fromLeft":I
    .end local v9    # "fromRight":I
    .end local v10    # "fromTop":I
    .end local v11    # "height":I
    .end local v12    # "l":Landroid/animation/ObjectAnimator;
    .end local v13    # "otheralpha":Landroid/animation/ObjectAnimator;
    .end local v14    # "r":Landroid/animation/ObjectAnimator;
    .end local v15    # "scale":Landroid/animation/ObjectAnimator;
    .end local v16    # "scaleFactor":F
    .end local v17    # "set1":Landroid/animation/AnimatorSet;
    .end local v18    # "set2":Landroid/animation/AnimatorSet;
    .end local v19    # "t":Landroid/animation/ObjectAnimator;
    .end local v23    # "toBottom":I
    .end local v25    # "toRight":I
    .end local v26    # "toTop":I
    .end local v27    # "width":I
    :cond_9
    const/16 v26, 0x0

    goto/16 :goto_2

    .line 402
    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    .line 403
    :array_1
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    .line 417
    :array_2
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method

.method public isWebShowing()Z
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Lcom/android/browser/BaseUi;->isWebShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v0

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
    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method public onActionModeFinished(Z)V
    .locals 2
    .param p1, "inLoad"    # Z

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 246
    if-eqz p1, :cond_1

    .line 247
    iget-boolean v0, p0, Lcom/android/browser/PhoneUi;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setShowProgressOnly(Z)V

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->showTitleBar()V

    .line 252
    :cond_1
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->hideTitleBar()V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/PhoneUi;->mActionBarHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public onBackKey()Z
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/NavScreen;->close(I)V

    .line 93
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/browser/BaseUi;->onBackKey()Z

    move-result v0

    goto :goto_0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;Z)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inLoad"    # Z

    .prologue
    .line 227
    if-eqz p2, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->showTitleBar()V

    .line 230
    :cond_0
    return-void
.end method

.method public onContextMenuCreated(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->hideTitleBar()V

    .line 223
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->hideTitleBar()V

    .line 77
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 212
    invoke-direct {p0}, Lcom/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d00b1

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d00b2

    if-eq v0, v1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/PhoneUi;->hideNavScreen(IZ)V

    .line 217
    :cond_0
    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {p0, v0, p1}, Lcom/android/browser/PhoneUi;->updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V

    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Lcom/android/browser/Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->onProgressChanged(Lcom/android/browser/Tab;)V

    .line 110
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->getTitleBar()Lcom/android/browser/TitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 113
    :cond_0
    return-void
.end method

.method public setActiveTab(Lcom/android/browser/Tab;)V
    .locals 5
    .param p1, "tab"    # Lcom/android/browser/Tab;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 134
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v3}, Lcom/android/browser/TitleBar;->cancelTitleBarAnimation(Z)V

    .line 135
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v3}, Lcom/android/browser/TitleBar;->setSkipTitleBarAnimations(Z)V

    .line 136
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 139
    iget-boolean v1, p0, Lcom/android/browser/PhoneUi;->mShowNav:Z

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {p0, v1}, Lcom/android/browser/PhoneUi;->detachTab(Lcom/android/browser/Tab;)V

    .line 143
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserWebView;

    .line 146
    .local v0, "view":Lcom/android/browser/BrowserWebView;
    if-nez v0, :cond_1

    .line 147
    const-string v1, "PhoneUi"

    const-string v2, "active tab with no webview detected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-boolean v1, p0, Lcom/android/browser/PhoneUi;->mUseQuickControls:Z

    if-eqz v1, :cond_2

    .line 152
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mPieControl:Lcom/android/browser/PieControl;

    iget-object v2, p0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/android/browser/PieControl;->forceToTop(Landroid/widget/FrameLayout;)V

    .line 153
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserWebView;->setTitleBar(Lcom/android/browser/TitleBar;)V

    .line 154
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v3}, Lcom/android/browser/TitleBar;->setShowProgressOnly(Z)V

    .line 159
    :goto_1
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mNavigationBar:Lcom/android/browser/NavigationBarPhone;

    invoke-virtual {v1, v4}, Lcom/android/browser/NavigationBarPhone;->onStateChanged(I)V

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/browser/PhoneUi;->updateLockIconToLatest(Lcom/android/browser/Tab;)V

    .line 161
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v4}, Lcom/android/browser/TitleBar;->setSkipTitleBarAnimations(Z)V

    goto :goto_0

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserWebView;->setTitleBar(Lcom/android/browser/TitleBar;)V

    goto :goto_1
.end method

.method public shouldCaptureThumbnails()Z
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x1

    return v0
.end method

.method showNavScreen()V
    .locals 30

    .prologue
    .line 266
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/PhoneUi;->mShowNav:Z

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mUiController:Lcom/android/browser/UiController;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-interface/range {v25 .. v26}, Lcom/android/browser/UiController;->setBlockEvents(Z)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    move-object/from16 v25, v0

    if-nez v25, :cond_1

    .line 269
    new-instance v25, Lcom/android/browser/NavScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mUiController:Lcom/android/browser/UiController;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/NavScreen;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/PhoneUi;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    move-object/from16 v26, v0

    sget-object v27, Lcom/android/browser/PhoneUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {v25 .. v27}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mActiveTab:Lcom/android/browser/Tab;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/browser/Tab;->capture()V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    if-nez v25, :cond_2

    .line 278
    new-instance v25, Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Lcom/android/browser/PhoneUi$AnimScreen;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    .line 284
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/PhoneUi;->getTitleBar()Lcom/android/browser/TitleBar;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/PhoneUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/android/browser/PhoneUi$AnimScreen;->set(Lcom/android/browser/TitleBar;Landroid/webkit/WebView;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    # getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v25 .. v25}, Lcom/android/browser/PhoneUi$AnimScreen;->access$000(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    if-nez v25, :cond_0

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v26, v0

    # getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v26 .. v26}, Lcom/android/browser/PhoneUi$AnimScreen;->access$000(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v26

    sget-object v27, Lcom/android/browser/PhoneUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {v25 .. v27}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    # getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v25 .. v25}, Lcom/android/browser/PhoneUi$AnimScreen;->access$000(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v29

    invoke-virtual/range {v25 .. v29}, Landroid/view/View;->layout(IIII)V

    .line 292
    const/4 v6, 0x0

    .line 293
    .local v6, "fromLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/PhoneUi;->getTitleBar()Lcom/android/browser/TitleBar;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v8

    .line 294
    .local v8, "fromTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    .line 295
    .local v7, "fromRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    .line 296
    .local v5, "fromBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0b0030

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 297
    .local v24, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0b0031

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 298
    .local v9, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0b0032

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 299
    .local v11, "ntth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v25

    sub-int v25, v25, v24

    div-int/lit8 v18, v25, 0x2

    .line 300
    .local v18, "toLeft":I
    add-int v25, v11, v9

    sub-int v25, v5, v25

    div-int/lit8 v25, v25, 0x2

    add-int v20, v25, v11

    .line 301
    .local v20, "toTop":I
    add-int v19, v18, v24

    .line 302
    .local v19, "toRight":I
    add-int v17, v20, v9

    .line 303
    .local v17, "toBottom":I
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v12, v25, v26

    .line 304
    .local v12, "scaleFactor":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mActiveTab:Lcom/android/browser/Tab;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/browser/PhoneUi;->detachTab(Lcom/android/browser/Tab;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 306
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    .line 307
    .local v13, "set1":Landroid/animation/AnimatorSet;
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 308
    .local v10, "inanim":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    # getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v25 .. v25}, Lcom/android/browser/PhoneUi$AnimScreen;->access$300(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v25

    const-string v26, "left"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput v6, v27, v28

    const/16 v28, 0x1

    aput v18, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v22

    .line 310
    .local v22, "tx":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    # getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v25 .. v25}, Lcom/android/browser/PhoneUi$AnimScreen;->access$300(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v25

    const-string v26, "top"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput v8, v27, v28

    const/16 v28, 0x1

    aput v20, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v23

    .line 312
    .local v23, "ty":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    # getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v25 .. v25}, Lcom/android/browser/PhoneUi$AnimScreen;->access$300(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v25

    const-string v26, "right"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput v7, v27, v28

    const/16 v28, 0x1

    aput v19, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v21

    .line 314
    .local v21, "tr":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    # getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v25 .. v25}, Lcom/android/browser/PhoneUi$AnimScreen;->access$300(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v25

    const-string v26, "bottom"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput v5, v27, v28

    const/16 v28, 0x1

    aput v17, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 316
    .local v15, "tb":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    # getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mTitle:Landroid/widget/ImageView;
    invoke-static/range {v25 .. v25}, Lcom/android/browser/PhoneUi$AnimScreen;->access$100(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v25

    const-string v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    fill-array-data v27, :array_0

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 318
    .local v16, "title":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    const-string v26, "scaleFactor"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/high16 v29, 0x3f800000

    aput v29, v27, v28

    const/16 v28, 0x1

    aput v12, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 320
    .local v14, "sx":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    # getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v25 .. v25}, Lcom/android/browser/PhoneUi$AnimScreen;->access$000(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v25

    const-string v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    fill-array-data v27, :array_1

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 322
    .local v4, "blend1":Landroid/animation/ObjectAnimator;
    const-wide/16 v25, 0x64

    move-wide/from16 v0, v25

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 324
    const/16 v25, 0x6

    move/from16 v0, v25

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v22, v25, v26

    const/16 v26, 0x1

    aput-object v23, v25, v26

    const/16 v26, 0x2

    aput-object v21, v25, v26

    const/16 v26, 0x3

    aput-object v15, v25, v26

    const/16 v26, 0x4

    aput-object v14, v25, v26

    const/16 v26, 0x5

    aput-object v16, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 325
    const-wide/16 v25, 0xc8

    move-wide/from16 v0, v25

    invoke-virtual {v10, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 326
    new-instance v25, Lcom/android/browser/PhoneUi$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/browser/PhoneUi$1;-><init>(Lcom/android/browser/PhoneUi;)V

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 334
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v10, v25, v26

    const/16 v26, 0x1

    aput-object v4, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 335
    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    .line 336
    return-void

    .line 272
    .end local v4    # "blend1":Landroid/animation/ObjectAnimator;
    .end local v5    # "fromBottom":I
    .end local v6    # "fromLeft":I
    .end local v7    # "fromRight":I
    .end local v8    # "fromTop":I
    .end local v9    # "height":I
    .end local v10    # "inanim":Landroid/animation/AnimatorSet;
    .end local v11    # "ntth":I
    .end local v12    # "scaleFactor":F
    .end local v13    # "set1":Landroid/animation/AnimatorSet;
    .end local v14    # "sx":Landroid/animation/ObjectAnimator;
    .end local v15    # "tb":Landroid/animation/ObjectAnimator;
    .end local v16    # "title":Landroid/animation/ObjectAnimator;
    .end local v17    # "toBottom":I
    .end local v18    # "toLeft":I
    .end local v19    # "toRight":I
    .end local v20    # "toTop":I
    .end local v21    # "tr":Landroid/animation/ObjectAnimator;
    .end local v22    # "tx":Landroid/animation/ObjectAnimator;
    .end local v23    # "ty":Landroid/animation/ObjectAnimator;
    .end local v24    # "width":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/browser/NavScreen;->setVisibility(I)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    move-object/from16 v25, v0

    const/high16 v26, 0x3f800000

    invoke-virtual/range {v25 .. v26}, Lcom/android/browser/NavScreen;->setAlpha(F)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/browser/NavScreen;->refreshAdapter()V

    goto/16 :goto_0

    .line 280
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    # getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v25 .. v25}, Lcom/android/browser/PhoneUi$AnimScreen;->access$000(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v25

    const/high16 v26, 0x3f800000

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setAlpha(F)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    # getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mTitle:Landroid/widget/ImageView;
    invoke-static/range {v25 .. v25}, Lcom/android/browser/PhoneUi$AnimScreen;->access$100(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v25

    const/high16 v26, 0x3f800000

    invoke-virtual/range {v25 .. v26}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    const/high16 v26, 0x3f800000

    # invokes: Lcom/android/browser/PhoneUi$AnimScreen;->setScaleFactor(F)V
    invoke-static/range {v25 .. v26}, Lcom/android/browser/PhoneUi$AnimScreen;->access$200(Lcom/android/browser/PhoneUi$AnimScreen;F)V

    goto/16 :goto_1

    .line 316
    :array_0
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    .line 320
    :array_1
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method

.method public showWeb(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 261
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->showWeb(Z)V

    .line 262
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/browser/PhoneUi;->hideNavScreen(IZ)V

    .line 263
    return-void
.end method

.method public toggleNavScreen()V
    .locals 2

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->showNavScreen()V

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/PhoneUi;->hideNavScreen(IZ)V

    goto :goto_0
.end method

.method public updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V
    .locals 10
    .param p1, "tab"    # Lcom/android/browser/Tab;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 174
    const v7, 0x7f0d00a6

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 175
    .local v1, "bm":Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v7

    if-nez v7, :cond_9

    move v7, v8

    :goto_0
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 178
    :cond_0
    const v7, 0x7f0d00a7

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 179
    .local v0, "abm":Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 180
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/android/browser/Tab;->isSnapshot()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-direct {p0}, Lcom/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v7

    if-nez v7, :cond_a

    move v7, v8

    :goto_1
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 182
    :cond_1
    const v7, 0x7f0d00b3

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 183
    .local v4, "info":Landroid/view/MenuItem;
    if-eqz v4, :cond_2

    .line 184
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 186
    :cond_2
    const v7, 0x7f0d00a4

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 187
    .local v6, "newtab":Landroid/view/MenuItem;
    if-eqz v6, :cond_3

    iget-boolean v7, p0, Lcom/android/browser/PhoneUi;->mUseQuickControls:Z

    if-nez v7, :cond_3

    .line 188
    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 190
    :cond_3
    const v7, 0x7f0d00a5

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 191
    .local v3, "incognito":Landroid/view/MenuItem;
    if-eqz v3, :cond_5

    .line 192
    invoke-direct {p0}, Lcom/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v7

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lcom/android/browser/PhoneUi;->mUseQuickControls:Z

    if-eqz v7, :cond_b

    :cond_4
    move v7, v8

    :goto_2
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 194
    :cond_5
    const v7, 0x7f0d00b0

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 195
    .local v2, "closeOthers":Landroid/view/MenuItem;
    if-eqz v2, :cond_7

    .line 196
    const/4 v5, 0x1

    .line 197
    .local v5, "isLastTab":Z
    if-eqz p1, :cond_6

    .line 198
    iget-object v7, p0, Lcom/android/browser/PhoneUi;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v7}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v7

    if-gt v7, v8, :cond_c

    move v5, v8

    .line 200
    :cond_6
    :goto_3
    if-nez v5, :cond_d

    move v7, v8

    :goto_4
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 202
    .end local v5    # "isLastTab":Z
    :cond_7
    invoke-direct {p0}, Lcom/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 203
    const v7, 0x7f0d00a8

    invoke-interface {p2, v7, v9}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 204
    const v7, 0x7f0d00ad

    invoke-interface {p2, v7, v9}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 205
    const v7, 0x7f0d00a1

    invoke-interface {p2, v7, v9}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 206
    const v7, 0x7f0d00af

    invoke-interface {p2, v7, v8}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 208
    :cond_8
    return-void

    .end local v0    # "abm":Landroid/view/MenuItem;
    .end local v2    # "closeOthers":Landroid/view/MenuItem;
    .end local v3    # "incognito":Landroid/view/MenuItem;
    .end local v4    # "info":Landroid/view/MenuItem;
    .end local v6    # "newtab":Landroid/view/MenuItem;
    :cond_9
    move v7, v9

    .line 176
    goto/16 :goto_0

    .restart local v0    # "abm":Landroid/view/MenuItem;
    :cond_a
    move v7, v9

    .line 180
    goto :goto_1

    .restart local v3    # "incognito":Landroid/view/MenuItem;
    .restart local v4    # "info":Landroid/view/MenuItem;
    .restart local v6    # "newtab":Landroid/view/MenuItem;
    :cond_b
    move v7, v9

    .line 192
    goto :goto_2

    .restart local v2    # "closeOthers":Landroid/view/MenuItem;
    .restart local v5    # "isLastTab":Z
    :cond_c
    move v5, v9

    .line 198
    goto :goto_3

    :cond_d
    move v7, v9

    .line 200
    goto :goto_4
.end method
