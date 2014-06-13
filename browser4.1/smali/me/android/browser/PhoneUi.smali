.class public Lme/android/browser/PhoneUi;
.super Lme/android/browser/BaseUi;
.source "PhoneUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/android/browser/PhoneUi$AnimScreen;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "PhoneUi"

.field private static final MSG_INIT_NAVSCREEN:I = 0x64


# instance fields
.field private mActionBarHeight:I

.field private mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

.field mAnimating:Z

.field private mNavScreen:Lme/android/browser/NavScreen;

.field private mNavigationBar:Lme/android/browser/NavigationBarPhone;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lme/android/browser/UiController;)V
    .locals 4
    .param p1, "browser"    # Landroid/app/Activity;
    .param p2, "controller"    # Lme/android/browser/UiController;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lme/android/browser/BaseUi;-><init>(Landroid/app/Activity;Lme/android/browser/UiController;)V

    .line 64
    invoke-static {}, Lme/android/browser/BrowserSettings;->getInstance()Lme/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lme/android/browser/BrowserSettings;->useQuickControls()Z

    move-result v1

    invoke-virtual {p0, v1}, Lme/android/browser/PhoneUi;->setUseQuickControls(Z)V

    .line 65
    iget-object v1, p0, Lme/android/browser/PhoneUi;->mTitleBar:Lme/android/browser/TitleBar;

    invoke-virtual {v1}, Lme/android/browser/TitleBar;->getNavigationBar()Lme/android/browser/NavigationBarBase;

    move-result-object v1

    check-cast v1, Lme/android/browser/NavigationBarPhone;

    iput-object v1, p0, Lme/android/browser/PhoneUi;->mNavigationBar:Lme/android/browser/NavigationBarPhone;

    .line 66
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 67
    .local v0, "heightValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 68
    const v2, 0x10102eb

    const/4 v3, 0x1

    .line 67
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 69
    iget v1, v0, Landroid/util/TypedValue;->data:I

    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 69
    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lme/android/browser/PhoneUi;->mActionBarHeight:I

    .line 71
    return-void
.end method

.method static synthetic access$0(Lme/android/browser/PhoneUi;)Lme/android/browser/PhoneUi$AnimScreen;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    return-object v0
.end method

.method static synthetic access$1(Lme/android/browser/PhoneUi;)V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0}, Lme/android/browser/PhoneUi;->finishAnimationIn()V

    return-void
.end method

.method static synthetic access$2(Lme/android/browser/PhoneUi;)V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0}, Lme/android/browser/PhoneUi;->finishAnimateOut()V

    return-void
.end method

.method private finishAnimateOut()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 416
    iget-object v0, p0, Lme/android/browser/PhoneUi;->mTabControl:Lme/android/browser/TabControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/android/browser/TabControl;->setOnThumbnailUpdatedListener(Lme/android/browser/TabControl$OnThumbnailUpdatedListener;)V

    .line 417
    iget-object v0, p0, Lme/android/browser/PhoneUi;->mNavScreen:Lme/android/browser/NavScreen;

    invoke-virtual {v0, v2}, Lme/android/browser/NavScreen;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lme/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 419
    iget-object v0, p0, Lme/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 420
    return-void
.end method

.method private finishAnimationIn()V
    .locals 2

    .prologue
    .line 321
    invoke-direct {p0}, Lme/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lme/android/browser/PhoneUi;->mNavScreen:Lme/android/browser/NavScreen;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lme/android/browser/NavScreen;->sendAccessibilityEvent(I)V

    .line 324
    iget-object v0, p0, Lme/android/browser/PhoneUi;->mTabControl:Lme/android/browser/TabControl;

    iget-object v1, p0, Lme/android/browser/PhoneUi;->mNavScreen:Lme/android/browser/NavScreen;

    invoke-virtual {v0, v1}, Lme/android/browser/TabControl;->setOnThumbnailUpdatedListener(Lme/android/browser/TabControl$OnThumbnailUpdatedListener;)V

    .line 326
    :cond_0
    return-void
.end method

