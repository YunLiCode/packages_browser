.class public Lme/android/browser/view/PieListView;
.super Lme/android/browser/view/BasePieView;
.source "PieListView.java"


# instance fields
.field private mBgPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Lme/android/browser/view/BasePieView;-><init>()V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lme/android/browser/view/PieListView;->mBgPaint:Landroid/graphics/Paint;

    .line 35
    iget-object v0, p0, Lme/android/browser/view/PieListView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 69
    iget v0, p0, Lme/android/browser/view/PieListView;->mLeft:I

    int-to-float v1, v0

    iget v0, p0, Lme/android/browser/view/PieListView;->mTop:I

    int-to-float v2, v0

    iget v0, p0, Lme/android/browser/view/PieListView;->mLeft:I

    iget v3, p0, Lme/android/browser/view/PieListView;->mWidth:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lme/android/browser/view/PieListView;->mTop:I

    iget v4, p0, Lme/android/browser/view/PieListView;->mHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lme/android/browser/view/PieListView;->mBgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 70
    iget-object v0, p0, Lme/android/browser/view/PieListView;->mViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lme/android/browser/view/PieListView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    :cond_0
    return-void

    .line 71
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 72
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v6, p1}, Lme/android/browser/view/PieListView;->drawView(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected findChildAt(I)I
    .locals 3
    .param p1, "y"    # I

    .prologue
    .line 79
    iget v1, p0, Lme/android/browser/view/PieListView;->mTop:I

    sub-int v1, p1, v1

    iget-object v2, p0, Lme/android/browser/view/PieListView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/2addr v1, v2

    iget v2, p0, Lme/android/browser/view/PieListView;->mHeight:I

    div-int v0, v1, v2

    .line 80
    .local v0, "ix":I
    return v0
.end method

.method public layout(IIZFI)V
    .locals 3
    .param p1, "anchorX"    # I
    .param p2, "anchorY"    # I
    .param p3, "left"    # Z
    .param p4, "angle"    # F
    .param p5, "pHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-super/range {p0 .. p5}, Lme/android/browser/view/BasePieView;->layout(IIZFI)V

    .line 45
    invoke-virtual {p0}, Lme/android/browser/view/PieListView;->buildViews()V

    .line 46
    iget v0, p0, Lme/android/browser/view/PieListView;->mChildWidth:I

    iput v0, p0, Lme/android/browser/view/PieListView;->mWidth:I

    .line 47
    iget v0, p0, Lme/android/browser/view/PieListView;->mChildHeight:I

    iget-object v2, p0, Lme/android/browser/view/PieListView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    mul-int/2addr v0, v2

    iput v0, p0, Lme/android/browser/view/PieListView;->mHeight:I

    .line 48
    if-eqz p3, :cond_2

    move v0, v1

    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lme/android/browser/view/PieListView;->mLeft:I

    .line 49
    iget v0, p0, Lme/android/browser/view/PieListView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lme/android/browser/view/PieListView;->mTop:I

    .line 50
    iget v0, p0, Lme/android/browser/view/PieListView;->mTop:I

    iget v1, p0, Lme/android/browser/view/PieListView;->mHeight:I

    add-int/2addr v0, v1

    if-le v0, p5, :cond_0

    .line 51
    iget v0, p0, Lme/android/browser/view/PieListView;->mHeight:I

    sub-int v0, p5, v0

    iput v0, p0, Lme/android/browser/view/PieListView;->mTop:I

    .line 53
    :cond_0
    iget-object v0, p0, Lme/android/browser/view/PieListView;->mViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p0}, Lme/android/browser/view/PieListView;->layoutChildrenLinear()V

    .line 56
    :cond_1
    return-void

    .line 48
    :cond_2
    iget v0, p0, Lme/android/browser/view/PieListView;->mChildWidth:I

    neg-int v0, v0

    goto :goto_0
.end method

.method protected layoutChildrenLinear()V
    .locals 7

    .prologue
    .line 59
    iget-object v3, p0, Lme/android/browser/view/PieListView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 60
    .local v0, "n":I
    iget v1, p0, Lme/android/browser/view/PieListView;->mTop:I

    .line 61
    .local v1, "top":I
    iget-object v3, p0, Lme/android/browser/view/PieListView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 65
    return-void

    .line 61
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 62
    .local v2, "view":Landroid/view/View;
    iget v4, p0, Lme/android/browser/view/PieListView;->mLeft:I

    iget v5, p0, Lme/android/browser/view/PieListView;->mLeft:I

    iget v6, p0, Lme/android/browser/view/PieListView;->mChildWidth:I

    add-int/2addr v5, v6

    iget v6, p0, Lme/android/browser/view/PieListView;->mChildHeight:I

    add-int/2addr v6, v1

    invoke-virtual {v2, v4, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 63
    iget v4, p0, Lme/android/browser/view/PieListView;->mChildHeight:I

    add-int/2addr v1, v4

    goto :goto_0
.end method
