.class public Lme/android/browser/TabBar;
.super Landroid/widget/LinearLayout;
.source "TabBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/android/browser/TabBar$TabView;
    }
.end annotation


# static fields
.field private static final PROGRESS_MAX:I = 0x64


# instance fields
.field private mActiveDrawable:Landroid/graphics/drawable/Drawable;

.field private final mActiveMatrix:Landroid/graphics/Matrix;

.field private mActiveShader:Landroid/graphics/BitmapShader;

.field private final mActiveShaderPaint:Landroid/graphics/Paint;

.field private mActivity:Landroid/app/Activity;

.field private mAddTabOverlap:I

.field private mButtonWidth:I

.field private mCurrentTextureHeight:I

.field private mCurrentTextureWidth:I

.field private final mFocusPaint:Landroid/graphics/Paint;

.field private mInactiveDrawable:Landroid/graphics/drawable/Drawable;

.field private final mInactiveMatrix:Landroid/graphics/Matrix;

.field private mInactiveShader:Landroid/graphics/BitmapShader;

.field private final mInactiveShaderPaint:Landroid/graphics/Paint;

.field private mNewTab:Landroid/widget/ImageButton;

.field private mTabControl:Lme/android/browser/TabControl;

.field private mTabMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lme/android/browser/Tab;",
            "Lme/android/browser/TabBar$TabView;",
            ">;"
        }
    .end annotation
.end field

.field private mTabOverlap:I

.field private mTabSliceWidth:I

.field private mTabWidth:I

.field private mTabs:Lme/android/browser/TabScrollView;

.field private mUi:Lme/android/browser/XLargeUi;

.field private mUiController:Lme/android/browser/UiController;

.field private mUseQuickControls:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lme/android/browser/UiController;Lme/android/browser/XLargeUi;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "controller"    # Lme/android/browser/UiController;
    .param p3, "ui"    # Lme/android/browser/XLargeUi;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69
    iput v3, p0, Lme/android/browser/TabBar;->mCurrentTextureWidth:I

    .line 70
    iput v3, p0, Lme/android/browser/TabBar;->mCurrentTextureHeight:I

    .line 75
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lme/android/browser/TabBar;->mActiveShaderPaint:Landroid/graphics/Paint;

    .line 76
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lme/android/browser/TabBar;->mInactiveShaderPaint:Landroid/graphics/Paint;

    .line 77
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lme/android/browser/TabBar;->mFocusPaint:Landroid/graphics/Paint;

    .line 78
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lme/android/browser/TabBar;->mActiveMatrix:Landroid/graphics/Matrix;

    .line 79
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lme/android/browser/TabBar;->mInactiveMatrix:Landroid/graphics/Matrix;

    .line 91
    iput-object p1, p0, Lme/android/browser/TabBar;->mActivity:Landroid/app/Activity;

    .line 92
    iput-object p2, p0, Lme/android/browser/TabBar;->mUiController:Lme/android/browser/UiController;

    .line 93
    iget-object v2, p0, Lme/android/browser/TabBar;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v2}, Lme/android/browser/UiController;->getTabControl()Lme/android/browser/TabControl;

    move-result-object v2

    iput-object v2, p0, Lme/android/browser/TabBar;->mTabControl:Lme/android/browser/TabControl;

    .line 94
    iput-object p3, p0, Lme/android/browser/TabBar;->mUi:Lme/android/browser/XLargeUi;

    .line 95
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 96
    .local v1, "res":Landroid/content/res/Resources;
    const/high16 v2, 0x7f0c0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lme/android/browser/TabBar;->mTabWidth:I

    .line 97
    const v2, 0x7f020004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lme/android/browser/TabBar;->mActiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 98
    const v2, 0x7f020012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lme/android/browser/TabBar;->mInactiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 100
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lme/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 102
    .local v0, "factory":Landroid/view/LayoutInflater;
    const v2, 0x7f04002f

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 103
    const v2, 0x7f0c001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v3, v2, v3, v3}, Lme/android/browser/TabBar;->setPadding(IIII)V

    .line 104
    const v2, 0x7f0d0070

    invoke-virtual {p0, v2}, Lme/android/browser/TabBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lme/android/browser/TabScrollView;

    iput-object v2, p0, Lme/android/browser/TabBar;->mTabs:Lme/android/browser/TabScrollView;

    .line 105
    const v2, 0x7f0d0057

    invoke-virtual {p0, v2}, Lme/android/browser/TabBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lme/android/browser/TabBar;->mNewTab:Landroid/widget/ImageButton;

    .line 106
    iget-object v2, p0, Lme/android/browser/TabBar;->mNewTab:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v2, p0, Lme/android/browser/TabBar;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v2}, Lme/android/browser/UiController;->getTabs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lme/android/browser/TabBar;->updateTabs(Ljava/util/List;)V

    .line 109
    const/4 v2, -0x1

    iput v2, p0, Lme/android/browser/TabBar;->mButtonWidth:I

    .line 111
    const v2, 0x7f0c0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lme/android/browser/TabBar;->mTabOverlap:I

    .line 112
    const v2, 0x7f0c0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lme/android/browser/TabBar;->mAddTabOverlap:I

    .line 113
    const v2, 0x7f0c0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lme/android/browser/TabBar;->mTabSliceWidth:I

    .line 115
    iget-object v2, p0, Lme/android/browser/TabBar;->mActiveShaderPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    iget-object v2, p0, Lme/android/browser/TabBar;->mActiveShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    iget-object v2, p0, Lme/android/browser/TabBar;->mInactiveShaderPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    iget-object v2, p0, Lme/android/browser/TabBar;->mInactiveShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    iget-object v2, p0, Lme/android/browser/TabBar;->mFocusPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    iget-object v2, p0, Lme/android/browser/TabBar;->mFocusPaint:Landroid/graphics/Paint;

    const v3, 0x7f0c0005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    iget-object v2, p0, Lme/android/browser/TabBar;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    iget-object v2, p0, Lme/android/browser/TabBar;->mFocusPaint:Landroid/graphics/Paint;

    const v3, 0x7f0b0009

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    return-void
.end method

