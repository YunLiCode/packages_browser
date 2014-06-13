.class public Lme/android/browser/PieControl;
.super Ljava/lang/Object;
.source "PieControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lme/android/browser/view/PieMenu$PieController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/android/browser/PieControl$TabAdapter;
    }
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field private mAddBookmark:Lme/android/browser/view/PieItem;

.field private mBack:Lme/android/browser/view/PieItem;

.field private mBookmarks:Lme/android/browser/view/PieItem;

.field private mClose:Lme/android/browser/view/PieItem;

.field private mFind:Lme/android/browser/view/PieItem;

.field private mForward:Lme/android/browser/view/PieItem;

.field private mHistory:Lme/android/browser/view/PieItem;

.field private mIncognito:Lme/android/browser/view/PieItem;

.field private mInfo:Lme/android/browser/view/PieItem;

.field protected mItemSize:I

.field private mNewTab:Lme/android/browser/view/PieItem;

.field private mOptions:Lme/android/browser/view/PieItem;

.field protected mPie:Lme/android/browser/view/PieMenu;

.field private mRDS:Lme/android/browser/view/PieItem;

.field private mRefresh:Lme/android/browser/view/PieItem;

.field private mShare:Lme/android/browser/view/PieItem;

.field private mShowTabs:Lme/android/browser/view/PieItem;

.field private mTabAdapter:Lme/android/browser/PieControl$TabAdapter;

.field protected mTabsCount:Landroid/widget/TextView;

.field private mUi:Lme/android/browser/BaseUi;

.field protected mUiController:Lme/android/browser/UiController;

.field private mUrl:Lme/android/browser/view/PieItem;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lme/android/browser/UiController;Lme/android/browser/BaseUi;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "controller"    # Lme/android/browser/UiController;
    .param p3, "ui"    # Lme/android/browser/BaseUi;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lme/android/browser/PieControl;->mActivity:Landroid/app/Activity;

    .line 75
    iput-object p2, p0, Lme/android/browser/PieControl;->mUiController:Lme/android/browser/UiController;

    .line 76
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lme/android/browser/PieControl;->mItemSize:I

    .line 77
    iput-object p3, p0, Lme/android/browser/PieControl;->mUi:Lme/android/browser/BaseUi;

    .line 78
    return-void
.end method

.method static synthetic access$0(Lme/android/browser/PieControl;)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Lme/android/browser/PieControl;->buildTabs()V

    return-void
.end method

.method private buildTabs()V
    .locals 3

    .prologue
    .line 242
    iget-object v2, p0, Lme/android/browser/PieControl;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v2}, Lme/android/browser/UiController;->getTabs()Ljava/util/List;

    move-result-object v1

    .line 243
    .local v1, "tabs":Ljava/util/List;, "Ljava/util/List<Lme/android/browser/Tab;>;"
    iget-object v2, p0, Lme/android/browser/PieControl;->mUi:Lme/android/browser/BaseUi;

    invoke-virtual {v2}, Lme/android/browser/BaseUi;->getActiveTab()Lme/android/browser/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lme/android/browser/Tab;->capture()V

    .line 244
    iget-object v2, p0, Lme/android/browser/PieControl;->mTabAdapter:Lme/android/browser/PieControl$TabAdapter;

    invoke-virtual {v2, v1}, Lme/android/browser/PieControl$TabAdapter;->setTabs(Ljava/util/List;)V

    .line 245
    iget-object v2, p0, Lme/android/browser/PieControl;->mShowTabs:Lme/android/browser/view/PieItem;

    invoke-virtual {v2}, Lme/android/browser/view/PieItem;->getPieView()Lme/android/browser/view/PieMenu$PieView;

    move-result-object v0

    check-cast v0, Lme/android/browser/view/PieStackView;

    .line 246
    .local v0, "sym":Lme/android/browser/view/PieStackView;
    iget-object v2, p0, Lme/android/browser/PieControl;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v2}, Lme/android/browser/UiController;->getTabControl()Lme/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2}, Lme/android/browser/TabControl;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lme/android/browser/view/PieStackView;->setCurrent(I)V

    .line 247
    return-void
.end method