.method private showingNavScreen()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lme/android/browser/PhoneUi;->mNavScreen:Lme/android/browser/NavScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/android/browser/PhoneUi;->mNavScreen:Lme/android/browser/NavScreen;

    invoke-virtual {v0}, Lme/android/browser/NavScreen;->getVisibility()I

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
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public editUrl(ZZ)V
    .locals 2
    .param p1, "clearInput"    # Z
    .param p2, "forceIME"    # Z

    .prologue
    .line 80
    iget-boolean v0, p0, Lme/android/browser/PhoneUi;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lme/android/browser/PhoneUi;->mTitleBar:Lme/android/browser/TitleBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/android/browser/TitleBar;->setShowProgressOnly(Z)V

    .line 83
    :cond_0
    invoke-super {p0, p1, p2}, Lme/android/browser/BaseUi;->editUrl(ZZ)V

    .line 84
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 114
    invoke-super {p0, p1}, Lme/android/browser/BaseUi;->handleMessage(Landroid/os/Message;)V

    .line 115
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 116
    iget-object v0, p0, Lme/android/browser/PhoneUi;->mNavScreen:Lme/android/browser/NavScreen;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lme/android/browser/NavScreen;

    iget-object v1, p0, Lme/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lme/android/browser/PhoneUi;->mUiController:Lme/android/browser/UiController;

    invoke-direct {v0, v1, v2, p0}, Lme/android/browser/NavScreen;-><init>(Landroid/app/Activity;Lme/android/browser/UiController;Lme/android/browser/PhoneUi;)V

    iput-object v0, p0, Lme/android/browser/PhoneUi;->mNavScreen:Lme/android/browser/NavScreen;

    .line 118
    iget-object v0, p0, Lme/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lme/android/browser/PhoneUi;->mNavScreen:Lme/android/browser/NavScreen;

    sget-object v2, Lme/android/browser/PhoneUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v0, p0, Lme/android/browser/PhoneUi;->mNavScreen:Lme/android/browser/NavScreen;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lme/android/browser/NavScreen;->setVisibility(I)V

    .line 121
    :cond_0
    iget-object v0, p0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    if-nez v0, :cond_1

    .line 122
    new-instance v0, Lme/android/browser/PhoneUi$AnimScreen;

    iget-object v1, p0, Lme/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lme/android/browser/PhoneUi$AnimScreen;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    .line 124
    iget-object v0, p0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    invoke-virtual {p0}, Lme/android/browser/PhoneUi;->getTitleBar()Lme/android/browser/TitleBar;

    move-result-object v1

    invoke-virtual {p0}, Lme/android/browser/PhoneUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lme/android/browser/PhoneUi$AnimScreen;->set(Lme/android/browser/TitleBar;Landroid/webkit/WebView;)V

    .line 127
    :cond_1
    return-void
.end method

