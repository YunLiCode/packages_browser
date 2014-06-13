.class public Lme/android/browser/view/PieMenu;
.super Landroid/widget/FrameLayout;
.source "PieMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/android/browser/view/PieMenu$PieController;,
        Lme/android/browser/view/PieMenu$PieView;
    }
.end annotation


# static fields
.field private static final ANIMATION:J = 0x50L

.field private static final MAX_LEVELS:I = 0x5


# instance fields
.field private mAnimating:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCenter:Landroid/graphics/Point;

.field private mController:Lme/android/browser/view/PieMenu$PieController;

.field private mCounts:[I

.field private mCurrentItem:Lme/android/browser/view/PieItem;

.field private mCurrentItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lme/android/browser/view/PieItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lme/android/browser/view/PieItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLevels:I

.field private mNormalPaint:Landroid/graphics/Paint;

.field private mOpen:Z

.field private mOpenItem:Lme/android/browser/view/PieItem;

.field private mPath:Landroid/graphics/Path;

.field private mPieView:Lme/android/browser/view/PieMenu$PieView;

.field private mRadius:I

.field private mRadiusInc:I

.field private mSelectedPaint:Landroid/graphics/Paint;

.field private mSlop:I

.field private mSubPaint:Landroid/graphics/Paint;

.field private mTouchOffset:I

.field private mUseBackground:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lme/android/browser/view/PieMenu;->mPieView:Lme/android/browser/view/PieMenu$PieView;

    .line 134
    invoke-direct {p0, p1}, Lme/android/browser/view/PieMenu;->init(Landroid/content/Context;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lme/android/browser/view/PieMenu;->mPieView:Lme/android/browser/view/PieMenu$PieView;

    .line 126
    invoke-direct {p0, p1}, Lme/android/browser/view/PieMenu;->init(Landroid/content/Context;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lme/android/browser/view/PieMenu;->mPieView:Lme/android/browser/view/PieMenu$PieView;

    .line 117
    invoke-direct {p0, p1}, Lme/android/browser/view/PieMenu;->init(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method static synthetic access$0(Lme/android/browser/view/PieMenu;)Ljava/util/List;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lme/android/browser/view/PieMenu;->mCurrentItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lme/android/browser/view/PieMenu;)Ljava/util/List;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lme/android/browser/view/PieMenu;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lme/android/browser/view/PieMenu;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lme/android/browser/view/PieMenu;->mCurrentItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$3(Lme/android/browser/view/PieMenu;)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Lme/android/browser/view/PieMenu;->layoutPie()V

    return-void
.end method

.method static synthetic access$4(Lme/android/browser/view/PieMenu;Z)V
    .locals 0

    .prologue
    .line 108
    iput-boolean p1, p0, Lme/android/browser/view/PieMenu;->mAnimating:Z

    return-void
.end method

.method static synthetic access$5(Lme/android/browser/view/PieMenu;Lme/android/browser/view/PieItem;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .prologue
    .line 505
    invoke-direct {p0, p1, p2}, Lme/android/browser/view/PieMenu;->animateIn(Lme/android/browser/view/PieItem;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$6(Lme/android/browser/view/PieMenu;Lme/android/browser/view/PieMenu$PieView;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lme/android/browser/view/PieMenu;->mPieView:Lme/android/browser/view/PieMenu$PieView;

    return-void
.end method

.method static synthetic access$7(Lme/android/browser/view/PieMenu;)Lme/android/browser/view/PieItem;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lme/android/browser/view/PieMenu;->mOpenItem:Lme/android/browser/view/PieItem;

    return-object v0
.end method

.method static synthetic access$8(Lme/android/browser/view/PieMenu;Lme/android/browser/view/PieItem;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lme/android/browser/view/PieMenu;->mOpenItem:Lme/android/browser/view/PieItem;

    return-void
.end method

.method static synthetic access$9(Lme/android/browser/view/PieMenu;Lme/android/browser/view/PieItem;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lme/android/browser/view/PieMenu;->mCurrentItem:Lme/android/browser/view/PieItem;

    return-void
.end method

.method private animateIn(Lme/android/browser/view/PieItem;Landroid/animation/Animator$AnimatorListener;)V
    .locals 4
    .param p1, "fixed"    # Lme/android/browser/view/PieItem;
    .param p2, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 506
    iget-object v2, p0, Lme/android/browser/view/PieMenu;->mCurrentItems:Ljava/util/List;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    invoke-virtual {p1}, Lme/android/browser/view/PieItem;->getStartAngle()F

    move-result v1

    .line 508
    .local v1, "target":F
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 509
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v2, Lme/android/browser/view/PieMenu$3;

    invoke-direct {v2, p0, p1, v1}, Lme/android/browser/view/PieMenu$3;-><init>(Lme/android/browser/view/PieMenu;Lme/android/browser/view/PieItem;F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 523
    const-wide/16 v2, 0x50

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 524
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 525
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 508
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method private animateOpen()V
    .locals 3

    .prologue
    .line 217
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 218
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v1, Lme/android/browser/view/PieMenu$1;

    invoke-direct {v1, p0}, Lme/android/browser/view/PieMenu$1;-><init>(Lme/android/browser/view/PieMenu;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 228
    const-wide/16 v1, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 229
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 230
    return-void

    .line 217
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method private animateOut(Lme/android/browser/view/PieItem;Landroid/animation/Animator$AnimatorListener;)V
    .locals 4
    .param p1, "fixed"    # Lme/android/browser/view/PieItem;
    .param p2, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 485
    iget-object v2, p0, Lme/android/browser/view/PieMenu;->mCurrentItems:Ljava/util/List;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    invoke-virtual {p1}, Lme/android/browser/view/PieItem;->getStartAngle()F

    move-result v1

    .line 487
    .local v1, "target":F
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 488
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v2, Lme/android/browser/view/PieMenu$2;

    invoke-direct {v2, p0, p1, v1}, Lme/android/browser/view/PieMenu$2;-><init>(Lme/android/browser/view/PieMenu;Lme/android/browser/view/PieItem;F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 500
    const-wide/16 v2, 0x50

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 501
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 502
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 487
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method private closeSub()V
    .locals 2

    .prologue
    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/android/browser/view/PieMenu;->mAnimating:Z

    .line 560
    iget-object v0, p0, Lme/android/browser/view/PieMenu;->mCurrentItem:Lme/android/browser/view/PieItem;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lme/android/browser/view/PieMenu;->mCurrentItem:Lme/android/browser/view/PieItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/android/browser/view/PieItem;->setSelected(Z)V

    .line 563
    :cond_0
    iget-object v0, p0, Lme/android/browser/view/PieMenu;->mOpenItem:Lme/android/browser/view/PieItem;

    new-instance v1, Lme/android/browser/view/PieMenu$5;

    invoke-direct {v1, p0}, Lme/android/browser/view/PieMenu$5;-><init>(Lme/android/browser/view/PieMenu;)V

    invoke-direct {p0, v0, v1}, Lme/android/browser/view/PieMenu;->animateOut(Lme/android/browser/view/PieItem;Landroid/animation/Animator$AnimatorListener;)V

    .line 582
    return-void
.end method

.method private deselect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 585
    iget-object v0, p0, Lme/android/browser/view/PieMenu;->mCurrentItem:Lme/android/browser/view/PieItem;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lme/android/browser/view/PieMenu;->mCurrentItem:Lme/android/browser/view/PieItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/android/browser/view/PieItem;->setSelected(Z)V

    .line 588
    :cond_0
    iget-object v0, p0, Lme/android/browser/view/PieMenu;->mOpenItem:Lme/android/browser/view/PieItem;

    if-eqz v0, :cond_1

    .line 589
    iput-object v2, p0, Lme/android/browser/view/PieMenu;->mOpenItem:Lme/android/browser/view/PieItem;

    .line 590
    iget-object v0, p0, Lme/android/browser/view/PieMenu;->mItems:Ljava/util/List;

    iput-object v0, p0, Lme/android/browser/view/PieMenu;->mCurrentItems:Ljava/util/List;

    .line 592
    :cond_1
    iput-object v2, p0, Lme/android/browser/view/PieMenu;->mCurrentItem:Lme/android/browser/view/PieItem;

    .line 593
    iput-object v2, p0, Lme/android/browser/view/PieMenu;->mPieView:Lme/android/browser/view/PieMenu$PieView;

    .line 594
    return-void
.end method

.method private drawItem(Landroid/graphics/Canvas;Lme/android/browser/view/PieItem;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "item"    # Lme/android/browser/view/PieItem;

    .prologue
    .line 329
    invoke-virtual {p2}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 330
    invoke-virtual {p2}, Lme/android/browser/view/PieItem;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, p0, Lme/android/browser/view/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    .line 331
    .local v0, "p":Landroid/graphics/Paint;
    :goto_0
    iget-object v4, p0, Lme/android/browser/view/PieMenu;->mItems:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 332
    invoke-virtual {p2}, Lme/android/browser/view/PieItem;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v0, p0, Lme/android/browser/view/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    .line 334
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 335
    .local v2, "state":I
    invoke-direct {p0}, Lme/android/browser/view/PieMenu;->onTheLeft()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 336
    const/high16 v4, -0x40800000

    const/high16 v5, 0x3f800000

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 338
    :cond_1
    invoke-virtual {p2}, Lme/android/browser/view/PieItem;->getStartAngle()F

    move-result v4

    float-to-double v4, v4

    invoke-direct {p0, v4, v5}, Lme/android/browser/view/PieMenu;->getDegrees(D)F

    move-result v4

    const/high16 v5, 0x43870000

    sub-float v1, v4, v5

    .line 339
    .local v1, "r":F
    iget-object v4, p0, Lme/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Lme/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {p1, v1, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 340
    iget-object v4, p0, Lme/android/browser/view/PieMenu;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 341
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 343
    invoke-virtual {p2}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v3

    .line 344
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 345
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 346
    invoke-virtual {v3, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 347
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 349
    .end local v0    # "p":Landroid/graphics/Paint;
    .end local v1    # "r":F
    .end local v2    # "state":I
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    return-void

    .line 330
    :cond_3
    iget-object v0, p0, Lme/android/browser/view/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 332
    .restart local v0    # "p":Landroid/graphics/Paint;
    :cond_4
    iget-object v0, p0, Lme/android/browser/view/PieMenu;->mSubPaint:Landroid/graphics/Paint;

    goto :goto_1
.end method

.method private findItem(Landroid/graphics/PointF;)Lme/android/browser/view/PieItem;
    .locals 3
    .param p1, "polar"    # Landroid/graphics/PointF;

    .prologue
    .line 621
    iget-object v1, p0, Lme/android/browser/view/PieMenu;->mCurrentItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 626
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 621
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/android/browser/view/PieItem;

    .line 622
    .local v0, "item":Lme/android/browser/view/PieItem;
    iget v2, p0, Lme/android/browser/view/PieMenu;->mTouchOffset:I

    int-to-float v2, v2

    invoke-direct {p0, p1, v2, v0}, Lme/android/browser/view/PieMenu;->inside(Landroid/graphics/PointF;FLme/android/browser/view/PieItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private getDegrees(D)F
    .locals 6
    .param p1, "angle"    # D

    .prologue
    .line 289
    const-wide v0, 0x4070e00000000000L

    const-wide v2, 0x4066800000000000L

    mul-double/2addr v2, p1

    const-wide v4, 0x400921fb54442d18L

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private getPolar(FF)Landroid/graphics/PointF;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x0

    .line 597
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 599
    .local v0, "res":Landroid/graphics/PointF;
    const v1, 0x3fc90fdb

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 600
    iget-object v1, p0, Lme/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float p1, v1, p1

    .line 601
    iget-object v1, p0, Lme/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lme/android/browser/view/PieMenu;->mSlop:I

    if-ge v1, v2, :cond_0

    .line 602
    neg-float p1, p1

    .line 604
    :cond_0
    iget-object v1, p0, Lme/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    sub-float p2, v1, p2

    .line 605
    mul-float v1, p1, p1

    mul-float v2, p2, p2

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 606
    cmpl-float v1, p2, v3

    if-lez v1, :cond_2

    .line 607
    iget v1, v0, Landroid/graphics/PointF;->y:F

    div-float v1, p1, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 611
    :cond_1
    :goto_0
    return-object v0

    .line 608
    :cond_2
    cmpg-float v1, p2, v3

    if-gez v1, :cond_1

    .line 609
    const-wide v1, 0x400921fb54442d18L

    iget v3, v0, Landroid/graphics/PointF;->y:F

    div-float v3, p1, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    sub-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lme/android/browser/view/PieMenu;->mItems:Ljava/util/List;

    .line 139
    iput v2, p0, Lme/android/browser/view/PieMenu;->mLevels:I

    .line 140
    const/4 v1, 0x5

    new-array v1, v1, [I

    iput-object v1, p0, Lme/android/browser/view/PieMenu;->mCounts:[I

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 142
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lme/android/browser/view/PieMenu;->mRadius:I

    .line 143
    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lme/android/browser/view/PieMenu;->mRadiusInc:I

    .line 144
    const v1, 0x7f0c000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lme/android/browser/view/PieMenu;->mSlop:I

    .line 145
    const v1, 0x7f0c0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lme/android/browser/view/PieMenu;->mTouchOffset:I

    .line 146
    iput-boolean v2, p0, Lme/android/browser/view/PieMenu;->mOpen:Z

    .line 147
    invoke-virtual {p0, v2}, Lme/android/browser/view/PieMenu;->setWillNotDraw(Z)V

    .line 148
    invoke-virtual {p0, v2}, Lme/android/browser/view/PieMenu;->setDrawingCacheEnabled(Z)V

    .line 149
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lme/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    .line 150
    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lme/android/browser/view/PieMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 151
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lme/android/browser/view/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    .line 152
    iget-object v1, p0, Lme/android/browser/view/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    const v2, 0x7f0b000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object v1, p0, Lme/android/browser/view/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 154
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lme/android/browser/view/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    .line 155
    iget-object v1, p0, Lme/android/browser/view/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    const v2, 0x7f0b000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    iget-object v1, p0, Lme/android/browser/view/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 157
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lme/android/browser/view/PieMenu;->mSubPaint:Landroid/graphics/Paint;

    .line 158
    iget-object v1, p0, Lme/android/browser/view/PieMenu;->mSubPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 159
    iget-object v1, p0, Lme/android/browser/view/PieMenu;->mSubPaint:Landroid/graphics/Paint;

    const v2, 0x7f0b000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    return-void
.end method

.method private inside(Landroid/graphics/PointF;FLme/android/browser/view/PieItem;)Z
    .locals 2
    .param p1, "polar"    # Landroid/graphics/PointF;
    .param p2, "offset"    # F
    .param p3, "item"    # Lme/android/browser/view/PieItem;

    .prologue
    .line 630
    invoke-virtual {p3}, Lme/android/browser/view/PieItem;->getInnerRadius()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p2

    iget v1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 631
    invoke-virtual {p3}, Lme/android/browser/view/PieItem;->getOuterRadius()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p2

    iget v1, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 632
    invoke-virtual {p3}, Lme/android/browser/view/PieItem;->getStartAngle()F

    move-result v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 633
    invoke-virtual {p3}, Lme/android/browser/view/PieItem;->getStartAngle()F

    move-result v0

    invoke-virtual {p3}, Lme/android/browser/view/PieItem;->getSweep()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 630
    goto :goto_0
.end method

.method private layoutPie()V
    .locals 28

    .prologue
    .line 242
    const v10, 0x3e490fdb

    .line 243
    .local v10, "emptyangle":F
    const/16 v18, 0x2

    .line 244
    .local v18, "rgap":I
    move-object/from16 v0, p0

    iget v3, v0, Lme/android/browser/view/PieMenu;->mRadius:I

    add-int v7, v3, v18

    .line 245
    .local v7, "inner":I
    move-object/from16 v0, p0

    iget v3, v0, Lme/android/browser/view/PieMenu;->mRadius:I

    move-object/from16 v0, p0

    iget v4, v0, Lme/android/browser/view/PieMenu;->mRadiusInc:I

    add-int/2addr v3, v4

    sub-int v6, v3, v18

    .line 246
    .local v6, "outer":I
    const/4 v11, 0x1

    .line 247
    .local v11, "gap":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lme/android/browser/view/PieMenu;->mLevels:I

    if-lt v13, v3, :cond_0

    .line 278
    return-void

    .line 248
    :cond_0
    add-int/lit8 v16, v13, 0x1

    .line 249
    .local v16, "level":I
    const-wide v3, 0x400921fb54442d18L

    const/high16 v5, 0x40000000

    mul-float/2addr v5, v10

    float-to-double v0, v5

    move-wide/from16 v24, v0

    sub-double v3, v3, v24

    double-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lme/android/browser/view/PieMenu;->mCounts:[I

    aget v4, v4, v16

    int-to-float v4, v4

    div-float v19, v3, v4

    .line 250
    .local v19, "sweep":F
    const/high16 v3, 0x40000000

    div-float v3, v19, v3

    add-float v9, v10, v3

    .line 251
    .local v9, "angle":F
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lme/android/browser/view/PieMenu;->getDegrees(D)F

    move-result v3

    int-to-float v4, v11

    sub-float v4, v3, v4

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lme/android/browser/view/PieMenu;->getDegrees(D)F

    move-result v3

    int-to-float v5, v11

    add-float/2addr v5, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lme/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lme/android/browser/view/PieMenu;->makeSlice(FFIILandroid/graphics/Point;)Landroid/graphics/Path;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lme/android/browser/view/PieMenu;->mPath:Landroid/graphics/Path;

    .line 252
    move-object/from16 v0, p0

    iget-object v3, v0, Lme/android/browser/view/PieMenu;->mCurrentItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 275
    move-object/from16 v0, p0

    iget v3, v0, Lme/android/browser/view/PieMenu;->mRadiusInc:I

    add-int/2addr v7, v3

    .line 276
    move-object/from16 v0, p0

    iget v3, v0, Lme/android/browser/view/PieMenu;->mRadiusInc:I

    add-int/2addr v6, v3

    .line 247
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 252
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lme/android/browser/view/PieItem;

    .line 253
    .local v14, "item":Lme/android/browser/view/PieItem;
    invoke-virtual {v14}, Lme/android/browser/view/PieItem;->getLevel()I

    move-result v4

    move/from16 v0, v16

    if-ne v4, v0, :cond_1

    .line 254
    invoke-virtual {v14}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v20

    .line 255
    .local v20, "view":Landroid/view/View;
    if-eqz v20, :cond_3

    .line 256
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 257
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 256
    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    .line 258
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 259
    .local v21, "w":I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 260
    .local v12, "h":I
    sub-int v4, v6, v7

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    add-int v17, v7, v4

    .line 261
    .local v17, "r":I
    move/from16 v0, v17

    int-to-double v4, v0

    float-to-double v0, v9

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v4, v4, v24

    double-to-int v0, v4

    move/from16 v22, v0

    .line 262
    .local v22, "x":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lme/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v24, v0

    float-to-double v0, v9

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v5, v0

    sub-int/2addr v4, v5

    div-int/lit8 v5, v12, 0x2

    sub-int v23, v4, v5

    .line 263
    .local v23, "y":I
    invoke-direct/range {p0 .. p0}, Lme/android/browser/view/PieMenu;->onTheLeft()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 264
    move-object/from16 v0, p0

    iget-object v4, v0, Lme/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int v4, v4, v22

    div-int/lit8 v5, v21, 0x2

    sub-int v22, v4, v5

    .line 268
    :goto_2
    add-int v4, v22, v21

    add-int v5, v23, v12

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 270
    .end local v12    # "h":I
    .end local v17    # "r":I
    .end local v21    # "w":I
    .end local v22    # "x":I
    .end local v23    # "y":I
    :cond_3
    const/high16 v4, 0x40000000

    div-float v4, v19, v4

    sub-float v15, v9, v4

    .line 271
    .local v15, "itemstart":F
    move/from16 v0, v19

    invoke-virtual {v14, v15, v0, v7, v6}, Lme/android/browser/view/PieItem;->setGeometry(FFII)V

    .line 272
    add-float v9, v9, v19

    goto/16 :goto_1

    .line 266
    .end local v15    # "itemstart":F
    .restart local v12    # "h":I
    .restart local v17    # "r":I
    .restart local v21    # "w":I
    .restart local v22    # "x":I
    .restart local v23    # "y":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lme/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int v4, v4, v22

    div-int/lit8 v5, v21, 0x2

    sub-int v22, v4, v5

    goto :goto_2
.end method

.method private layoutPieView(Lme/android/browser/view/PieMenu$PieView;IIF)V
    .locals 6
    .param p1, "pv"    # Lme/android/browser/view/PieMenu$PieView;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "angle"    # F

    .prologue
    .line 455
    invoke-direct {p0}, Lme/android/browser/view/PieMenu;->onTheLeft()Z

    move-result v3

    invoke-virtual {p0}, Lme/android/browser/view/PieMenu;->getHeight()I

    move-result v5

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lme/android/browser/view/PieMenu$PieView;->layout(IIZFI)V

    .line 456
    return-void
.end method

.method private makeSlice(FFIILandroid/graphics/Point;)Landroid/graphics/Path;
    .locals 7
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "outer"    # I
    .param p4, "inner"    # I
    .param p5, "center"    # Landroid/graphics/Point;

    .prologue
    .line 353
    new-instance v0, Landroid/graphics/RectF;

    iget v3, p5, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, p3

    int-to-float v3, v3

    iget v4, p5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, p3

    int-to-float v4, v4

    iget v5, p5, Landroid/graphics/Point;->x:I

    add-int/2addr v5, p3

    int-to-float v5, v5

    .line 354
    iget v6, p5, Landroid/graphics/Point;->y:I

    add-int/2addr v6, p3

    int-to-float v6, v6

    .line 353
    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 356
    .local v0, "bb":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    iget v3, p5, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, p4

    int-to-float v3, v3

    iget v4, p5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, p4

    int-to-float v4, v4

    iget v5, p5, Landroid/graphics/Point;->x:I

    add-int/2addr v5, p4

    int-to-float v5, v5

    .line 357
    iget v6, p5, Landroid/graphics/Point;->y:I

    add-int/2addr v6, p4

    int-to-float v6, v6

    .line 356
    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 358
    .local v1, "bbi":Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 359
    .local v2, "path":Landroid/graphics/Path;
    sub-float v3, p2, p1

    const/4 v4, 0x1

    invoke-virtual {v2, v0, p1, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 360
    sub-float v3, p1, p2

    invoke-virtual {v2, v1, p2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 361
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 362
    return-object v2
.end method

.method private onEnter(Lme/android/browser/view/PieItem;)V
    .locals 3
    .param p1, "item"    # Lme/android/browser/view/PieItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 465
    iget-object v0, p0, Lme/android/browser/view/PieMenu;->mCurrentItem:Lme/android/browser/view/PieItem;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lme/android/browser/view/PieMenu;->mCurrentItem:Lme/android/browser/view/PieItem;

    invoke-virtual {v0, v1}, Lme/android/browser/view/PieItem;->setSelected(Z)V

    .line 468
    :cond_0
    if-eqz p1, :cond_2

    .line 470
    invoke-virtual {p0, v1}, Lme/android/browser/view/PieMenu;->playSoundEffect(I)V

    .line 471
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lme/android/browser/view/PieItem;->setSelected(Z)V

    .line 472
    iput-object v2, p0, Lme/android/browser/view/PieMenu;->mPieView:Lme/android/browser/view/PieMenu$PieView;

    .line 473
    iput-object p1, p0, Lme/android/browser/view/PieMenu;->mCurrentItem:Lme/android/browser/view/PieItem;

    .line 474
    iget-object v0, p0, Lme/android/browser/view/PieMenu;->mCurrentItem:Lme/android/browser/view/PieItem;

    iget-object v1, p0, Lme/android/browser/view/PieMenu;->mOpenItem:Lme/android/browser/view/PieItem;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lme/android/browser/view/PieMenu;->mCurrentItem:Lme/android/browser/view/PieItem;

    invoke-virtual {v0}, Lme/android/browser/view/PieItem;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lme/android/browser/view/PieMenu;->mCurrentItem:Lme/android/browser/view/PieItem;

    invoke-direct {p0, v0}, Lme/android/browser/view/PieMenu;->openSub(Lme/android/browser/view/PieItem;)V

    .line 476
    iput-object p1, p0, Lme/android/browser/view/PieMenu;->mOpenItem:Lme/android/browser/view/PieItem;

    .line 482
    :cond_1
    :goto_0
    return-void

    .line 479
    :cond_2
    iput-object v2, p0, Lme/android/browser/view/PieMenu;->mCurrentItem:Lme/android/browser/view/PieItem;

    goto :goto_0
.end method

.method private onTheLeft()Z
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lme/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lme/android/browser/view/PieMenu;->mSlop:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openSub(Lme/android/browser/view/PieItem;)V
    .locals 1
    .param p1, "item"    # Lme/android/browser/view/PieItem;

    .prologue
    .line 529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/android/browser/view/PieMenu;->mAnimating:Z

    .line 530
    new-instance v0, Lme/android/browser/view/PieMenu$4;

    invoke-direct {v0, p0, p1}, Lme/android/browser/view/PieMenu$4;-><init>(Lme/android/browser/view/PieMenu;Lme/android/browser/view/PieItem;)V

    invoke-direct {p0, p1, v0}, Lme/android/browser/view/PieMenu;->animateOut(Lme/android/browser/view/PieItem;Landroid/animation/Animator$AnimatorListener;)V

    .line 556
    return-void
.end method

.method private setCenter(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 233
    iget v0, p0, Lme/android/browser/view/PieMenu;->mSlop:I

    if-ge p1, v0, :cond_0

    .line 234
    iget-object v0, p0, Lme/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 238
    :goto_0
    iget-object v0, p0, Lme/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 239
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lme/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    invoke-virtual {p0}, Lme/android/browser/view/PieMenu;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method private show(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 195
    iput-boolean p1, p0, Lme/android/browser/view/PieMenu;->mOpen:Z

    .line 196
    iget-boolean v1, p0, Lme/android/browser/view/PieMenu;->mOpen:Z

    if-eqz v1, :cond_1

    .line 198
    iput-boolean v3, p0, Lme/android/browser/view/PieMenu;->mAnimating:Z

    .line 199
    iput-object v2, p0, Lme/android/browser/view/PieMenu;->mCurrentItem:Lme/android/browser/view/PieItem;

    .line 200
    iput-object v2, p0, Lme/android/browser/view/PieMenu;->mOpenItem:Lme/android/browser/view/PieItem;

    .line 201
    iput-object v2, p0, Lme/android/browser/view/PieMenu;->mPieView:Lme/android/browser/view/PieMenu$PieView;

    .line 202
    iget-object v1, p0, Lme/android/browser/view/PieMenu;->mController:Lme/android/browser/view/PieMenu$PieController;

    invoke-interface {v1}, Lme/android/browser/view/PieMenu$PieController;->stopEditingUrl()V

    .line 203
    iget-object v1, p0, Lme/android/browser/view/PieMenu;->mItems:Ljava/util/List;

    iput-object v1, p0, Lme/android/browser/view/PieMenu;->mCurrentItems:Ljava/util/List;

    .line 204
    iget-object v1, p0, Lme/android/browser/view/PieMenu;->mCurrentItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 207
    iget-object v1, p0, Lme/android/browser/view/PieMenu;->mController:Lme/android/browser/view/PieMenu$PieController;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lme/android/browser/view/PieMenu;->mController:Lme/android/browser/view/PieMenu$PieController;

    invoke-interface {v1}, Lme/android/browser/view/PieMenu$PieController;->onOpen()Z

    .line 210
    :cond_0
    invoke-direct {p0}, Lme/android/browser/view/PieMenu;->layoutPie()V

    .line 211
    invoke-direct {p0}, Lme/android/browser/view/PieMenu;->animateOpen()V

    .line 213
    :cond_1
    invoke-virtual {p0}, Lme/android/browser/view/PieMenu;->invalidate()V

    .line 214
    return-void

    .line 204
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/android/browser/view/PieItem;

    .line 205
    .local v0, "item":Lme/android/browser/view/PieItem;
    invoke-virtual {v0, v3}, Lme/android/browser/view/PieItem;->setSelected(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addItem(Lme/android/browser/view/PieItem;)V
    .locals 3
    .param p1, "item"    # Lme/android/browser/view/PieItem;

    .prologue
    .line 172
    iget-object v1, p0, Lme/android/browser/view/PieMenu;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {p1}, Lme/android/browser/view/PieItem;->getLevel()I

    move-result v0

    .line 174
    .local v0, "l":I
    iget v1, p0, Lme/android/browser/view/PieMenu;->mLevels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lme/android/browser/view/PieMenu;->mLevels:I

    .line 175
    iget-object v1, p0, Lme/android/browser/view/PieMenu;->mCounts:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 176
    return-void
.end method

.method public clearItems()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lme/android/browser/view/PieMenu;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 184
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 294
    iget-boolean v7, p0, Lme/android/browser/view/PieMenu;->mOpen:Z

    if-eqz v7, :cond_5

    .line 296
    iget-boolean v7, p0, Lme/android/browser/view/PieMenu;->mUseBackground:Z

    if-eqz v7, :cond_1

    .line 297
    iget-object v7, p0, Lme/android/browser/view/PieMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 298
    .local v6, "w":I
    iget-object v7, p0, Lme/android/browser/view/PieMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 299
    .local v0, "h":I
    iget-object v7, p0, Lme/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int v3, v7, v6

    .line 300
    .local v3, "left":I
    iget-object v7, p0, Lme/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    div-int/lit8 v8, v0, 0x2

    sub-int v5, v7, v8

    .line 301
    .local v5, "top":I
    iget-object v7, p0, Lme/android/browser/view/PieMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    add-int v8, v3, v6

    add-int v9, v5, v0

    invoke-virtual {v7, v3, v5, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 302
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 303
    .local v4, "state":I
    invoke-direct {p0}, Lme/android/browser/view/PieMenu;->onTheLeft()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 304
    const/high16 v7, -0x40800000

    const/high16 v8, 0x3f800000

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 306
    :cond_0
    iget-object v7, p0, Lme/android/browser/view/PieMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 307
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 310
    .end local v0    # "h":I
    .end local v3    # "left":I
    .end local v4    # "state":I
    .end local v5    # "top":I
    .end local v6    # "w":I
    :cond_1
    iget-object v2, p0, Lme/android/browser/view/PieMenu;->mCurrentItem:Lme/android/browser/view/PieItem;

    .line 311
    .local v2, "last":Lme/android/browser/view/PieItem;
    iget-object v7, p0, Lme/android/browser/view/PieMenu;->mOpenItem:Lme/android/browser/view/PieItem;

    if-eqz v7, :cond_2

    .line 312
    iget-object v2, p0, Lme/android/browser/view/PieMenu;->mOpenItem:Lme/android/browser/view/PieItem;

    .line 314
    :cond_2
    iget-object v7, p0, Lme/android/browser/view/PieMenu;->mCurrentItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6

    .line 319
    if-eqz v2, :cond_4

    .line 320
    invoke-direct {p0, p1, v2}, Lme/android/browser/view/PieMenu;->drawItem(Landroid/graphics/Canvas;Lme/android/browser/view/PieItem;)V

    .line 322
    :cond_4
    iget-object v7, p0, Lme/android/browser/view/PieMenu;->mPieView:Lme/android/browser/view/PieMenu$PieView;

    if-eqz v7, :cond_5

    .line 323
    iget-object v7, p0, Lme/android/browser/view/PieMenu;->mPieView:Lme/android/browser/view/PieMenu$PieView;

    invoke-interface {v7, p1}, Lme/android/browser/view/PieMenu$PieView;->draw(Landroid/graphics/Canvas;)V

    .line 326
    .end local v2    # "last":Lme/android/browser/view/PieItem;
    :cond_5
    return-void

    .line 314
    .restart local v2    # "last":Lme/android/browser/view/PieItem;
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/android/browser/view/PieItem;

    .line 315
    .local v1, "item":Lme/android/browser/view/PieItem;
    if-eq v1, v2, :cond_3

    .line 316
    invoke-direct {p0, p1, v1}, Lme/android/browser/view/PieMenu;->drawItem(Landroid/graphics/Canvas;Lme/android/browser/view/PieItem;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "evt"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 369
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 370
    .local v7, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 371
    .local v8, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 372
    .local v0, "action":I
    if-nez v0, :cond_2

    .line 373
    invoke-virtual {p0}, Lme/android/browser/view/PieMenu;->getWidth()I

    move-result v11

    iget v12, p0, Lme/android/browser/view/PieMenu;->mSlop:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    cmpl-float v11, v7, v11

    if-gtz v11, :cond_0

    iget v11, p0, Lme/android/browser/view/PieMenu;->mSlop:I

    int-to-float v11, v11

    cmpg-float v11, v7, v11

    if-gez v11, :cond_1

    .line 374
    :cond_0
    float-to-int v10, v7

    float-to-int v11, v8

    invoke-direct {p0, v10, v11}, Lme/android/browser/view/PieMenu;->setCenter(II)V

    .line 375
    invoke-direct {p0, v9}, Lme/android/browser/view/PieMenu;->show(Z)V

    move v10, v9

    .line 451
    :cond_1
    :goto_0
    return v10

    .line 378
    :cond_2
    if-ne v9, v0, :cond_7

    .line 379
    iget-boolean v11, p0, Lme/android/browser/view/PieMenu;->mOpen:Z

    if-eqz v11, :cond_1

    .line 380
    const/4 v3, 0x0

    .line 381
    .local v3, "handled":Z
    iget-object v11, p0, Lme/android/browser/view/PieMenu;->mPieView:Lme/android/browser/view/PieMenu$PieView;

    if-eqz v11, :cond_3

    .line 382
    iget-object v11, p0, Lme/android/browser/view/PieMenu;->mPieView:Lme/android/browser/view/PieMenu$PieView;

    invoke-interface {v11, p1}, Lme/android/browser/view/PieMenu$PieView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 384
    :cond_3
    iget-object v4, p0, Lme/android/browser/view/PieMenu;->mCurrentItem:Lme/android/browser/view/PieItem;

    .line 385
    .local v4, "item":Lme/android/browser/view/PieItem;
    iget-boolean v11, p0, Lme/android/browser/view/PieMenu;->mAnimating:Z

    if-nez v11, :cond_4

    .line 386
    invoke-direct {p0}, Lme/android/browser/view/PieMenu;->deselect()V

    .line 388
    :cond_4
    invoke-direct {p0, v10}, Lme/android/browser/view/PieMenu;->show(Z)V

    .line 389
    if-nez v3, :cond_6

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 390
    iget-object v10, p0, Lme/android/browser/view/PieMenu;->mOpenItem:Lme/android/browser/view/PieItem;

    if-eq v4, v10, :cond_5

    iget-boolean v10, p0, Lme/android/browser/view/PieMenu;->mAnimating:Z

    if-nez v10, :cond_6

    .line 391
    :cond_5
    invoke-virtual {v4}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->performClick()Z

    :cond_6
    move v10, v9

    .line 394
    goto :goto_0

    .line 396
    .end local v3    # "handled":Z
    .end local v4    # "item":Lme/android/browser/view/PieItem;
    :cond_7
    const/4 v9, 0x3

    if-ne v9, v0, :cond_9

    .line 397
    iget-boolean v9, p0, Lme/android/browser/view/PieMenu;->mOpen:Z

    if-eqz v9, :cond_8

    .line 398
    invoke-direct {p0, v10}, Lme/android/browser/view/PieMenu;->show(Z)V

    .line 400
    :cond_8
    iget-boolean v9, p0, Lme/android/browser/view/PieMenu;->mAnimating:Z

    if-nez v9, :cond_1

    .line 401
    invoke-direct {p0}, Lme/android/browser/view/PieMenu;->deselect()V

    .line 402
    invoke-virtual {p0}, Lme/android/browser/view/PieMenu;->invalidate()V

    goto :goto_0

    .line 405
    :cond_9
    const/4 v9, 0x2

    if-ne v9, v0, :cond_1

    .line 406
    iget-boolean v9, p0, Lme/android/browser/view/PieMenu;->mAnimating:Z

    if-nez v9, :cond_1

    .line 407
    const/4 v3, 0x0

    .line 408
    .restart local v3    # "handled":Z
    invoke-direct {p0, v7, v8}, Lme/android/browser/view/PieMenu;->getPolar(FF)Landroid/graphics/PointF;

    move-result-object v6

    .line 409
    .local v6, "polar":Landroid/graphics/PointF;
    iget v9, p0, Lme/android/browser/view/PieMenu;->mRadius:I

    iget v11, p0, Lme/android/browser/view/PieMenu;->mLevels:I

    iget v12, p0, Lme/android/browser/view/PieMenu;->mRadiusInc:I

    mul-int/2addr v11, v12

    add-int/2addr v9, v11

    add-int/lit8 v5, v9, 0x32

    .line 410
    .local v5, "maxr":I
    iget-object v9, p0, Lme/android/browser/view/PieMenu;->mPieView:Lme/android/browser/view/PieMenu$PieView;

    if-eqz v9, :cond_a

    .line 411
    iget-object v9, p0, Lme/android/browser/view/PieMenu;->mPieView:Lme/android/browser/view/PieMenu$PieView;

    invoke-interface {v9, p1}, Lme/android/browser/view/PieMenu$PieView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 413
    :cond_a
    if-eqz v3, :cond_b

    .line 414
    invoke-virtual {p0}, Lme/android/browser/view/PieMenu;->invalidate()V

    goto :goto_0

    .line 417
    :cond_b
    iget v9, v6, Landroid/graphics/PointF;->y:F

    iget v11, p0, Lme/android/browser/view/PieMenu;->mRadius:I

    int-to-float v11, v11

    cmpg-float v9, v9, v11

    if-gez v9, :cond_d

    .line 418
    iget-object v9, p0, Lme/android/browser/view/PieMenu;->mOpenItem:Lme/android/browser/view/PieItem;

    if-eqz v9, :cond_c

    .line 419
    invoke-direct {p0}, Lme/android/browser/view/PieMenu;->closeSub()V

    goto/16 :goto_0

    .line 420
    :cond_c
    iget-boolean v9, p0, Lme/android/browser/view/PieMenu;->mAnimating:Z

    if-nez v9, :cond_1

    .line 421
    invoke-direct {p0}, Lme/android/browser/view/PieMenu;->deselect()V

    .line 422
    invoke-virtual {p0}, Lme/android/browser/view/PieMenu;->invalidate()V

    goto/16 :goto_0

    .line 426
    :cond_d
    iget v9, v6, Landroid/graphics/PointF;->y:F

    int-to-float v11, v5

    cmpl-float v9, v9, v11

    if-lez v9, :cond_e

    .line 427
    invoke-direct {p0}, Lme/android/browser/view/PieMenu;->deselect()V

    .line 428
    invoke-direct {p0, v10}, Lme/android/browser/view/PieMenu;->show(Z)V

    .line 429
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->setAction(I)V

    .line 430
    invoke-virtual {p0}, Lme/android/browser/view/PieMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 431
    invoke-virtual {p0}, Lme/android/browser/view/PieMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 435
    :cond_e
    invoke-direct {p0, v6}, Lme/android/browser/view/PieMenu;->findItem(Landroid/graphics/PointF;)Lme/android/browser/view/PieItem;

    move-result-object v4

    .line 436
    .restart local v4    # "item":Lme/android/browser/view/PieItem;
    if-eqz v4, :cond_1

    .line 437
    iget-object v9, p0, Lme/android/browser/view/PieMenu;->mCurrentItem:Lme/android/browser/view/PieItem;

    if-eq v9, v4, :cond_1

    .line 438
    invoke-direct {p0, v4}, Lme/android/browser/view/PieMenu;->onEnter(Lme/android/browser/view/PieItem;)V

    .line 439
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lme/android/browser/view/PieItem;->isPieView()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {v4}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 440
    invoke-virtual {v4}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-direct {p0}, Lme/android/browser/view/PieMenu;->onTheLeft()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 441
    invoke-virtual {v4}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 440
    :goto_1
    add-int v1, v11, v9

    .line 442
    .local v1, "cx":I
    invoke-virtual {v4}, Lme/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v2

    .line 443
    .local v2, "cy":I
    invoke-virtual {v4}, Lme/android/browser/view/PieItem;->getPieView()Lme/android/browser/view/PieMenu$PieView;

    move-result-object v9

    iput-object v9, p0, Lme/android/browser/view/PieMenu;->mPieView:Lme/android/browser/view/PieMenu$PieView;

    .line 444
    iget-object v9, p0, Lme/android/browser/view/PieMenu;->mPieView:Lme/android/browser/view/PieMenu$PieView;

    .line 445
    invoke-virtual {v4}, Lme/android/browser/view/PieItem;->getStartAngle()F

    move-result v11

    invoke-virtual {v4}, Lme/android/browser/view/PieItem;->getSweep()F

    move-result v12

    add-float/2addr v11, v12

    const/high16 v12, 0x40000000

    div-float/2addr v11, v12

    .line 444
    invoke-direct {p0, v9, v1, v2, v11}, Lme/android/browser/view/PieMenu;->layoutPieView(Lme/android/browser/view/PieMenu$PieView;IIF)V

    .line 447
    .end local v1    # "cx":I
    .end local v2    # "cy":I
    :cond_f
    invoke-virtual {p0}, Lme/android/browser/view/PieMenu;->invalidate()V

    goto/16 :goto_0

    :cond_10
    move v9, v10

    .line 441
    goto :goto_1
.end method

.method public removeItem(Lme/android/browser/view/PieItem;)V
    .locals 1
    .param p1, "item"    # Lme/android/browser/view/PieItem;

    .prologue
    .line 179
    iget-object v0, p0, Lme/android/browser/view/PieMenu;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 180
    return-void
.end method

.method public setController(Lme/android/browser/view/PieMenu$PieController;)V
    .locals 0
    .param p1, "ctl"    # Lme/android/browser/view/PieMenu$PieController;

    .prologue
    .line 163
    iput-object p1, p0, Lme/android/browser/view/PieMenu;->mController:Lme/android/browser/view/PieMenu$PieController;

    .line 164
    return-void
.end method

.method public setUseBackground(Z)V
    .locals 0
    .param p1, "useBackground"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lme/android/browser/view/PieMenu;->mUseBackground:Z

    .line 168
    return-void
.end method