# virtual methods
.method protected attachToContainer(Landroid/widget/FrameLayout;)V
    .locals 4
    .param p1, "container"    # Landroid/widget/FrameLayout;

    .prologue
    const/4 v3, -0x1

    .line 85
    iget-object v1, p0, Lme/android/browser/PieControl;->mPie:Lme/android/browser/view/PieMenu;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lme/android/browser/view/PieMenu;

    iget-object v2, p0, Lme/android/browser/PieControl;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lme/android/browser/view/PieMenu;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lme/android/browser/PieControl;->mPie:Lme/android/browser/view/PieMenu;

    .line 87
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 89
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lme/android/browser/PieControl;->mPie:Lme/android/browser/view/PieMenu;

    invoke-virtual {v1, v0}, Lme/android/browser/view/PieMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    invoke-virtual {p0}, Lme/android/browser/PieControl;->populateMenu()V

    .line 91
    iget-object v1, p0, Lme/android/browser/PieControl;->mPie:Lme/android/browser/view/PieMenu;

    invoke-virtual {v1, p0}, Lme/android/browser/view/PieMenu;->setController(Lme/android/browser/view/PieMenu$PieController;)V

    .line 93
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v1, p0, Lme/android/browser/PieControl;->mPie:Lme/android/browser/view/PieMenu;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method protected forceToTop(Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1, "container"    # Landroid/widget/FrameLayout;

    .prologue
    .line 101
    iget-object v0, p0, Lme/android/browser/PieControl;->mPie:Lme/android/browser/view/PieMenu;

    invoke-virtual {v0}, Lme/android/browser/view/PieMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lme/android/browser/PieControl;->mPie:Lme/android/browser/view/PieMenu;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 103
    iget-object v0, p0, Lme/android/browser/PieControl;->mPie:Lme/android/browser/view/PieMenu;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 105
    :cond_0
    return-void
.end method

.method protected makeFiller()Lme/android/browser/view/PieItem;
    .locals 3

    .prologue
    .line 261
    new-instance v0, Lme/android/browser/view/PieItem;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lme/android/browser/view/PieItem;-><init>(Landroid/view/View;I)V

    return-object v0
.end method

.method protected makeItem(II)Lme/android/browser/view/PieItem;
    .locals 4
    .param p1, "image"    # I
    .param p2, "l"    # I

    .prologue
    .line 250
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lme/android/browser/PieControl;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 251
    .local v1, "view":Landroid/widget/ImageView;
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    iget v2, p0, Lme/android/browser/PieControl;->mItemSize:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 253
    iget v2, p0, Lme/android/browser/PieControl;->mItemSize:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 254
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 255
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lme/android/browser/PieControl;->mItemSize:I

    iget v3, p0, Lme/android/browser/PieControl;->mItemSize:I

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 256
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    new-instance v2, Lme/android/browser/view/PieItem;

    invoke-direct {v2, v1, p2}, Lme/android/browser/view/PieItem;-><init>(Landroid/view/View;I)V

    return-object v2
.end method

.method protected makeTabsView()Landroid/view/View;
    .locals 6

    .prologue
    .line 265
    iget-object v3, p0, Lme/android/browser/PieControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040027

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 266
    .local v2, "v":Landroid/view/View;
    const v3, 0x7f0d0018

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lme/android/browser/PieControl;->mTabsCount:Landroid/widget/TextView;

    .line 267
    iget-object v3, p0, Lme/android/browser/PieControl;->mTabsCount:Landroid/widget/TextView;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    const v3, 0x7f0d0065

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 269
    .local v0, "image":Landroid/widget/ImageView;
    const v3, 0x7f02004e

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 270
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 271
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v3, p0, Lme/android/browser/PieControl;->mItemSize:I

    iget v4, p0, Lme/android/browser/PieControl;->mItemSize:I

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 272
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    return-object v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 198
    iget-object v2, p0, Lme/android/browser/PieControl;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v2}, Lme/android/browser/UiController;->getTabControl()Lme/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v0

    .line 199
    .local v0, "tab":Lme/android/browser/Tab;
    invoke-virtual {v0}, Lme/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 200
    .local v1, "web":Landroid/webkit/WebView;
    iget-object v2, p0, Lme/android/browser/PieControl;->mBack:Lme/android/browser/view/PieItem;

    invoke-virtual {v2}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 201
    invoke-virtual {v0}, Lme/android/browser/Tab;->goBack()V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v2, p0, Lme/android/browser/PieControl;->mForward:Lme/android/browser/view/PieItem;

    invoke-virtual {v2}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 203
    invoke-virtual {v0}, Lme/android/browser/Tab;->goForward()V

    goto :goto_0

    .line 204
    :cond_2
    iget-object v2, p0, Lme/android/browser/PieControl;->mRefresh:Lme/android/browser/view/PieItem;

    invoke-virtual {v2}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_4

    .line 205
    invoke-virtual {v0}, Lme/android/browser/Tab;->inPageLoad()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 206
    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0

    .line 208
    :cond_3
    invoke-virtual {v1}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 210
    :cond_4
    iget-object v2, p0, Lme/android/browser/PieControl;->mUrl:Lme/android/browser/view/PieItem;

    invoke-virtual {v2}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_5

    .line 211
    iget-object v2, p0, Lme/android/browser/PieControl;->mUi:Lme/android/browser/BaseUi;

    invoke-virtual {v2, v3, v4}, Lme/android/browser/BaseUi;->editUrl(ZZ)V

    goto :goto_0

    .line 212
    :cond_5
    iget-object v2, p0, Lme/android/browser/PieControl;->mBookmarks:Lme/android/browser/view/PieItem;

    invoke-virtual {v2}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_6

    .line 213
    iget-object v2, p0, Lme/android/browser/PieControl;->mUiController:Lme/android/browser/UiController;

    sget-object v3, Lme/android/browser/UI$ComboViews;->Bookmarks:Lme/android/browser/UI$ComboViews;

    invoke-interface {v2, v3}, Lme/android/browser/UiController;->bookmarksOrHistoryPicker(Lme/android/browser/UI$ComboViews;)V

    goto :goto_0

    .line 214
    :cond_6
    iget-object v2, p0, Lme/android/browser/PieControl;->mHistory:Lme/android/browser/view/PieItem;

    invoke-virtual {v2}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_7

    .line 215
    iget-object v2, p0, Lme/android/browser/PieControl;->mUiController:Lme/android/browser/UiController;

    sget-object v3, Lme/android/browser/UI$ComboViews;->History:Lme/android/browser/UI$ComboViews;

    invoke-interface {v2, v3}, Lme/android/browser/UiController;->bookmarksOrHistoryPicker(Lme/android/browser/UI$ComboViews;)V

    goto :goto_0

    .line 216
    :cond_7
    iget-object v2, p0, Lme/android/browser/PieControl;->mAddBookmark:Lme/android/browser/view/PieItem;

    invoke-virtual {v2}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_8

    .line 217
    iget-object v2, p0, Lme/android/browser/PieControl;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v2}, Lme/android/browser/UiController;->bookmarkCurrentPage()V

    goto :goto_0

    .line 218
    :cond_8
    iget-object v2, p0, Lme/android/browser/PieControl;->mNewTab:Lme/android/browser/view/PieItem;

    invoke-virtual {v2}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_9

    .line 219
    iget-object v2, p0, Lme/android/browser/PieControl;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v2}, Lme/android/browser/UiController;->openTabToHomePage()Lme/android/browser/Tab;

    .line 220
    iget-object v2, p0, Lme/android/browser/PieControl;->mUi:Lme/android/browser/BaseUi;

    invoke-virtual {v2, v3, v4}, Lme/android/browser/BaseUi;->editUrl(ZZ)V

    goto :goto_0

    .line 221
    :cond_9
    iget-object v2, p0, Lme/android/browser/PieControl;->mIncognito:Lme/android/browser/view/PieItem;

    invoke-virtual {v2}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_a

    .line 222
    iget-object v2, p0, Lme/android/browser/PieControl;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v2}, Lme/android/browser/UiController;->openIncognitoTab()Lme/android/browser/Tab;

    .line 223
    iget-object v2, p0, Lme/android/browser/PieControl;->mUi:Lme/android/browser/BaseUi;

    invoke-virtual {v2, v3, v4}, Lme/android/browser/BaseUi;->editUrl(ZZ)V

    goto/16 :goto_0

    .line 224
    :cond_a
    iget-object v2, p0, Lme/android/browser/PieControl;->mClose:Lme/android/browser/view/PieItem;

    invoke-virtual {v2}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_b

    .line 225
    iget-object v2, p0, Lme/android/browser/PieControl;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v2}, Lme/android/browser/UiController;->closeCurrentTab()V

    goto/16 :goto_0

    .line 226
    :cond_b
    iget-object v2, p0, Lme/android/browser/PieControl;->mOptions:Lme/android/browser/view/PieItem;

    invoke-virtual {v2}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_c

    .line 227
    iget-object v2, p0, Lme/android/browser/PieControl;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v2}, Lme/android/browser/UiController;->openPreferences()V

    goto/16 :goto_0

    .line 228
    :cond_c
    iget-object v2, p0, Lme/android/browser/PieControl;->mShare:Lme/android/browser/view/PieItem;

    invoke-virtual {v2}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_d

    .line 229
    iget-object v2, p0, Lme/android/browser/PieControl;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v2}, Lme/android/browser/UiController;->shareCurrentPage()V

    goto/16 :goto_0

    .line 230
    :cond_d
    iget-object v2, p0, Lme/android/browser/PieControl;->mInfo:Lme/android/browser/view/PieItem;

    invoke-virtual {v2}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_e

    .line 231
    iget-object v2, p0, Lme/android/browser/PieControl;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v2}, Lme/android/browser/UiController;->showPageInfo()V

    goto/16 :goto_0

    .line 232
    :cond_e
    iget-object v2, p0, Lme/android/browser/PieControl;->mFind:Lme/android/browser/view/PieItem;

    invoke-virtual {v2}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_f

    .line 233
    iget-object v2, p0, Lme/android/browser/PieControl;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v2}, Lme/android/browser/UiController;->findOnPage()V

    goto/16 :goto_0

    .line 234
    :cond_f
    iget-object v2, p0, Lme/android/browser/PieControl;->mRDS:Lme/android/browser/view/PieItem;

    invoke-virtual {v2}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_10

    .line 235
    iget-object v2, p0, Lme/android/browser/PieControl;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v2}, Lme/android/browser/UiController;->toggleUserAgent()V

    goto/16 :goto_0

    .line 236
    :cond_10
    iget-object v2, p0, Lme/android/browser/PieControl;->mShowTabs:Lme/android/browser/view/PieItem;

    invoke-virtual {v2}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 237
    iget-object v2, p0, Lme/android/browser/PieControl;->mUi:Lme/android/browser/BaseUi;

    check-cast v2, Lme/android/browser/PhoneUi;

    invoke-virtual {v2}, Lme/android/browser/PhoneUi;->showNavScreen()V

    goto/16 :goto_0