.method hideNavScreen(IZ)V
    .locals 33
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 329
    invoke-direct/range {p0 .. p0}, Lme/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v28

    if-nez v28, :cond_0

    .line 413
    :goto_0
    return-void

    .line 330
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mUiController:Lme/android/browser/UiController;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lme/android/browser/UiController;->getTabControl()Lme/android/browser/TabControl;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lme/android/browser/TabControl;->getTab(I)Lme/android/browser/Tab;

    move-result-object v20

    .line 331
    .local v20, "tab":Lme/android/browser/Tab;
    if-eqz v20, :cond_1

    if-nez p2, :cond_4

    .line 332
    :cond_1
    if-eqz v20, :cond_3

    .line 333
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lme/android/browser/PhoneUi;->setActiveTab(Lme/android/browser/Tab;)V

    .line 338
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 339
    invoke-direct/range {p0 .. p0}, Lme/android/browser/PhoneUi;->finishAnimateOut()V

    goto :goto_0

    .line 334
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mTabControl:Lme/android/browser/TabControl;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lme/android/browser/TabControl;->getTabCount()I

    move-result v28

    if-lez v28, :cond_2

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mTabControl:Lme/android/browser/TabControl;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lme/android/browser/PhoneUi;->setActiveTab(Lme/android/browser/Tab;)V

    goto :goto_1

    .line 342
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mNavScreen:Lme/android/browser/NavScreen;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lme/android/browser/NavScreen;->getTabView(I)Lme/android/browser/NavTabView;

    move-result-object v21

    .line 343
    .local v21, "tabview":Lme/android/browser/NavTabView;
    if-nez v21, :cond_6

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mTabControl:Lme/android/browser/TabControl;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lme/android/browser/TabControl;->getTabCount()I

    move-result v28

    if-lez v28, :cond_5

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mTabControl:Lme/android/browser/TabControl;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lme/android/browser/PhoneUi;->setActiveTab(Lme/android/browser/Tab;)V

    .line 348
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 349
    invoke-direct/range {p0 .. p0}, Lme/android/browser/PhoneUi;->finishAnimateOut()V

    goto/16 :goto_0

    .line 352
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mUiController:Lme/android/browser/UiController;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-interface/range {v28 .. v29}, Lme/android/browser/UiController;->setBlockEvents(Z)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mUiController:Lme/android/browser/UiController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lme/android/browser/UiController;->setActiveTab(Lme/android/browser/Tab;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    if-nez v28, :cond_7

    .line 356
    new-instance v28, Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Lme/android/browser/PhoneUi$AnimScreen;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    .line 358
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    invoke-virtual/range {v20 .. v20}, Lme/android/browser/Tab;->getScreenshot()Landroid/graphics/Bitmap;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lme/android/browser/PhoneUi$AnimScreen;->set(Landroid/graphics/Bitmap;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    # getter for: Lme/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v28 .. v28}, Lme/android/browser/PhoneUi$AnimScreen;->access$0(Lme/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    if-nez v28, :cond_8

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v29, v0

    # getter for: Lme/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v29 .. v29}, Lme/android/browser/PhoneUi$AnimScreen;->access$0(Lme/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v29

    sget-object v30, Lme/android/browser/PhoneUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {v28 .. v30}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    # getter for: Lme/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v28 .. v28}, Lme/android/browser/PhoneUi$AnimScreen;->access$0(Lme/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v31

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v32

    .line 362
    invoke-virtual/range {v28 .. v32}, Landroid/view/View;->layout(IIII)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mNavScreen:Lme/android/browser/NavScreen;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lme/android/browser/NavScreen;->mScroller:Lme/android/browser/NavTabScroller;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lme/android/browser/NavTabScroller;->finishScroller()V

    .line 365
    move-object/from16 v0, v21

    iget-object v0, v0, Lme/android/browser/NavTabView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    .line 366
    .local v22, "target":Landroid/widget/ImageView;
    const/16 v24, 0x0

    .line 367
    .local v24, "toLeft":I
    invoke-virtual/range {v20 .. v20}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v28

    if-eqz v28, :cond_9

    invoke-virtual/range {v20 .. v20}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v26

    .line 368
    .local v26, "toTop":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v25

    .line 369
    .local v25, "toRight":I
    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v27

    .line 370
    .local v27, "width":I
    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 371
    .local v11, "height":I
    invoke-virtual/range {v21 .. v21}, Lme/android/browser/NavTabView;->getLeft()I

    move-result v28

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getLeft()I

    move-result v29

    add-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mNavScreen:Lme/android/browser/NavScreen;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lme/android/browser/NavScreen;->mScroller:Lme/android/browser/NavTabScroller;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lme/android/browser/NavTabScroller;->getScrollX()I

    move-result v29

    sub-int v8, v28, v29

    .line 372
    .local v8, "fromLeft":I
    invoke-virtual/range {v21 .. v21}, Lme/android/browser/NavTabView;->getTop()I

    move-result v28

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getTop()I

    move-result v29

    add-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mNavScreen:Lme/android/browser/NavScreen;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lme/android/browser/NavScreen;->mScroller:Lme/android/browser/NavTabScroller;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lme/android/browser/NavTabScroller;->getScrollY()I

    move-result v29

    sub-int v10, v28, v29

    .line 373
    .local v10, "fromTop":I
    add-int v9, v8, v27

    .line 374
    .local v9, "fromRight":I
    add-int v7, v10, v11

    .line 375
    .local v7, "fromBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

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

    .line 376
    .local v16, "scaleFactor":F
    int-to-float v0, v11

    move/from16 v28, v0

    mul-float v28, v28, v16

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-int v23, v26, v28

    .line 377
    .local v23, "toBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    # getter for: Lme/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v28 .. v28}, Lme/android/browser/PhoneUi$AnimScreen;->access$3(Lme/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setLeft(I)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    # getter for: Lme/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v28 .. v28}, Lme/android/browser/PhoneUi$AnimScreen;->access$3(Lme/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setTop(I)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    # getter for: Lme/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v28 .. v28}, Lme/android/browser/PhoneUi$AnimScreen;->access$3(Lme/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setRight(I)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    # getter for: Lme/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v28 .. v28}, Lme/android/browser/PhoneUi$AnimScreen;->access$3(Lme/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBottom(I)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    const/high16 v29, 0x3f800000

    # invokes: Lme/android/browser/PhoneUi$AnimScreen;->setScaleFactor(F)V
    invoke-static/range {v28 .. v29}, Lme/android/browser/PhoneUi$AnimScreen;->access$2(Lme/android/browser/PhoneUi$AnimScreen;F)V

    .line 382
    new-instance v17, Landroid/animation/AnimatorSet;

    invoke-direct/range {v17 .. v17}, Landroid/animation/AnimatorSet;-><init>()V

    .line 383
    .local v17, "set1":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    # getter for: Lme/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v28 .. v28}, Lme/android/browser/PhoneUi$AnimScreen;->access$0(Lme/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v28

    const-string v29, "alpha"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v30, v0

    fill-array-data v30, :array_0

    invoke-static/range {v28 .. v30}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 384
    .local v6, "fade2":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mNavScreen:Lme/android/browser/NavScreen;

    move-object/from16 v28, v0

    const-string v29, "alpha"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v30, v0

    fill-array-data v30, :array_1

    invoke-static/range {v28 .. v30}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 385
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

    .line 386
    const-wide/16 v28, 0x64

    move-object/from16 v0, v17

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 387
    new-instance v18, Landroid/animation/AnimatorSet;

    invoke-direct/range {v18 .. v18}, Landroid/animation/AnimatorSet;-><init>()V

    .line 388
    .local v18, "set2":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    # getter for: Lme/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v28 .. v28}, Lme/android/browser/PhoneUi$AnimScreen;->access$3(Lme/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v28

    const-string v29, "left"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    .line 389
    aput v8, v30, v31

    const/16 v31, 0x1

    aput v24, v30, v31

    .line 388
    invoke-static/range {v28 .. v30}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 390
    .local v12, "l":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    # getter for: Lme/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v28 .. v28}, Lme/android/browser/PhoneUi$AnimScreen;->access$3(Lme/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v28

    const-string v29, "top"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    .line 391
    aput v10, v30, v31

    const/16 v31, 0x1

    aput v26, v30, v31

    .line 390
    invoke-static/range {v28 .. v30}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v19

    .line 392
    .local v19, "t":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    # getter for: Lme/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v28 .. v28}, Lme/android/browser/PhoneUi$AnimScreen;->access$3(Lme/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v28

    const-string v29, "right"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    .line 393
    aput v9, v30, v31

    const/16 v31, 0x1

    aput v25, v30, v31

    .line 392
    invoke-static/range {v28 .. v30}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 394
    .local v14, "r":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    # getter for: Lme/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v28 .. v28}, Lme/android/browser/PhoneUi$AnimScreen;->access$3(Lme/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v28

    const-string v29, "bottom"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    .line 395
    aput v7, v30, v31

    const/16 v31, 0x1

    aput v23, v30, v31

    .line 394
    invoke-static/range {v28 .. v30}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 396
    .local v3, "b":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    const-string v29, "scaleFactor"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v30, v0

    const/16 v31, 0x0

    .line 397
    const/high16 v32, 0x3f800000

    aput v32, v30, v31

    const/16 v31, 0x1

    aput v16, v30, v31

    .line 396
    invoke-static/range {v28 .. v30}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 398
    .local v15, "scale":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    const-string v29, "alpha"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v30, v0

    fill-array-data v30, :array_2

    invoke-static/range {v28 .. v30}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 399
    .local v13, "otheralpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v28, 0x64

    move-wide/from16 v0, v28

    invoke-virtual {v13, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 400
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

    .line 401
    const-wide/16 v28, 0xc8

    move-object/from16 v0, v18

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 402
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 403
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

    .line 404
    new-instance v28, Lme/android/browser/PhoneUi$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lme/android/browser/PhoneUi$2;-><init>(Lme/android/browser/PhoneUi;)V

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 412
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 367
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

    .line 383
    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    .line 384
    :array_1
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    .line 398
    :array_2
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method

.method public isWebShowing()Z
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Lme/android/browser/BaseUi;->isWebShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lme/android/browser/PhoneUi;->showingNavScreen()Z

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
    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method public onActionModeFinished(Z)V
    .locals 2
    .param p1, "inLoad"    # Z

    .prologue
    .line 228
    iget-object v0, p0, Lme/android/browser/PhoneUi;->mTitleBar:Lme/android/browser/TitleBar;

    invoke-virtual {v0}, Lme/android/browser/TitleBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 229
    if-eqz p1, :cond_1

    .line 230
    iget-boolean v0, p0, Lme/android/browser/PhoneUi;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lme/android/browser/PhoneUi;->mTitleBar:Lme/android/browser/TitleBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lme/android/browser/TitleBar;->setShowProgressOnly(Z)V

    .line 233
    :cond_0
    invoke-virtual {p0}, Lme/android/browser/PhoneUi;->showTitleBar()V

    .line 235
    :cond_1
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 219
    invoke-virtual {p0}, Lme/android/browser/PhoneUi;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lme/android/browser/PhoneUi;->hideTitleBar()V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lme/android/browser/PhoneUi;->mTitleBar:Lme/android/browser/TitleBar;

    invoke-virtual {v0}, Lme/android/browser/TitleBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lme/android/browser/PhoneUi;->mActionBarHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public onBackKey()Z
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Lme/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lme/android/browser/PhoneUi;->mNavScreen:Lme/android/browser/NavScreen;

    iget-object v1, p0, Lme/android/browser/PhoneUi;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v1}, Lme/android/browser/UiController;->getTabControl()Lme/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lme/android/browser/TabControl;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lme/android/browser/NavScreen;->close(I)V

    .line 90
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lme/android/browser/BaseUi;->onBackKey()Z

    move-result v0

    goto :goto_0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;Z)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inLoad"    # Z

    .prologue
    .line 210
    if-eqz p2, :cond_0

    .line 211
    invoke-virtual {p0}, Lme/android/browser/PhoneUi;->showTitleBar()V

    .line 213
    :cond_0
    return-void
.end method

.method public onContextMenuCreated(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 205
    invoke-virtual {p0}, Lme/android/browser/PhoneUi;->hideTitleBar()V

    .line 206
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 75
    invoke-virtual {p0}, Lme/android/browser/PhoneUi;->hideTitleBar()V

    .line 76
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 195
    invoke-direct {p0}, Lme/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d00b0

    if-eq v0, v1, :cond_0

    .line 197
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d00b1

    if-eq v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lme/android/browser/PhoneUi;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v0}, Lme/android/browser/UiController;->getTabControl()Lme/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lme/android/browser/TabControl;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lme/android/browser/PhoneUi;->hideNavScreen(IZ)V

    .line 200
    :cond_0
    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 159
    iget-object v0, p0, Lme/android/browser/PhoneUi;->mActiveTab:Lme/android/browser/Tab;

    invoke-virtual {p0, v0, p1}, Lme/android/browser/PhoneUi;->updateMenuState(Lme/android/browser/Tab;Landroid/view/Menu;)V

    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Lme/android/browser/Tab;)V
    .locals 2
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lme/android/browser/BaseUi;->onProgressChanged(Lme/android/browser/Tab;)V

    .line 107
    iget-object v0, p0, Lme/android/browser/PhoneUi;->mNavScreen:Lme/android/browser/NavScreen;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lme/android/browser/PhoneUi;->getTitleBar()Lme/android/browser/TitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lme/android/browser/TitleBar;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 108
    iget-object v0, p0, Lme/android/browser/PhoneUi;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    :cond_0
    return-void
