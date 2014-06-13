.class Lme/android/browser/TabBar$TabView;
.super Landroid/widget/LinearLayout;
.source "TabBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/TabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabView"
.end annotation


# instance fields
.field mClose:Landroid/widget/ImageView;

.field mFocusPath:Landroid/graphics/Path;

.field mIconView:Landroid/widget/ImageView;

.field mIncognito:Landroid/view/View;

.field mLock:Landroid/widget/ImageView;

.field mPath:Landroid/graphics/Path;

.field mSelected:Z

.field mSnapshot:Landroid/view/View;

.field mTab:Lme/android/browser/Tab;

.field mTabContent:Landroid/view/View;

.field mTitle:Landroid/widget/TextView;

.field mWindowPos:[I

.field final synthetic this$0:Lme/android/browser/TabBar;


# direct methods
.method public constructor <init>(Lme/android/browser/TabBar;Landroid/content/Context;Lme/android/browser/Tab;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "tab"    # Lme/android/browser/Tab;

    .prologue
    const/4 v3, 0x0

    .line 260
    iput-object p1, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    .line 261
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 262
    invoke-virtual {p0, v3}, Lme/android/browser/TabBar$TabView;->setWillNotDraw(Z)V

    .line 263
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lme/android/browser/TabBar$TabView;->mPath:Landroid/graphics/Path;

    .line 264
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lme/android/browser/TabBar$TabView;->mFocusPath:Landroid/graphics/Path;

    .line 265
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lme/android/browser/TabBar$TabView;->mWindowPos:[I

    .line 266
    iput-object p3, p0, Lme/android/browser/TabBar$TabView;->mTab:Lme/android/browser/Tab;

    .line 267
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lme/android/browser/TabBar$TabView;->setGravity(I)V

    .line 268
    invoke-virtual {p0, v3}, Lme/android/browser/TabBar$TabView;->setOrientation(I)V

    .line 269
    # getter for: Lme/android/browser/TabBar;->mTabOverlap:I
    invoke-static {p1}, Lme/android/browser/TabBar;->access$0(Lme/android/browser/TabBar;)I

    move-result v1

    # getter for: Lme/android/browser/TabBar;->mTabSliceWidth:I
    invoke-static {p1}, Lme/android/browser/TabBar;->access$1(Lme/android/browser/TabBar;)I

    move-result v2

    invoke-virtual {p0, v1, v3, v2, v3}, Lme/android/browser/TabBar$TabView;->setPadding(IIII)V

    .line 270
    invoke-virtual {p0}, Lme/android/browser/TabBar$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 271
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040030

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lme/android/browser/TabBar$TabView;->mTabContent:Landroid/view/View;

    .line 272
    iget-object v1, p0, Lme/android/browser/TabBar$TabView;->mTabContent:Landroid/view/View;

    const v2, 0x7f0d0007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lme/android/browser/TabBar$TabView;->mTitle:Landroid/widget/TextView;

    .line 273
    iget-object v1, p0, Lme/android/browser/TabBar$TabView;->mTabContent:Landroid/view/View;

    const v2, 0x7f0d0006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lme/android/browser/TabBar$TabView;->mIconView:Landroid/widget/ImageView;

    .line 274
    iget-object v1, p0, Lme/android/browser/TabBar$TabView;->mTabContent:Landroid/view/View;

    const v2, 0x7f0d0073

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lme/android/browser/TabBar$TabView;->mLock:Landroid/widget/ImageView;

    .line 275
    iget-object v1, p0, Lme/android/browser/TabBar$TabView;->mTabContent:Landroid/view/View;

    const v2, 0x7f0d005d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lme/android/browser/TabBar$TabView;->mClose:Landroid/widget/ImageView;

    .line 276
    iget-object v1, p0, Lme/android/browser/TabBar$TabView;->mClose:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v1, p0, Lme/android/browser/TabBar$TabView;->mTabContent:Landroid/view/View;

    const v2, 0x7f0d0071

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lme/android/browser/TabBar$TabView;->mIncognito:Landroid/view/View;

    .line 278
    iget-object v1, p0, Lme/android/browser/TabBar$TabView;->mTabContent:Landroid/view/View;

    const v2, 0x7f0d0072

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lme/android/browser/TabBar$TabView;->mSnapshot:Landroid/view/View;

    .line 279
    iput-boolean v3, p0, Lme/android/browser/TabBar$TabView;->mSelected:Z

    .line 281
    invoke-direct {p0}, Lme/android/browser/TabBar$TabView;->updateFromTab()V

    .line 282
    return-void
.end method

.method static synthetic access$0(Lme/android/browser/TabBar$TabView;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lme/android/browser/TabBar$TabView;->updateTabIcons()V

    return-void
.end method

.method private closeTab()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lme/android/browser/TabBar$TabView;->mTab:Lme/android/browser/Tab;

    iget-object v1, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mTabControl:Lme/android/browser/TabControl;
    invoke-static {v1}, Lme/android/browser/TabBar;->access$5(Lme/android/browser/TabBar;)Lme/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 351
    iget-object v0, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mUiController:Lme/android/browser/UiController;
    invoke-static {v0}, Lme/android/browser/TabBar;->access$6(Lme/android/browser/TabBar;)Lme/android/browser/UiController;

    move-result-object v0

    invoke-interface {v0}, Lme/android/browser/UiController;->closeCurrentTab()V

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mUiController:Lme/android/browser/UiController;
    invoke-static {v0}, Lme/android/browser/TabBar;->access$6(Lme/android/browser/TabBar;)Lme/android/browser/UiController;

    move-result-object v0

    iget-object v1, p0, Lme/android/browser/TabBar$TabView;->mTab:Lme/android/browser/Tab;

    invoke-interface {v0, v1}, Lme/android/browser/UiController;->closeTab(Lme/android/browser/Tab;)V

    goto :goto_0
.end method

.method private drawClipped(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;I)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "clipPath"    # Landroid/graphics/Path;
    .param p4, "left"    # I

    .prologue
    .line 399
    iget-boolean v1, p0, Lme/android/browser/TabBar$TabView;->mSelected:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mActiveMatrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Lme/android/browser/TabBar;->access$20(Lme/android/browser/TabBar;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 400
    .local v0, "matrix":Landroid/graphics/Matrix;
    :goto_0
    neg-int v1, p4

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 401
    iget-boolean v1, p0, Lme/android/browser/TabBar$TabView;->mSelected:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mActiveShader:Landroid/graphics/BitmapShader;
    invoke-static {v1}, Lme/android/browser/TabBar;->access$16(Lme/android/browser/TabBar;)Landroid/graphics/BitmapShader;

    move-result-object v1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 402
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 403
    invoke-virtual {p0}, Lme/android/browser/TabBar$TabView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lme/android/browser/TabBar$TabView;->mFocusPath:Landroid/graphics/Path;

    iget-object v2, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mFocusPaint:Landroid/graphics/Paint;
    invoke-static {v2}, Lme/android/browser/TabBar;->access$22(Lme/android/browser/TabBar;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 406
    :cond_0
    return-void

    .line 399
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    :cond_1
    iget-object v1, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mInactiveMatrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Lme/android/browser/TabBar;->access$21(Lme/android/browser/TabBar;)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_0

    .line 401
    .restart local v0    # "matrix":Landroid/graphics/Matrix;
    :cond_2
    iget-object v1, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mInactiveShader:Landroid/graphics/BitmapShader;
    invoke-static {v1}, Lme/android/browser/TabBar;->access$19(Lme/android/browser/TabBar;)Landroid/graphics/BitmapShader;

    move-result-object v1

    goto :goto_1
.end method

.method private setFocusPath(Landroid/graphics/Path;IIII)V
    .locals 2
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 418
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 419
    int-to-float v0, p2

    int-to-float v1, p5

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 420
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 421
    iget-object v0, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mTabSliceWidth:I
    invoke-static {v0}, Lme/android/browser/TabBar;->access$1(Lme/android/browser/TabBar;)I

    move-result v0

    sub-int v0, p4, v0

    int-to-float v0, v0

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 422
    int-to-float v0, p4

    int-to-float v1, p5

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 423
    return-void
.end method

.method private setTabPath(Landroid/graphics/Path;IIII)V
    .locals 2
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 409
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 410
    int-to-float v0, p2

    int-to-float v1, p5

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 411
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 412
    iget-object v0, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mTabSliceWidth:I
    invoke-static {v0}, Lme/android/browser/TabBar;->access$1(Lme/android/browser/TabBar;)I

    move-result v0

    sub-int v0, p4, v0

    int-to-float v0, v0

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 413
    int-to-float v0, p4

    int-to-float v1, p5

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 414
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 415
    return-void
.end method

.method private updateFromTab()V
    .locals 3

    .prologue
    .line 292
    iget-object v1, p0, Lme/android/browser/TabBar$TabView;->mTab:Lme/android/browser/Tab;

    invoke-virtual {v1}, Lme/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "displayTitle":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 294
    iget-object v1, p0, Lme/android/browser/TabBar$TabView;->mTab:Lme/android/browser/Tab;

    invoke-virtual {v1}, Lme/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 296
    :cond_0
    invoke-virtual {p0, v0}, Lme/android/browser/TabBar$TabView;->setDisplayTitle(Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lme/android/browser/TabBar$TabView;->mTab:Lme/android/browser/Tab;

    invoke-virtual {v1}, Lme/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 298
    iget-object v1, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mUi:Lme/android/browser/XLargeUi;
    invoke-static {v1}, Lme/android/browser/TabBar;->access$2(Lme/android/browser/TabBar;)Lme/android/browser/XLargeUi;

    move-result-object v1

    iget-object v2, p0, Lme/android/browser/TabBar$TabView;->mTab:Lme/android/browser/Tab;

    invoke-virtual {v2}, Lme/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/android/browser/XLargeUi;->getFaviconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/android/browser/TabBar$TabView;->setFavicon(Landroid/graphics/drawable/Drawable;)V

    .line 300
    :cond_1
    invoke-direct {p0}, Lme/android/browser/TabBar$TabView;->updateTabIcons()V

    .line 301
    return-void
.end method

.method private updateTabIcons()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 304
    iget-object v3, p0, Lme/android/browser/TabBar$TabView;->mIncognito:Landroid/view/View;

    .line 305
    iget-object v0, p0, Lme/android/browser/TabBar$TabView;->mTab:Lme/android/browser/Tab;

    invoke-virtual {v0}, Lme/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 304
    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lme/android/browser/TabBar$TabView;->mSnapshot:Landroid/view/View;

    iget-object v3, p0, Lme/android/browser/TabBar$TabView;->mTab:Lme/android/browser/Tab;

    invoke-virtual {v3}, Lme/android/browser/Tab;->isSnapshot()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    return-void

    :cond_0
    move v0, v2

    .line 306
    goto :goto_0

    :cond_1
    move v1, v2

    .line 308
    goto :goto_1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 366
    iget-object v4, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mCurrentTextureWidth:I
    invoke-static {v4}, Lme/android/browser/TabBar;->access$7(Lme/android/browser/TabBar;)I

    move-result v4

    iget-object v5, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mUi:Lme/android/browser/XLargeUi;
    invoke-static {v5}, Lme/android/browser/TabBar;->access$2(Lme/android/browser/TabBar;)Lme/android/browser/XLargeUi;

    move-result-object v5

    invoke-virtual {v5}, Lme/android/browser/XLargeUi;->getContentWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 367
    iget-object v4, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mCurrentTextureHeight:I
    invoke-static {v4}, Lme/android/browser/TabBar;->access$8(Lme/android/browser/TabBar;)I

    move-result v4

    invoke-virtual {p0}, Lme/android/browser/TabBar$TabView;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 368
    :cond_0
    iget-object v4, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    iget-object v5, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mUi:Lme/android/browser/XLargeUi;
    invoke-static {v5}, Lme/android/browser/TabBar;->access$2(Lme/android/browser/TabBar;)Lme/android/browser/XLargeUi;

    move-result-object v5

    invoke-virtual {v5}, Lme/android/browser/XLargeUi;->getContentWidth()I

    move-result v5

    invoke-static {v4, v5}, Lme/android/browser/TabBar;->access$9(Lme/android/browser/TabBar;I)V

    .line 369
    iget-object v4, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    invoke-virtual {p0}, Lme/android/browser/TabBar$TabView;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Lme/android/browser/TabBar;->access$10(Lme/android/browser/TabBar;I)V

    .line 371
    iget-object v4, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mCurrentTextureWidth:I
    invoke-static {v4}, Lme/android/browser/TabBar;->access$7(Lme/android/browser/TabBar;)I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mCurrentTextureHeight:I
    invoke-static {v4}, Lme/android/browser/TabBar;->access$8(Lme/android/browser/TabBar;)I

    move-result v4

    if-lez v4, :cond_1

    .line 372
    iget-object v4, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mActiveDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lme/android/browser/TabBar;->access$11(Lme/android/browser/TabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 373
    iget-object v5, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mCurrentTextureWidth:I
    invoke-static {v5}, Lme/android/browser/TabBar;->access$7(Lme/android/browser/TabBar;)I

    move-result v5

    iget-object v6, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mCurrentTextureHeight:I
    invoke-static {v6}, Lme/android/browser/TabBar;->access$8(Lme/android/browser/TabBar;)I

    move-result v6

    .line 372
    # invokes: Lme/android/browser/TabBar;->getDrawableAsBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    invoke-static {v4, v5, v6}, Lme/android/browser/TabBar;->access$12(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 374
    .local v0, "activeTexture":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mInactiveDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lme/android/browser/TabBar;->access$13(Lme/android/browser/TabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 375
    iget-object v5, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mCurrentTextureWidth:I
    invoke-static {v5}, Lme/android/browser/TabBar;->access$7(Lme/android/browser/TabBar;)I

    move-result v5

    iget-object v6, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mCurrentTextureHeight:I
    invoke-static {v6}, Lme/android/browser/TabBar;->access$8(Lme/android/browser/TabBar;)I

    move-result v6

    .line 374
    # invokes: Lme/android/browser/TabBar;->getDrawableAsBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    invoke-static {v4, v5, v6}, Lme/android/browser/TabBar;->access$12(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 377
    .local v1, "inactiveTexture":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    new-instance v5, Landroid/graphics/BitmapShader;

    .line 378
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, v0, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 377
    invoke-static {v4, v5}, Lme/android/browser/TabBar;->access$14(Lme/android/browser/TabBar;Landroid/graphics/BitmapShader;)V

    .line 379
    iget-object v4, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mActiveShaderPaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lme/android/browser/TabBar;->access$15(Lme/android/browser/TabBar;)Landroid/graphics/Paint;

    move-result-object v4

    iget-object v5, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mActiveShader:Landroid/graphics/BitmapShader;
    invoke-static {v5}, Lme/android/browser/TabBar;->access$16(Lme/android/browser/TabBar;)Landroid/graphics/BitmapShader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 381
    iget-object v4, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    new-instance v5, Landroid/graphics/BitmapShader;

    .line 382
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, v1, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 381
    invoke-static {v4, v5}, Lme/android/browser/TabBar;->access$17(Lme/android/browser/TabBar;Landroid/graphics/BitmapShader;)V

    .line 383
    iget-object v4, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mInactiveShaderPaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lme/android/browser/TabBar;->access$18(Lme/android/browser/TabBar;)Landroid/graphics/Paint;

    move-result-object v4

    iget-object v5, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mInactiveShader:Landroid/graphics/BitmapShader;
    invoke-static {v5}, Lme/android/browser/TabBar;->access$19(Lme/android/browser/TabBar;)Landroid/graphics/BitmapShader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 387
    .end local v0    # "activeTexture":Landroid/graphics/Bitmap;
    .end local v1    # "inactiveTexture":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v4, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mActiveShader:Landroid/graphics/BitmapShader;
    invoke-static {v4}, Lme/android/browser/TabBar;->access$16(Lme/android/browser/TabBar;)Landroid/graphics/BitmapShader;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mInactiveShader:Landroid/graphics/BitmapShader;
    invoke-static {v4}, Lme/android/browser/TabBar;->access$19(Lme/android/browser/TabBar;)Landroid/graphics/BitmapShader;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 388
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 389
    .local v3, "state":I
    iget-object v4, p0, Lme/android/browser/TabBar$TabView;->mWindowPos:[I

    invoke-virtual {p0, v4}, Lme/android/browser/TabBar$TabView;->getLocationInWindow([I)V

    .line 390
    iget-boolean v4, p0, Lme/android/browser/TabBar$TabView;->mSelected:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mActiveShaderPaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lme/android/browser/TabBar;->access$15(Lme/android/browser/TabBar;)Landroid/graphics/Paint;

    move-result-object v2

    .line 391
    .local v2, "paint":Landroid/graphics/Paint;
    :goto_0
    iget-object v4, p0, Lme/android/browser/TabBar$TabView;->mPath:Landroid/graphics/Path;

    iget-object v5, p0, Lme/android/browser/TabBar$TabView;->mWindowPos:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-direct {p0, p1, v2, v4, v5}, Lme/android/browser/TabBar$TabView;->drawClipped(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;I)V

    .line 392
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 394
    .end local v2    # "paint":Landroid/graphics/Paint;
    .end local v3    # "state":I
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 395
    return-void

    .line 390
    .restart local v3    # "state":I
    :cond_3
    iget-object v4, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mInactiveShaderPaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lme/android/browser/TabBar;->access$18(Lme/android/browser/TabBar;)Landroid/graphics/Paint;

    move-result-object v2

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 286
    iget-object v0, p0, Lme/android/browser/TabBar$TabView;->mClose:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 287
    invoke-direct {p0}, Lme/android/browser/TabBar$TabView;->closeTab()V

    .line 289
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v2, 0x0

    .line 359
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 360
    iget-object v1, p0, Lme/android/browser/TabBar$TabView;->mPath:Landroid/graphics/Path;

    sub-int v4, p4, p2

    sub-int v5, p5, p3

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lme/android/browser/TabBar$TabView;->setTabPath(Landroid/graphics/Path;IIII)V

    .line 361
    iget-object v1, p0, Lme/android/browser/TabBar$TabView;->mFocusPath:Landroid/graphics/Path;

    sub-int v4, p4, p2

    sub-int v5, p5, p3

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lme/android/browser/TabBar$TabView;->setFocusPath(Landroid/graphics/Path;IIII)V

    .line 362
    return-void
.end method

.method public setActivated(Z)V
    .locals 5
    .param p1, "selected"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 313
    iput-boolean p1, p0, Lme/android/browser/TabBar$TabView;->mSelected:Z

    .line 314
    iget-object v4, p0, Lme/android/browser/TabBar$TabView;->mClose:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lme/android/browser/TabBar$TabView;->mSelected:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lme/android/browser/TabBar$TabView;->mIconView:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lme/android/browser/TabBar$TabView;->mSelected:Z

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    iget-object v2, p0, Lme/android/browser/TabBar$TabView;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lme/android/browser/TabBar;->access$3(Lme/android/browser/TabBar;)Landroid/app/Activity;

    move-result-object v4

    iget-boolean v0, p0, Lme/android/browser/TabBar$TabView;->mSelected:Z

    if-eqz v0, :cond_2

    .line 317
    const v0, 0x7f0f000c

    .line 316
    :goto_2
    invoke-virtual {v2, v4, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 318
    iget-boolean v0, p0, Lme/android/browser/TabBar$TabView;->mSelected:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p0, v0}, Lme/android/browser/TabBar$TabView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 319
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 320
    invoke-virtual {p0}, Lme/android/browser/TabBar$TabView;->updateLayoutParams()V

    .line 321
    if-eqz p1, :cond_4

    :goto_4
    invoke-virtual {p0, v1}, Lme/android/browser/TabBar$TabView;->setFocusable(Z)V

    .line 322
    invoke-virtual {p0}, Lme/android/browser/TabBar$TabView;->postInvalidate()V

    .line 323
    return-void

    :cond_0
    move v0, v2

    .line 314
    goto :goto_0

    :cond_1
    move v2, v1

    .line 315
    goto :goto_1

    .line 317
    :cond_2
    const v0, 0x7f0f000d

    goto :goto_2

    :cond_3
    move v0, v3

    .line 318
    goto :goto_3

    :cond_4
    move v1, v3

    .line 321
    goto :goto_4
.end method

.method setDisplayTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 333
    iget-object v0, p0, Lme/android/browser/TabBar$TabView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    return-void
.end method

.method setFavicon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 337
    iget-object v0, p0, Lme/android/browser/TabBar$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 338
    return-void
.end method

.method setLock(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 341
    if-nez p1, :cond_0

    .line 342
    iget-object v0, p0, Lme/android/browser/TabBar$TabView;->mLock:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lme/android/browser/TabBar$TabView;->mLock:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 345
    iget-object v0, p0, Lme/android/browser/TabBar$TabView;->mLock:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateLayoutParams()V
    .locals 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lme/android/browser/TabBar$TabView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 327
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lme/android/browser/TabBar$TabView;->this$0:Lme/android/browser/TabBar;

    # getter for: Lme/android/browser/TabBar;->mTabWidth:I
    invoke-static {v1}, Lme/android/browser/TabBar;->access$4(Lme/android/browser/TabBar;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 328
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 329
    invoke-virtual {p0, v0}, Lme/android/browser/TabBar$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    return-void
.end method
