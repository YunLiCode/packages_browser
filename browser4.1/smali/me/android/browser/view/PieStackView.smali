.class public Lme/android/browser/view/PieStackView;
.super Lme/android/browser/view/BasePieView;
.source "PieStackView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/android/browser/view/PieStackView$OnCurrentListener;
    }
.end annotation


# static fields
.field private static final SLOP:I = 0x5


# instance fields
.field private mCurrentListener:Lme/android/browser/view/PieStackView$OnCurrentListener;

.field private mMinHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Lme/android/browser/view/BasePieView;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 41
    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 40
    iput v0, p0, Lme/android/browser/view/PieStackView;->mMinHeight:I

    .line 42
    return-void
.end method

.method private layoutChildrenLinear()V
    .locals 8

    .prologue
    .line 74
    iget-object v5, p0, Lme/android/browser/view/PieStackView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 75
    .local v1, "n":I
    iget v2, p0, Lme/android/browser/view/PieStackView;->mTop:I

    .line 76
    .local v2, "top":I
    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    const/4 v0, 0x0

    .line 77
    .local v0, "dy":I
    :goto_0
    iget-object v5, p0, Lme/android/browser/view/PieStackView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 82
    return-void

    .line 76
    .end local v0    # "dy":I
    :cond_0
    iget v5, p0, Lme/android/browser/view/PieStackView;->mHeight:I

    iget v6, p0, Lme/android/browser/view/PieStackView;->mChildHeight:I

    sub-int/2addr v5, v6

    add-int/lit8 v6, v1, -0x1

    div-int v0, v5, v6

    goto :goto_0

    .line 77
    .restart local v0    # "dy":I
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 78
    .local v3, "view":Landroid/view/View;
    iget v4, p0, Lme/android/browser/view/PieStackView;->mLeft:I

    .line 79
    .local v4, "x":I
    iget v6, p0, Lme/android/browser/view/PieStackView;->mChildWidth:I

    add-int/2addr v6, v4

    iget v7, p0, Lme/android/browser/view/PieStackView;->mChildHeight:I

    add-int/2addr v7, v2

    invoke-virtual {v3, v4, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 80
    add-int/2addr v2, v0

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 86
    iget-object v2, p0, Lme/android/browser/view/PieStackView;->mViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget v2, p0, Lme/android/browser/view/PieStackView;->mCurrent:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 87
    iget-object v2, p0, Lme/android/browser/view/PieStackView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 88
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lme/android/browser/view/PieStackView;->mCurrent:I

    if-lt v0, v2, :cond_1

    .line 91
    add-int/lit8 v0, v1, -0x1

    :goto_1
    iget v2, p0, Lme/android/browser/view/PieStackView;->mCurrent:I

    if-gt v0, v2, :cond_2

    .line 94
    iget-object v2, p0, Lme/android/browser/view/PieStackView;->mViews:Ljava/util/ArrayList;

    iget v3, p0, Lme/android/browser/view/PieStackView;->mCurrent:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, p1}, Lme/android/browser/view/PieStackView;->drawView(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 96
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void

    .line 89
    .restart local v0    # "i":I
    .restart local v1    # "n":I
    :cond_1
    iget-object v2, p0, Lme/android/browser/view/PieStackView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, p1}, Lme/android/browser/view/PieStackView;->drawView(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_2
    iget-object v2, p0, Lme/android/browser/view/PieStackView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, p1}, Lme/android/browser/view/PieStackView;->drawView(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 91
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method protected findChildAt(I)I
    .locals 3
    .param p1, "y"    # I

    .prologue
    .line 100
    iget v1, p0, Lme/android/browser/view/PieStackView;->mTop:I

    sub-int v1, p1, v1

    iget-object v2, p0, Lme/android/browser/view/PieStackView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/2addr v1, v2

    iget v2, p0, Lme/android/browser/view/PieStackView;->mHeight:I

    div-int v0, v1, v2

    .line 101
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
    .line 62
    invoke-super/range {p0 .. p5}, Lme/android/browser/view/BasePieView;->layout(IIZFI)V

    .line 63
    invoke-virtual {p0}, Lme/android/browser/view/PieStackView;->buildViews()V

    .line 64
    iget v0, p0, Lme/android/browser/view/PieStackView;->mChildWidth:I

    iput v0, p0, Lme/android/browser/view/PieStackView;->mWidth:I

    .line 65
    iget v0, p0, Lme/android/browser/view/PieStackView;->mChildHeight:I

    iget-object v1, p0, Lme/android/browser/view/PieStackView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lme/android/browser/view/PieStackView;->mMinHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lme/android/browser/view/PieStackView;->mHeight:I

    .line 66
    if-eqz p3, :cond_1

    const/4 v0, 0x5

    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lme/android/browser/view/PieStackView;->mLeft:I

    .line 67
    iget v0, p0, Lme/android/browser/view/PieStackView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iput v0, p0, Lme/android/browser/view/PieStackView;->mTop:I

    .line 68
    iget-object v0, p0, Lme/android/browser/view/PieStackView;->mViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0}, Lme/android/browser/view/PieStackView;->layoutChildrenLinear()V

    .line 71
    :cond_0
    return-void

    .line 66
    :cond_1
    iget v0, p0, Lme/android/browser/view/PieStackView;->mChildWidth:I

    add-int/lit8 v0, v0, 0x5

    neg-int v0, v0

    goto :goto_0
.end method

.method public setCurrent(I)V
    .locals 1
    .param p1, "ix"    # I

    .prologue
    .line 50
    invoke-super {p0, p1}, Lme/android/browser/view/BasePieView;->setCurrent(I)V

    .line 51
    iget-object v0, p0, Lme/android/browser/view/PieStackView;->mCurrentListener:Lme/android/browser/view/PieStackView$OnCurrentListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lme/android/browser/view/PieStackView;->mCurrentListener:Lme/android/browser/view/PieStackView$OnCurrentListener;

    invoke-interface {v0, p1}, Lme/android/browser/view/PieStackView$OnCurrentListener;->onSetCurrent(I)V

    .line 54
    :cond_0
    return-void
.end method

.method public setOnCurrentListener(Lme/android/browser/view/PieStackView$OnCurrentListener;)V
    .locals 0
    .param p1, "l"    # Lme/android/browser/view/PieStackView$OnCurrentListener;

    .prologue
    .line 45
    iput-object p1, p0, Lme/android/browser/view/PieStackView;->mCurrentListener:Lme/android/browser/view/PieStackView$OnCurrentListener;

    .line 46
    return-void
.end method