.end method

.method public setActiveTab(Lme/android/browser/Tab;)V
    .locals 5
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 131
    iget-object v1, p0, Lme/android/browser/PhoneUi;->mTitleBar:Lme/android/browser/TitleBar;

    invoke-virtual {v1, v3}, Lme/android/browser/TitleBar;->cancelTitleBarAnimation(Z)V

    .line 132
    iget-object v1, p0, Lme/android/browser/PhoneUi;->mTitleBar:Lme/android/browser/TitleBar;

    invoke-virtual {v1, v3}, Lme/android/browser/TitleBar;->setSkipTitleBarAnimations(Z)V

    .line 133
    invoke-super {p0, p1}, Lme/android/browser/BaseUi;->setActiveTab(Lme/android/browser/Tab;)V

    .line 134
    invoke-virtual {p1}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Lme/android/browser/BrowserWebView;

    .line 137
    .local v0, "view":Lme/android/browser/BrowserWebView;
    if-nez v0, :cond_0

    .line 138
    const-string v1, "PhoneUi"

    const-string v2, "active tab with no webview detected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-boolean v1, p0, Lme/android/browser/PhoneUi;->mUseQuickControls:Z

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lme/android/browser/PhoneUi;->mPieControl:Lme/android/browser/PieControl;

    iget-object v2, p0, Lme/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lme/android/browser/PieControl;->forceToTop(Landroid/widget/FrameLayout;)V

    .line 144
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/android/browser/BrowserWebView;->setTitleBar(Lme/android/browser/TitleBar;)V

    .line 145
    iget-object v1, p0, Lme/android/browser/PhoneUi;->mTitleBar:Lme/android/browser/TitleBar;

    invoke-virtual {v1, v3}, Lme/android/browser/TitleBar;->setShowProgressOnly(Z)V

    .line 150
    :goto_1
    iget-object v1, p0, Lme/android/browser/PhoneUi;->mNavigationBar:Lme/android/browser/NavigationBarPhone;

    invoke-virtual {v1, v4}, Lme/android/browser/NavigationBarPhone;->onStateChanged(I)V

    .line 151
    invoke-virtual {p0, p1}, Lme/android/browser/PhoneUi;->updateLockIconToLatest(Lme/android/browser/Tab;)V

    .line 152
    iget-object v1, p0, Lme/android/browser/PhoneUi;->mTitleBar:Lme/android/browser/TitleBar;

    invoke-virtual {v1, v4}, Lme/android/browser/TitleBar;->setSkipTitleBarAnimations(Z)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v1, p0, Lme/android/browser/PhoneUi;->mTitleBar:Lme/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Lme/android/browser/BrowserWebView;->setTitleBar(Lme/android/browser/TitleBar;)V

    goto :goto_1