.method static synthetic access$0(Lme/android/browser/TabBar;)I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lme/android/browser/TabBar;->mTabOverlap:I

    return v0
.end method

.method static synthetic access$1(Lme/android/browser/TabBar;)I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lme/android/browser/TabBar;->mTabSliceWidth:I

    return v0
.end method

.method static synthetic access$10(Lme/android/browser/TabBar;I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lme/android/browser/TabBar;->mCurrentTextureHeight:I

    return-void
.end method

.method static synthetic access$11(Lme/android/browser/TabBar;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lme/android/browser/TabBar;->mActiveDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$12(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 230
    invoke-static {p0, p1, p2}, Lme/android/browser/TabBar;->getDrawableAsBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13(Lme/android/browser/TabBar;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lme/android/browser/TabBar;->mInactiveDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$14(Lme/android/browser/TabBar;Landroid/graphics/BitmapShader;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lme/android/browser/TabBar;->mActiveShader:Landroid/graphics/BitmapShader;

    return-void
.end method

.method static synthetic access$15(Lme/android/browser/TabBar;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lme/android/browser/TabBar;->mActiveShaderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$16(Lme/android/browser/TabBar;)Landroid/graphics/BitmapShader;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lme/android/browser/TabBar;->mActiveShader:Landroid/graphics/BitmapShader;

    return-object v0
.end method

.method static synthetic access$17(Lme/android/browser/TabBar;Landroid/graphics/BitmapShader;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lme/android/browser/TabBar;->mInactiveShader:Landroid/graphics/BitmapShader;

    return-void
.end method

.method static synthetic access$18(Lme/android/browser/TabBar;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lme/android/browser/TabBar;->mInactiveShaderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$19(Lme/android/browser/TabBar;)Landroid/graphics/BitmapShader;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lme/android/browser/TabBar;->mInactiveShader:Landroid/graphics/BitmapShader;

    return-object v0
.end method

.method static synthetic access$2(Lme/android/browser/TabBar;)Lme/android/browser/XLargeUi;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lme/android/browser/TabBar;->mUi:Lme/android/browser/XLargeUi;

    return-object v0
.end method

.method static synthetic access$20(Lme/android/browser/TabBar;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lme/android/browser/TabBar;->mActiveMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$21(Lme/android/browser/TabBar;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lme/android/browser/TabBar;->mInactiveMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$22(Lme/android/browser/TabBar;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lme/android/browser/TabBar;->mFocusPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$23(Lme/android/browser/TabBar;)Lme/android/browser/TabScrollView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lme/android/browser/TabBar;->mTabs:Lme/android/browser/TabScrollView;

    return-object v0
.end method

.method static synthetic access$24(Lme/android/browser/TabBar;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lme/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3(Lme/android/browser/TabBar;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lme/android/browser/TabBar;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4(Lme/android/browser/TabBar;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lme/android/browser/TabBar;->mTabWidth:I

    return v0
.end method

.method static synthetic access$5(Lme/android/browser/TabBar;)Lme/android/browser/TabControl;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lme/android/browser/TabBar;->mTabControl:Lme/android/browser/TabControl;

    return-object v0
.end method

.method static synthetic access$6(Lme/android/browser/TabBar;)Lme/android/browser/UiController;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lme/android/browser/TabBar;->mUiController:Lme/android/browser/UiController;

    return-object v0
.end method

.method static synthetic access$7(Lme/android/browser/TabBar;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lme/android/browser/TabBar;->mCurrentTextureWidth:I

    return v0
.end method

.method static synthetic access$8(Lme/android/browser/TabBar;)I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lme/android/browser/TabBar;->mCurrentTextureHeight:I

    return v0
.end method

.method static synthetic access$9(Lme/android/browser/TabBar;I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lme/android/browser/TabBar;->mCurrentTextureWidth:I

    return-void
.end method

.method private animateTabIn(Lme/android/browser/Tab;Lme/android/browser/TabBar$TabView;)V
    .locals 3
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "tv"    # Lme/android/browser/TabBar$TabView;

    .prologue
    .line 460
    const-string v1, "scaleX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 461
    .local v0, "scalex":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 462
    new-instance v1, Lme/android/browser/TabBar$2;

    invoke-direct {v1, p0, p1, p2}, Lme/android/browser/TabBar$2;-><init>(Lme/android/browser/TabBar;Lme/android/browser/Tab;Lme/android/browser/TabBar$TabView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 483
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 484
    return-void

    .line 460
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method private animateTabOut(Lme/android/browser/Tab;Lme/android/browser/TabBar$TabView;)V
    .locals 7
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "tv"    # Lme/android/browser/TabBar$TabView;

    .prologue
    const/4 v6, 0x2

    .line 428
    const-string v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {p2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 429
    .local v2, "scalex":Landroid/animation/ObjectAnimator;
    const-string v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {p2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 430
    .local v3, "scaley":Landroid/animation/ObjectAnimator;
    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {p2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 431
    .local v0, "alpha":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 432
    .local v1, "animator":Landroid/animation/AnimatorSet;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    aput-object v0, v4, v6

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 433
    const-wide/16 v4, 0x96

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 434
    new-instance v4, Lme/android/browser/TabBar$1;

    invoke-direct {v4, p0, p2, p1}, Lme/android/browser/TabBar$1;-><init>(Lme/android/browser/TabBar;Lme/android/browser/TabBar$TabView;Lme/android/browser/Tab;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 456
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 457
    return-void

    .line 428
    :array_0
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    .line 429
    :array_1
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    .line 430
    :array_2
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method

.method private buildTabView(Lme/android/browser/Tab;)Lme/android/browser/TabBar$TabView;
    .locals 2
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 224
    new-instance v0, Lme/android/browser/TabBar$TabView;

    iget-object v1, p0, Lme/android/browser/TabBar;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1, p1}, Lme/android/browser/TabBar$TabView;-><init>(Lme/android/browser/TabBar;Landroid/content/Context;Lme/android/browser/Tab;)V

    .line 225
    .local v0, "tabview":Lme/android/browser/TabBar$TabView;
    iget-object v1, p0, Lme/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-virtual {v0, p0}, Lme/android/browser/TabBar$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    return-object v0
.end method

.method private static getDrawableAsBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 231
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 232
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 233
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {p0, v3, v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 234
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 235
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 236
    return-object v0
.end method

.method private isLoading()Z
    .locals 2

    .prologue
    .line 526
    iget-object v1, p0, Lme/android/browser/TabBar;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1}, Lme/android/browser/TabControl;->getCurrentTab()Lme/android/browser/Tab;

    move-result-object v0

    .line 527
    .local v0, "tab":Lme/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {v0}, Lme/android/browser/Tab;->inPageLoad()Z

    move-result v1

    .line 530
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showUrlBar()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lme/android/browser/TabBar;->mUi:Lme/android/browser/XLargeUi;

    invoke-virtual {v0}, Lme/android/browser/XLargeUi;->stopWebViewScrolling()V

    .line 220
    iget-object v0, p0, Lme/android/browser/TabBar;->mUi:Lme/android/browser/XLargeUi;

    invoke-virtual {v0}, Lme/android/browser/XLargeUi;->showTitleBar()V

    .line 221
    return-void
.end method


# virtual methods
.method getTabCount()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lme/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 191
    iget-object v2, p0, Lme/android/browser/TabBar;->mNewTab:Landroid/widget/ImageButton;

    if-ne v2, p1, :cond_1

    .line 192
    iget-object v2, p0, Lme/android/browser/TabBar;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v2}, Lme/android/browser/UiController;->openTabToHomePage()Lme/android/browser/Tab;

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v2, p0, Lme/android/browser/TabBar;->mTabs:Lme/android/browser/TabScrollView;

    invoke-virtual {v2}, Lme/android/browser/TabScrollView;->getSelectedTab()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_5

    .line 194
    iget-boolean v2, p0, Lme/android/browser/TabBar;->mUseQuickControls:Z

    if-eqz v2, :cond_3

    .line 195
    iget-object v2, p0, Lme/android/browser/TabBar;->mUi:Lme/android/browser/XLargeUi;

    invoke-virtual {v2}, Lme/android/browser/XLargeUi;->isTitleBarShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lme/android/browser/TabBar;->isLoading()Z

    move-result v2

    if-nez v2, :cond_2

    .line 196
    iget-object v2, p0, Lme/android/browser/TabBar;->mUi:Lme/android/browser/XLargeUi;

    invoke-virtual {v2}, Lme/android/browser/XLargeUi;->stopEditingUrl()V

    .line 197
    iget-object v2, p0, Lme/android/browser/TabBar;->mUi:Lme/android/browser/XLargeUi;

    invoke-virtual {v2}, Lme/android/browser/XLargeUi;->hideTitleBar()V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v2, p0, Lme/android/browser/TabBar;->mUi:Lme/android/browser/XLargeUi;

    invoke-virtual {v2}, Lme/android/browser/XLargeUi;->stopWebViewScrolling()V

    .line 200
    iget-object v2, p0, Lme/android/browser/TabBar;->mUi:Lme/android/browser/XLargeUi;

    invoke-virtual {v2, v3, v3}, Lme/android/browser/XLargeUi;->editUrl(ZZ)V

    goto :goto_0

    .line 202
    :cond_3
    iget-object v2, p0, Lme/android/browser/TabBar;->mUi:Lme/android/browser/XLargeUi;

    invoke-virtual {v2}, Lme/android/browser/XLargeUi;->isTitleBarShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lme/android/browser/TabBar;->isLoading()Z

    move-result v2

    if-nez v2, :cond_4

    .line 203
    iget-object v2, p0, Lme/android/browser/TabBar;->mUi:Lme/android/browser/XLargeUi;

    invoke-virtual {v2}, Lme/android/browser/XLargeUi;->stopEditingUrl()V

    .line 204
    iget-object v2, p0, Lme/android/browser/TabBar;->mUi:Lme/android/browser/XLargeUi;

    invoke-virtual {v2}, Lme/android/browser/XLargeUi;->hideTitleBar()V

    goto :goto_0

    .line 206
    :cond_4
    invoke-direct {p0}, Lme/android/browser/TabBar;->showUrlBar()V

    goto :goto_0

    .line 208
    :cond_5
    instance-of v2, p1, Lme/android/browser/TabBar$TabView;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 209
    check-cast v2, Lme/android/browser/TabBar$TabView;

    iget-object v1, v2, Lme/android/browser/TabBar$TabView;->mTab:Lme/android/browser/Tab;

    .line 210
    .local v1, "tab":Lme/android/browser/Tab;
    iget-object v2, p0, Lme/android/browser/TabBar;->mTabs:Lme/android/browser/TabScrollView;

    invoke-virtual {v2, p1}, Lme/android/browser/TabScrollView;->getChildIndex(Landroid/view/View;)I

    move-result v0

    .line 211
    .local v0, "ix":I
    if-ltz v0, :cond_0

    .line 212
    iget-object v2, p0, Lme/android/browser/TabBar;->mTabs:Lme/android/browser/TabScrollView;

    invoke-virtual {v2, v0}, Lme/android/browser/TabScrollView;->setSelectedTab(I)V

    .line 213
    iget-object v2, p0, Lme/android/browser/TabBar;->mUiController:Lme/android/browser/UiController;

    invoke-interface {v2, v1}, Lme/android/browser/UiController;->switchToTab(Lme/android/browser/Tab;)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    iget-object v1, p0, Lme/android/browser/TabBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 131
    .local v0, "res":Landroid/content/res/Resources;
    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lme/android/browser/TabBar;->mTabWidth:I

    .line 133
    iget-object v1, p0, Lme/android/browser/TabBar;->mTabs:Lme/android/browser/TabScrollView;

    invoke-virtual {v1}, Lme/android/browser/TabScrollView;->updateLayout()V

    .line 134
    return-void
.end method

.method public onFavicon(Lme/android/browser/Tab;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 493
    iget-object v1, p0, Lme/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/android/browser/TabBar$TabView;

    .line 494
    .local v0, "tv":Lme/android/browser/TabBar$TabView;
    if-eqz v0, :cond_0

    .line 495
    iget-object v1, p0, Lme/android/browser/TabBar;->mUi:Lme/android/browser/XLargeUi;

    invoke-virtual {v1, p2}, Lme/android/browser/XLargeUi;->getFaviconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/android/browser/TabBar$TabView;->setFavicon(Landroid/graphics/drawable/Drawable;)V

    .line 497
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 170
    invoke-virtual {p0}, Lme/android/browser/TabBar;->getPaddingLeft()I

    move-result v0

    .line 171
    .local v0, "pl":I
    invoke-virtual {p0}, Lme/android/browser/TabBar;->getPaddingTop()I

    move-result v1

    .line 172
    .local v1, "pt":I
    iget-object v4, p0, Lme/android/browser/TabBar;->mTabs:Lme/android/browser/TabScrollView;

    invoke-virtual {v4}, Lme/android/browser/TabScrollView;->getMeasuredWidth()I

    move-result v2

    .line 173
    .local v2, "sw":I
    sub-int v4, p4, p2

    sub-int v3, v4, v0

    .line 174
    .local v3, "w":I
    iget-boolean v4, p0, Lme/android/browser/TabBar;->mUseQuickControls:Z

    if-eqz v4, :cond_2

    .line 175
    const/4 v4, 0x0

    iput v4, p0, Lme/android/browser/TabBar;->mButtonWidth:I

    .line 182
    :cond_0
    :goto_0
    iget-object v4, p0, Lme/android/browser/TabBar;->mTabs:Lme/android/browser/TabScrollView;

    add-int v5, v0, v2

    sub-int v6, p5, p3

    invoke-virtual {v4, v0, v1, v5, v6}, Lme/android/browser/TabScrollView;->layout(IIII)V

    .line 184
    iget-boolean v4, p0, Lme/android/browser/TabBar;->mUseQuickControls:Z

    if-nez v4, :cond_1

    .line 185
    iget-object v4, p0, Lme/android/browser/TabBar;->mNewTab:Landroid/widget/ImageButton;

    add-int v5, v0, v2

    iget v6, p0, Lme/android/browser/TabBar;->mAddTabOverlap:I

    sub-int/2addr v5, v6

    .line 186
    add-int v6, v0, v2

    iget v7, p0, Lme/android/browser/TabBar;->mButtonWidth:I

    add-int/2addr v6, v7

    iget v7, p0, Lme/android/browser/TabBar;->mAddTabOverlap:I

    sub-int/2addr v6, v7

    sub-int v7, p5, p3

    .line 185
    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 188
    :cond_1
    return-void

    .line 177
    :cond_2
    iget-object v4, p0, Lme/android/browser/TabBar;->mNewTab:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lme/android/browser/TabBar;->mAddTabOverlap:I

    sub-int/2addr v4, v5

    iput v4, p0, Lme/android/browser/TabBar;->mButtonWidth:I

    .line 178
    sub-int v4, v3, v2

    iget v5, p0, Lme/android/browser/TabBar;->mButtonWidth:I

    if-ge v4, v5, :cond_0

    .line 179
    iget v4, p0, Lme/android/browser/TabBar;->mButtonWidth:I

    sub-int v2, v3, v4

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "hspec"    # I
    .param p2, "vspec"    # I

    .prologue
    .line 158
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 159
    invoke-virtual {p0}, Lme/android/browser/TabBar;->getMeasuredWidth()I

    move-result v0

    .line 161
    .local v0, "w":I
    iget-boolean v1, p0, Lme/android/browser/TabBar;->mUseQuickControls:Z

    if-nez v1, :cond_0

    .line 162
    iget v1, p0, Lme/android/browser/TabBar;->mAddTabOverlap:I

    sub-int/2addr v0, v1

    .line 164
    :cond_0
    invoke-virtual {p0}, Lme/android/browser/TabBar;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lme/android/browser/TabBar;->setMeasuredDimension(II)V

    .line 165
    return-void
.end method

.method public onNewTab(Lme/android/browser/Tab;)V
    .locals 1
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 500
    invoke-direct {p0, p1}, Lme/android/browser/TabBar;->buildTabView(Lme/android/browser/Tab;)Lme/android/browser/TabBar$TabView;

    move-result-object v0

    .line 501
    .local v0, "tv":Lme/android/browser/TabBar$TabView;
    invoke-direct {p0, p1, v0}, Lme/android/browser/TabBar;->animateTabIn(Lme/android/browser/Tab;Lme/android/browser/TabBar$TabView;)V

    .line 502
    return-void
.end method

.method public onRemoveTab(Lme/android/browser/Tab;)V
    .locals 2
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 505
    iget-object v1, p0, Lme/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/android/browser/TabBar$TabView;

    .line 506
    .local v0, "tv":Lme/android/browser/TabBar$TabView;
    if-eqz v0, :cond_0

    .line 507
    invoke-direct {p0, p1, v0}, Lme/android/browser/TabBar;->animateTabOut(Lme/android/browser/Tab;Lme/android/browser/TabBar$TabView;)V

    .line 511
    :goto_0
    return-void

    .line 509
    :cond_0
    iget-object v1, p0, Lme/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onSetActiveTab(Lme/android/browser/Tab;)V
    .locals 2
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 489
    iget-object v0, p0, Lme/android/browser/TabBar;->mTabs:Lme/android/browser/TabScrollView;

    iget-object v1, p0, Lme/android/browser/TabBar;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v1, p1}, Lme/android/browser/TabControl;->getTabPosition(Lme/android/browser/Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Lme/android/browser/TabScrollView;->setSelectedTab(I)V

    .line 490
    return-void
.end method

.method public onUrlAndTitle(Lme/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 514
    iget-object v1, p0, Lme/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/android/browser/TabBar$TabView;

    .line 515
    .local v0, "tv":Lme/android/browser/TabBar$TabView;
    if-eqz v0, :cond_1

    .line 516
    if-eqz p3, :cond_2

    .line 517
    invoke-virtual {v0, p3}, Lme/android/browser/TabBar$TabView;->setDisplayTitle(Ljava/lang/String;)V

    .line 521
    :cond_0
    :goto_0
    # invokes: Lme/android/browser/TabBar$TabView;->updateTabIcons()V
    invoke-static {v0}, Lme/android/browser/TabBar$TabView;->access$0(Lme/android/browser/TabBar$TabView;)V

    .line 523
    :cond_1
    return-void

    .line 518
    :cond_2
    if-eqz p2, :cond_0

    .line 519
    invoke-static {p2}, Lme/android/browser/UrlUtils;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/android/browser/TabBar$TabView;->setDisplayTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setUseQuickControls(Z)V
    .locals 2
    .param p1, "useQuickControls"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lme/android/browser/TabBar;->mUseQuickControls:Z

    .line 138
    iget-object v1, p0, Lme/android/browser/TabBar;->mNewTab:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lme/android/browser/TabBar;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 140
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateTabs(Ljava/util/List;)V
    .locals 4
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
    .line 147
    .local p1, "tabs":Ljava/util/List;, "Ljava/util/List<Lme/android/browser/Tab;>;"
    iget-object v2, p0, Lme/android/browser/TabBar;->mTabs:Lme/android/browser/TabScrollView;

    invoke-virtual {v2}, Lme/android/browser/TabScrollView;->clearTabs()V

    .line 148
    iget-object v2, p0, Lme/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 149
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 153
    iget-object v2, p0, Lme/android/browser/TabBar;->mTabs:Lme/android/browser/TabScrollView;

    iget-object v3, p0, Lme/android/browser/TabBar;->mTabControl:Lme/android/browser/TabControl;

    invoke-virtual {v3}, Lme/android/browser/TabControl;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lme/android/browser/TabScrollView;->setSelectedTab(I)V

    .line 154
    return-void

    .line 149
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/android/browser/Tab;

    .line 150
    .local v0, "tab":Lme/android/browser/Tab;
    invoke-direct {p0, v0}, Lme/android/browser/TabBar;->buildTabView(Lme/android/browser/Tab;)Lme/android/browser/TabBar$TabView;

    move-result-object v1

    .line 151
    .local v1, "tv":Lme/android/browser/TabBar$TabView;
    iget-object v3, p0, Lme/android/browser/TabBar;->mTabs:Lme/android/browser/TabScrollView;

    invoke-virtual {v3, v1}, Lme/android/browser/TabScrollView;->addTab(Landroid/view/View;)V

    goto :goto_0
.end method