.end method

.method public onOpen()Z
    .locals 6

    .prologue
    .line 115
    iget-object v4, p0, Lme/android/browser/PieControl;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v4}, Lme/android/browser/UiController;->getTabControl()Lme/android/browser/TabControl;

    move-result-object v4

    invoke-virtual {v4}, Lme/android/browser/TabControl;->getTabCount()I

    move-result v1

    .line 116
    .local v1, "n":I
    iget-object v4, p0, Lme/android/browser/PieControl;->mTabsCount:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v4, p0, Lme/android/browser/PieControl;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v4}, Lme/android/browser/UiController;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v2

    .line 118
    .local v2, "tab":Lme/android/browser/Tab;
    if-eqz v2, :cond_0

    .line 119
    iget-object v4, p0, Lme/android/browser/PieControl;->mForward:Lme/android/browser/view/PieItem;

    invoke-virtual {v2}, Lme/android/browser/Tab;->canGoForward()Z

    move-result v5

    invoke-virtual {v4, v5}, Lme/android/browser/view/PieItem;->setEnabled(Z)V

    .line 121
    :cond_0
    iget-object v4, p0, Lme/android/browser/PieControl;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v4}, Lme/android/browser/UiController;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 122
    .local v3, "view":Landroid/webkit/WebView;
    if-eqz v3, :cond_1

    .line 123
    iget-object v4, p0, Lme/android/browser/PieControl;->mRDS:Lme/android/browser/view/PieItem;

    invoke-virtual {v4}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 124
    .local v0, "icon":Landroid/widget/ImageView;
    iget-object v4, p0, Lme/android/browser/PieControl;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v4}, Lme/android/browser/UiController;->getSettings()Lme/android/browser/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4, v3}, Lme/android/browser/BrowserSettings;->hasDesktopUseragent(Landroid/webkit/WebView;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 125
    const v4, 0x7f020039

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    .end local v0    # "icon":Landroid/widget/ImageView;
    :cond_1
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 127
    .restart local v0    # "icon":Landroid/widget/ImageView;
    :cond_2
    const v4, 0x7f020022

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected populateMenu()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 134
    const v2, 0x7f02001b

    invoke-virtual {p0, v2, v5}, Lme/android/browser/PieControl;->makeItem(II)Lme/android/browser/view/PieItem;

    move-result-object v2

    iput-object v2, p0, Lme/android/browser/PieControl;->mBack:Lme/android/browser/view/PieItem;

    .line 135
    const v2, 0x7f02004d

    invoke-virtual {p0, v2, v5}, Lme/android/browser/PieControl;->makeItem(II)Lme/android/browser/view/PieItem;

    move-result-object v2

    iput-object v2, p0, Lme/android/browser/PieControl;->mUrl:Lme/android/browser/view/PieItem;

    .line 136
    const v2, 0x7f020020

    invoke-virtual {p0, v2, v5}, Lme/android/browser/PieControl;->makeItem(II)Lme/android/browser/view/PieItem;

    move-result-object v2

    iput-object v2, p0, Lme/android/browser/PieControl;->mBookmarks:Lme/android/browser/view/PieItem;

    .line 137
    const v2, 0x7f02002c

    invoke-virtual {p0, v2, v5}, Lme/android/browser/PieControl;->makeItem(II)Lme/android/browser/view/PieItem;

    move-result-object v2

    iput-object v2, p0, Lme/android/browser/PieControl;->mHistory:Lme/android/browser/view/PieItem;

    .line 138
    const v2, 0x7f02001d

    invoke-virtual {p0, v2, v5}, Lme/android/browser/PieControl;->makeItem(II)Lme/android/browser/view/PieItem;

    move-result-object v2

    iput-object v2, p0, Lme/android/browser/PieControl;->mAddBookmark:Lme/android/browser/view/PieItem;

    .line 139
    const v2, 0x7f020040

    invoke-virtual {p0, v2, v5}, Lme/android/browser/PieControl;->makeItem(II)Lme/android/browser/view/PieItem;

    move-result-object v2

    iput-object v2, p0, Lme/android/browser/PieControl;->mRefresh:Lme/android/browser/view/PieItem;

    .line 140
    const v2, 0x7f020029

    invoke-virtual {p0, v2, v5}, Lme/android/browser/PieControl;->makeItem(II)Lme/android/browser/view/PieItem;

    move-result-object v2

    iput-object v2, p0, Lme/android/browser/PieControl;->mForward:Lme/android/browser/view/PieItem;

    .line 141
    const v2, 0x7f02003b

    invoke-virtual {p0, v2, v5}, Lme/android/browser/PieControl;->makeItem(II)Lme/android/browser/view/PieItem;

    move-result-object v2

    iput-object v2, p0, Lme/android/browser/PieControl;->mNewTab:Lme/android/browser/view/PieItem;

    .line 142
    const v2, 0x7f02003a

    invoke-virtual {p0, v2, v5}, Lme/android/browser/PieControl;->makeItem(II)Lme/android/browser/view/PieItem;

    move-result-object v2

    iput-object v2, p0, Lme/android/browser/PieControl;->mIncognito:Lme/android/browser/view/PieItem;

    .line 143
    const v2, 0x7f020021

    invoke-virtual {p0, v2, v5}, Lme/android/browser/PieControl;->makeItem(II)Lme/android/browser/view/PieItem;

    move-result-object v2

    iput-object v2, p0, Lme/android/browser/PieControl;->mClose:Lme/android/browser/view/PieItem;

    .line 144
    const v2, 0x1080041

    invoke-virtual {p0, v2, v5}, Lme/android/browser/PieControl;->makeItem(II)Lme/android/browser/view/PieItem;

    move-result-object v2

    iput-object v2, p0, Lme/android/browser/PieControl;->mInfo:Lme/android/browser/view/PieItem;

    .line 145
    const v2, 0x7f020045

    invoke-virtual {p0, v2, v5}, Lme/android/browser/PieControl;->makeItem(II)Lme/android/browser/view/PieItem;

    move-result-object v2

    iput-object v2, p0, Lme/android/browser/PieControl;->mFind:Lme/android/browser/view/PieItem;

    .line 146
    const v2, 0x7f020049

    invoke-virtual {p0, v2, v5}, Lme/android/browser/PieControl;->makeItem(II)Lme/android/browser/view/PieItem;

    move-result-object v2

    iput-object v2, p0, Lme/android/browser/PieControl;->mShare:Lme/android/browser/view/PieItem;

    .line 147
    invoke-virtual {p0}, Lme/android/browser/PieControl;->makeTabsView()Landroid/view/View;

    move-result-object v1

    .line 148
    .local v1, "tabs":Landroid/view/View;
    new-instance v2, Lme/android/browser/view/PieItem;

    invoke-direct {v2, v1, v5}, Lme/android/browser/view/PieItem;-><init>(Landroid/view/View;I)V

    iput-object v2, p0, Lme/android/browser/PieControl;->mShowTabs:Lme/android/browser/view/PieItem;

    .line 149
    const v2, 0x7f020048

    invoke-virtual {p0, v2, v5}, Lme/android/browser/PieControl;->makeItem(II)Lme/android/browser/view/PieItem;

    move-result-object v2

    iput-object v2, p0, Lme/android/browser/PieControl;->mOptions:Lme/android/browser/view/PieItem;

    .line 150
    const v2, 0x7f020022

    invoke-virtual {p0, v2, v5}, Lme/android/browser/PieControl;->makeItem(II)Lme/android/browser/view/PieItem;

    move-result-object v2

    iput-object v2, p0, Lme/android/browser/PieControl;->mRDS:Lme/android/browser/view/PieItem;

    .line 151
    new-instance v2, Lme/android/browser/PieControl$TabAdapter;

    iget-object v3, p0, Lme/android/browser/PieControl;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lme/android/browser/PieControl;->mUiController:Lme/android/browser/UiController;

    invoke-direct {v2, v3, v4}, Lme/android/browser/PieControl$TabAdapter;-><init>(Landroid/content/Context;Lme/android/browser/UiController;)V

    iput-object v2, p0, Lme/android/browser/PieControl;->mTabAdapter:Lme/android/browser/PieControl$TabAdapter;

    .line 152
    new-instance v0, Lme/android/browser/view/PieStackView;

    iget-object v2, p0, Lme/android/browser/PieControl;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lme/android/browser/view/PieStackView;-><init>(Landroid/content/Context;)V

    .line 153
    .local v0, "stack":Lme/android/browser/view/PieStackView;
    new-instance v2, Lme/android/browser/PieControl$1;

    invoke-direct {v2, p0}, Lme/android/browser/PieControl$1;-><init>(Lme/android/browser/PieControl;)V

    invoke-virtual {v0, v2}, Lme/android/browser/view/PieStackView;->setLayoutListener(Lme/android/browser/view/PieMenu$PieView$OnLayoutListener;)V

    .line 159
    iget-object v2, p0, Lme/android/browser/PieControl;->mTabAdapter:Lme/android/browser/PieControl$TabAdapter;

    invoke-virtual {v0, v2}, Lme/android/browser/view/PieStackView;->setOnCurrentListener(Lme/android/browser/view/PieStackView$OnCurrentListener;)V

    .line 160
    iget-object v2, p0, Lme/android/browser/PieControl;->mTabAdapter:Lme/android/browser/PieControl$TabAdapter;

    invoke-virtual {v0, v2}, Lme/android/browser/view/PieStackView;->setAdapter(Landroid/widget/Adapter;)V

    .line 161
    iget-object v2, p0, Lme/android/browser/PieControl;->mShowTabs:Lme/android/browser/view/PieItem;

    invoke-virtual {v2, v0}, Lme/android/browser/view/PieItem;->setPieView(Lme/android/browser/view/PieMenu$PieView;)V

    .line 162
    const/16 v2, 0xf

    new-array v2, v2, [Lme/android/browser/view/PieItem;

    const/4 v3, 0x0

    iget-object v4, p0, Lme/android/browser/PieControl;->mBack:Lme/android/browser/view/PieItem;

    aput-object v4, v2, v3

    iget-object v3, p0, Lme/android/browser/PieControl;->mRefresh:Lme/android/browser/view/PieItem;

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v4, p0, Lme/android/browser/PieControl;->mForward:Lme/android/browser/view/PieItem;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lme/android/browser/PieControl;->mUrl:Lme/android/browser/view/PieItem;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lme/android/browser/PieControl;->mFind:Lme/android/browser/view/PieItem;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lme/android/browser/PieControl;->mInfo:Lme/android/browser/view/PieItem;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 163
    iget-object v4, p0, Lme/android/browser/PieControl;->mShare:Lme/android/browser/view/PieItem;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lme/android/browser/PieControl;->mBookmarks:Lme/android/browser/view/PieItem;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p0, Lme/android/browser/PieControl;->mNewTab:Lme/android/browser/view/PieItem;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-object v4, p0, Lme/android/browser/PieControl;->mIncognito:Lme/android/browser/view/PieItem;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    iget-object v4, p0, Lme/android/browser/PieControl;->mClose:Lme/android/browser/view/PieItem;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    iget-object v4, p0, Lme/android/browser/PieControl;->mHistory:Lme/android/browser/view/PieItem;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    .line 164
    iget-object v4, p0, Lme/android/browser/PieControl;->mAddBookmark:Lme/android/browser/view/PieItem;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    iget-object v4, p0, Lme/android/browser/PieControl;->mOptions:Lme/android/browser/view/PieItem;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    iget-object v4, p0, Lme/android/browser/PieControl;->mRDS:Lme/android/browser/view/PieItem;

    aput-object v4, v2, v3

    .line 162
    invoke-virtual {p0, p0, v2}, Lme/android/browser/PieControl;->setClickListener(Landroid/view/View$OnClickListener;[Lme/android/browser/view/PieItem;)V

    .line 165
    iget-object v2, p0, Lme/android/browser/PieControl;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lme/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    iget-object v2, p0, Lme/android/browser/PieControl;->mShowTabs:Lme/android/browser/view/PieItem;

    invoke-virtual {v2}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    :cond_0
    iget-object v2, p0, Lme/android/browser/PieControl;->mPie:Lme/android/browser/view/PieMenu;

    iget-object v3, p0, Lme/android/browser/PieControl;->mOptions:Lme/android/browser/view/PieItem;

    invoke-virtual {v2, v3}, Lme/android/browser/view/PieMenu;->addItem(Lme/android/browser/view/PieItem;)V

    .line 170
    iget-object v2, p0, Lme/android/browser/PieControl;->mOptions:Lme/android/browser/view/PieItem;

    iget-object v3, p0, Lme/android/browser/PieControl;->mRDS:Lme/android/browser/view/PieItem;

    invoke-virtual {v2, v3}, Lme/android/browser/view/PieItem;->addItem(Lme/android/browser/view/PieItem;)V

    .line 171
    iget-object v2, p0, Lme/android/browser/PieControl;->mOptions:Lme/android/browser/view/PieItem;

    invoke-virtual {p0}, Lme/android/browser/PieControl;->makeFiller()Lme/android/browser/view/PieItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lme/android/browser/view/PieItem;->addItem(Lme/android/browser/view/PieItem;)V

    .line 172
    iget-object v2, p0, Lme/android/browser/PieControl;->mOptions:Lme/android/browser/view/PieItem;

    invoke-virtual {p0}, Lme/android/browser/PieControl;->makeFiller()Lme/android/browser/view/PieItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lme/android/browser/view/PieItem;->addItem(Lme/android/browser/view/PieItem;)V

    .line 173
    iget-object v2, p0, Lme/android/browser/PieControl;->mOptions:Lme/android/browser/view/PieItem;

    invoke-virtual {p0}, Lme/android/browser/PieControl;->makeFiller()Lme/android/browser/view/PieItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lme/android/browser/view/PieItem;->addItem(Lme/android/browser/view/PieItem;)V

    .line 174
    iget-object v2, p0, Lme/android/browser/PieControl;->mPie:Lme/android/browser/view/PieMenu;

    iget-object v3, p0, Lme/android/browser/PieControl;->mBack:Lme/android/browser/view/PieItem;

    invoke-virtual {v2, v3}, Lme/android/browser/view/PieMenu;->addItem(Lme/android/browser/view/PieItem;)V

    .line 175
    iget-object v2, p0, Lme/android/browser/PieControl;->mBack:Lme/android/browser/view/PieItem;

    iget-object v3, p0, Lme/android/browser/PieControl;->mRefresh:Lme/android/browser/view/PieItem;

    invoke-virtual {v2, v3}, Lme/android/browser/view/PieItem;->addItem(Lme/android/browser/view/PieItem;)V

    .line 176
    iget-object v2, p0, Lme/android/browser/PieControl;->mBack:Lme/android/browser/view/PieItem;

    iget-object v3, p0, Lme/android/browser/PieControl;->mForward:Lme/android/browser/view/PieItem;

    invoke-virtual {v2, v3}, Lme/android/browser/view/PieItem;->addItem(Lme/android/browser/view/PieItem;)V

    .line 177
    iget-object v2, p0, Lme/android/browser/PieControl;->mBack:Lme/android/browser/view/PieItem;

    invoke-virtual {p0}, Lme/android/browser/PieControl;->makeFiller()Lme/android/browser/view/PieItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lme/android/browser/view/PieItem;->addItem(Lme/android/browser/view/PieItem;)V

    .line 178
    iget-object v2, p0, Lme/android/browser/PieControl;->mBack:Lme/android/browser/view/PieItem;

    invoke-virtual {p0}, Lme/android/browser/PieControl;->makeFiller()Lme/android/browser/view/PieItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lme/android/browser/view/PieItem;->addItem(Lme/android/browser/view/PieItem;)V

    .line 179
    iget-object v2, p0, Lme/android/browser/PieControl;->mPie:Lme/android/browser/view/PieMenu;

    iget-object v3, p0, Lme/android/browser/PieControl;->mUrl:Lme/android/browser/view/PieItem;

    invoke-virtual {v2, v3}, Lme/android/browser/view/PieMenu;->addItem(Lme/android/browser/view/PieItem;)V

    .line 180
    iget-object v2, p0, Lme/android/browser/PieControl;->mUrl:Lme/android/browser/view/PieItem;

    iget-object v3, p0, Lme/android/browser/PieControl;->mFind:Lme/android/browser/view/PieItem;

    invoke-virtual {v2, v3}, Lme/android/browser/view/PieItem;->addItem(Lme/android/browser/view/PieItem;)V

    .line 181
    iget-object v2, p0, Lme/android/browser/PieControl;->mUrl:Lme/android/browser/view/PieItem;

    iget-object v3, p0, Lme/android/browser/PieControl;->mShare:Lme/android/browser/view/PieItem;

    invoke-virtual {v2, v3}, Lme/android/browser/view/PieItem;->addItem(Lme/android/browser/view/PieItem;)V

    .line 182
    iget-object v2, p0, Lme/android/browser/PieControl;->mUrl:Lme/android/browser/view/PieItem;

    invoke-virtual {p0}, Lme/android/browser/PieControl;->makeFiller()Lme/android/browser/view/PieItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lme/android/browser/view/PieItem;->addItem(Lme/android/browser/view/PieItem;)V

    .line 183
    iget-object v2, p0, Lme/android/browser/PieControl;->mUrl:Lme/android/browser/view/PieItem;

    invoke-virtual {p0}, Lme/android/browser/PieControl;->makeFiller()Lme/android/browser/view/PieItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lme/android/browser/view/PieItem;->addItem(Lme/android/browser/view/PieItem;)V

    .line 184
    iget-object v2, p0, Lme/android/browser/PieControl;->mPie:Lme/android/browser/view/PieMenu;

    iget-object v3, p0, Lme/android/browser/PieControl;->mShowTabs:Lme/android/browser/view/PieItem;

    invoke-virtual {v2, v3}, Lme/android/browser/view/PieMenu;->addItem(Lme/android/browser/view/PieItem;)V

    .line 185
    iget-object v2, p0, Lme/android/browser/PieControl;->mShowTabs:Lme/android/browser/view/PieItem;

    iget-object v3, p0, Lme/android/browser/PieControl;->mClose:Lme/android/browser/view/PieItem;

    invoke-virtual {v2, v3}, Lme/android/browser/view/PieItem;->addItem(Lme/android/browser/view/PieItem;)V

    .line 186
    iget-object v2, p0, Lme/android/browser/PieControl;->mShowTabs:Lme/android/browser/view/PieItem;

    iget-object v3, p0, Lme/android/browser/PieControl;->mIncognito:Lme/android/browser/view/PieItem;

    invoke-virtual {v2, v3}, Lme/android/browser/view/PieItem;->addItem(Lme/android/browser/view/PieItem;)V

    .line 187
    iget-object v2, p0, Lme/android/browser/PieControl;->mShowTabs:Lme/android/browser/view/PieItem;

    iget-object v3, p0, Lme/android/browser/PieControl;->mNewTab:Lme/android/browser/view/PieItem;

    invoke-virtual {v2, v3}, Lme/android/browser/view/PieItem;->addItem(Lme/android/browser/view/PieItem;)V

    .line 188
    iget-object v2, p0, Lme/android/browser/PieControl;->mShowTabs:Lme/android/browser/view/PieItem;

    invoke-virtual {p0}, Lme/android/browser/PieControl;->makeFiller()Lme/android/browser/view/PieItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lme/android/browser/view/PieItem;->addItem(Lme/android/browser/view/PieItem;)V

    .line 189
    iget-object v2, p0, Lme/android/browser/PieControl;->mPie:Lme/android/browser/view/PieMenu;

    iget-object v3, p0, Lme/android/browser/PieControl;->mBookmarks:Lme/android/browser/view/PieItem;

    invoke-virtual {v2, v3}, Lme/android/browser/view/PieMenu;->addItem(Lme/android/browser/view/PieItem;)V

    .line 190
    iget-object v2, p0, Lme/android/browser/PieControl;->mBookmarks:Lme/android/browser/view/PieItem;

    invoke-virtual {p0}, Lme/android/browser/PieControl;->makeFiller()Lme/android/browser/view/PieItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lme/android/browser/view/PieItem;->addItem(Lme/android/browser/view/PieItem;)V

    .line 191
    iget-object v2, p0, Lme/android/browser/PieControl;->mBookmarks:Lme/android/browser/view/PieItem;

    invoke-virtual {p0}, Lme/android/browser/PieControl;->makeFiller()Lme/android/browser/view/PieItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lme/android/browser/view/PieItem;->addItem(Lme/android/browser/view/PieItem;)V

    .line 192
    iget-object v2, p0, Lme/android/browser/PieControl;->mBookmarks:Lme/android/browser/view/PieItem;

    iget-object v3, p0, Lme/android/browser/PieControl;->mAddBookmark:Lme/android/browser/view/PieItem;

    invoke-virtual {v2, v3}, Lme/android/browser/view/PieItem;->addItem(Lme/android/browser/view/PieItem;)V

    .line 193
    iget-object v2, p0, Lme/android/browser/PieControl;->mBookmarks:Lme/android/browser/view/PieItem;

    iget-object v3, p0, Lme/android/browser/PieControl;->mHistory:Lme/android/browser/view/PieItem;

    invoke-virtual {v2, v3}, Lme/android/browser/view/PieItem;->addItem(Lme/android/browser/view/PieItem;)V

    .line 194
    return-void
.end method

.method protected removeFromContainer(Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1, "container"    # Landroid/widget/FrameLayout;

    .prologue
    .line 97
    iget-object v0, p0, Lme/android/browser/PieControl;->mPie:Lme/android/browser/view/PieMenu;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 98
    return-void
.end method

.method protected varargs setClickListener(Landroid/view/View$OnClickListener;[Lme/android/browser/view/PieItem;)V
    .locals 4
    .param p1, "listener"    # Landroid/view/View$OnClickListener;
    .param p2, "items"    # [Lme/android/browser/view/PieItem;

    .prologue
    .line 108
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 111
    return-void

    .line 108
    :cond_0
    aget-object v0, p2, v1

    .line 109
    .local v0, "item":Lme/android/browser/view/PieItem;
    invoke-virtual {v0}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public stopEditingUrl()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lme/android/browser/PieControl;->mUi:Lme/android/browser/BaseUi;

    invoke-virtual {v0}, Lme/android/browser/BaseUi;->stopEditingUrl()V

    .line 82
    return-void
.end method