.end method

.method public shouldCaptureThumbnails()Z
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x1

    return v0
.end method

.method showNavScreen()V
    .locals 30

    .prologue
    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mUiController:Lme/android/browser/UiController;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-interface/range {v25 .. v26}, Lme/android/browser/UiController;->setBlockEvents(Z)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mNavScreen:Lme/android/browser/NavScreen;

    move-object/from16 v25, v0

    if-nez v25, :cond_1

    .line 251
    new-instance v25, Lme/android/browser/NavScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mUiController:Lme/android/browser/UiController;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lme/android/browser/NavScreen;-><init>(Landroid/app/Activity;Lme/android/browser/UiController;Lme/android/browser/PhoneUi;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lme/android/browser/PhoneUi;->mNavScreen:Lme/android/browser/NavScreen;

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mNavScreen:Lme/android/browser/NavScreen;

    move-object/from16 v26, v0

    sget-object v27, Lme/android/browser/PhoneUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {v25 .. v27}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mActiveTab:Lme/android/browser/Tab;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lme/android/browser/Tab;->capture()V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    if-nez v25, :cond_2

    .line 260
    new-instance v25, Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Lme/android/browser/PhoneUi$AnimScreen;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    .line 266
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lme/android/browser/PhoneUi;->getTitleBar()Lme/android/browser/TitleBar;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lme/android/browser/PhoneUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lme/android/browser/PhoneUi$AnimScreen;->set(Lme/android/browser/TitleBar;Landroid/webkit/WebView;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    # getter for: Lme/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v25 .. v25}, Lme/android/browser/PhoneUi$AnimScreen;->access$0(Lme/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    if-nez v25, :cond_0

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v26, v0

    # getter for: Lme/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v26 .. v26}, Lme/android/browser/PhoneUi$AnimScreen;->access$0(Lme/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v26

    sget-object v27, Lme/android/browser/PhoneUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {v25 .. v27}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    # getter for: Lme/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v25 .. v25}, Lme/android/browser/PhoneUi$AnimScreen;->access$0(Lme/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v28

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v29

    .line 272
    invoke-virtual/range {v25 .. v29}, Landroid/view/View;->layout(IIII)V

    .line 274
    const/4 v6, 0x0

    .line 275
    .local v6, "fromLeft":I
    invoke-virtual/range {p0 .. p0}, Lme/android/browser/PhoneUi;->getTitleBar()Lme/android/browser/TitleBar;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lme/android/browser/TitleBar;->getHeight()I

    move-result v8

    .line 276
    .local v8, "fromTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    .line 277
    .local v7, "fromRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    .line 278
    .local v5, "fromBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0c0030

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 279
    .local v24, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0c0031

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 280
    .local v9, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0c0032

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 281
    .local v11, "ntth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v25

    sub-int v25, v25, v24

    div-int/lit8 v18, v25, 0x2

    .line 282
    .local v18, "toLeft":I
    add-int v25, v11, v9

    sub-int v25, v5, v25

    div-int/lit8 v25, v25, 0x2

    add-int v20, v25, v11

    .line 283
    .local v20, "toTop":I
    add-int v19, v18, v24

    .line 284
    .local v19, "toRight":I
    add-int v17, v20, v9

    .line 285
    .local v17, "toBottom":I
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v12, v25, v26

    .line 286
    .local v12, "scaleFactor":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mActiveTab:Lme/android/browser/Tab;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lme/android/browser/PhoneUi;->detachTab(Lme/android/browser/Tab;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 288
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    .line 289
    .local v13, "set1":Landroid/animation/AnimatorSet;
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 290
    .local v10, "inanim":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    # getter for: Lme/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v25 .. v25}, Lme/android/browser/PhoneUi$AnimScreen;->access$3(Lme/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v25

    const-string v26, "left"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    .line 291
    aput v6, v27, v28

    const/16 v28, 0x1

    aput v18, v27, v28

    .line 290
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v22

    .line 292
    .local v22, "tx":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    # getter for: Lme/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v25 .. v25}, Lme/android/browser/PhoneUi$AnimScreen;->access$3(Lme/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v25

    const-string v26, "top"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    .line 293
    aput v8, v27, v28

    const/16 v28, 0x1

    aput v20, v27, v28

    .line 292
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v23

    .line 294
    .local v23, "ty":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    # getter for: Lme/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v25 .. v25}, Lme/android/browser/PhoneUi$AnimScreen;->access$3(Lme/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v25

    const-string v26, "right"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    .line 295
    aput v7, v27, v28

    const/16 v28, 0x1

    aput v19, v27, v28

    .line 294
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v21

    .line 296
    .local v21, "tr":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    # getter for: Lme/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v25 .. v25}, Lme/android/browser/PhoneUi$AnimScreen;->access$3(Lme/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v25

    const-string v26, "bottom"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    .line 297
    aput v5, v27, v28

    const/16 v28, 0x1

    aput v17, v27, v28

    .line 296
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 298
    .local v15, "tb":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    # getter for: Lme/android/browser/PhoneUi$AnimScreen;->mTitle:Landroid/widget/ImageView;
    invoke-static/range {v25 .. v25}, Lme/android/browser/PhoneUi$AnimScreen;->access$1(Lme/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v25

    const-string v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    fill-array-data v27, :array_0

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 300
    .local v16, "title":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    const-string v26, "scaleFactor"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    .line 301
    const/high16 v29, 0x3f800000

    aput v29, v27, v28

    const/16 v28, 0x1

    aput v12, v27, v28

    .line 300
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 302
    .local v14, "sx":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    # getter for: Lme/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v25 .. v25}, Lme/android/browser/PhoneUi$AnimScreen;->access$0(Lme/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v25

    .line 303
    const-string v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    fill-array-data v27, :array_1

    .line 302
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 304
    .local v4, "blend1":Landroid/animation/ObjectAnimator;
    const-wide/16 v25, 0x64

    move-wide/from16 v0, v25

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 306
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

    .line 307
    const-wide/16 v25, 0xc8

    move-wide/from16 v0, v25

    invoke-virtual {v10, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 308
    new-instance v25, Lme/android/browser/PhoneUi$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lme/android/browser/PhoneUi$1;-><init>(Lme/android/browser/PhoneUi;)V

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 316
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

    .line 317
    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    .line 318
    return-void

    .line 254
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

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mNavScreen:Lme/android/browser/NavScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lme/android/browser/NavScreen;->setVisibility(I)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mNavScreen:Lme/android/browser/NavScreen;

    move-object/from16 v25, v0

    const/high16 v26, 0x3f800000

    invoke-virtual/range {v25 .. v26}, Lme/android/browser/NavScreen;->setAlpha(F)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mNavScreen:Lme/android/browser/NavScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lme/android/browser/NavScreen;->refreshAdapter()V

    goto/16 :goto_0

    .line 262
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    # getter for: Lme/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v25 .. v25}, Lme/android/browser/PhoneUi$AnimScreen;->access$0(Lme/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v25

    const/high16 v26, 0x3f800000

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setAlpha(F)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    # getter for: Lme/android/browser/PhoneUi$AnimScreen;->mTitle:Landroid/widget/ImageView;
    invoke-static/range {v25 .. v25}, Lme/android/browser/PhoneUi$AnimScreen;->access$1(Lme/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v25

    const/high16 v26, 0x3f800000

    invoke-virtual/range {v25 .. v26}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/android/browser/PhoneUi;->mAnimScreen:Lme/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    const/high16 v26, 0x3f800000

    # invokes: Lme/android/browser/PhoneUi$AnimScreen;->setScaleFactor(F)V
    invoke-static/range {v25 .. v26}, Lme/android/browser/PhoneUi$AnimScreen;->access$2(Lme/android/browser/PhoneUi$AnimScreen;F)V

    goto/16 :goto_1

    .line 298
    :array_0
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    .line 303
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
    .line 244
    invoke-super {p0, p1}, Lme/android/browser/BaseUi;->showWeb(Z)V

    .line 245
    iget-object v0, p0, Lme/android/browser/PhoneUi;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v0}, Lme/android/browser/UiController;->getTabControl()Lme/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lme/android/browser/TabControl;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lme/android/browser/PhoneUi;->hideNavScreen(IZ)V

    .line 246
    return-void
.end method

.method public toggleNavScreen()V
    .locals 2

    .prologue
    .line 428
    invoke-direct {p0}, Lme/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lme/android/browser/PhoneUi;->showNavScreen()V

    .line 433
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lme/android/browser/PhoneUi;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v0}, Lme/android/browser/UiController;->getTabControl()Lme/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lme/android/browser/TabControl;->getCurrentPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lme/android/browser/PhoneUi;->hideNavScreen(IZ)V

    goto :goto_0
.end method

.method public updateMenuState(Lme/android/browser/Tab;Landroid/view/Menu;)V
    .locals 8
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 165
    const v5, 0x7f0d00a6

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 166
    .local v1, "bm":Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 167
    invoke-direct {p0}, Lme/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    :goto_0
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 169
    :cond_0
    const v5, 0x7f0d00a7

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 170
    .local v0, "abm":Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 171
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lme/android/browser/Tab;->isSnapshot()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-direct {p0}, Lme/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v5

    if-nez v5, :cond_7

    move v5, v7

    :goto_1
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 173
    :cond_1
    const v5, 0x7f0d00b2

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 174
    .local v3, "info":Landroid/view/MenuItem;
    if-eqz v3, :cond_2

    .line 175
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 177
    :cond_2
    const v5, 0x7f0d00a4

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 178
    .local v4, "newtab":Landroid/view/MenuItem;
    if-eqz v4, :cond_3

    iget-boolean v5, p0, Lme/android/browser/PhoneUi;->mUseQuickControls:Z

    if-nez v5, :cond_3

    .line 179
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 181
    :cond_3
    const v5, 0x7f0d00a5

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 182
    .local v2, "incognito":Landroid/view/MenuItem;
    if-eqz v2, :cond_4

    .line 183
    invoke-direct {p0}, Lme/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v5

    if-nez v5, :cond_8

    iget-boolean v5, p0, Lme/android/browser/PhoneUi;->mUseQuickControls:Z

    if-nez v5, :cond_8

    move v5, v6

    :goto_2
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 185
    :cond_4
    invoke-direct {p0}, Lme/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 186
    const v5, 0x7f0d00a8

    invoke-interface {p2, v5, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 187
    const v5, 0x7f0d00ad

    invoke-interface {p2, v5, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 188
    const v5, 0x7f0d00a1

    invoke-interface {p2, v5, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 189
    const v5, 0x7f0d00af

    invoke-interface {p2, v5, v7}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 191
    :cond_5
    return-void

    .end local v0    # "abm":Landroid/view/MenuItem;
    .end local v2    # "incognito":Landroid/view/MenuItem;
    .end local v3    # "info":Landroid/view/MenuItem;
    .end local v4    # "newtab":Landroid/view/MenuItem;
    :cond_6
    move v5, v7

    .line 167
    goto :goto_0

    .restart local v0    # "abm":Landroid/view/MenuItem;
    :cond_7
    move v5, v6

    .line 171
    goto :goto_1

    .restart local v2    # "incognito":Landroid/view/MenuItem;
    .restart local v3    # "info":Landroid/view/MenuItem;
    .restart local v4    # "newtab":Landroid/view/MenuItem;
    :cond_8
    move v5, v7

    .line 183
    goto :goto_2
.end method
