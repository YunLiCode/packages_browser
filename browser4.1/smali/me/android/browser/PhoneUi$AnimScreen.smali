.class Lme/android/browser/PhoneUi$AnimScreen;
.super Ljava/lang/Object;
.source "PhoneUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/PhoneUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimScreen"
.end annotation


# instance fields
.field private mContent:Landroid/widget/ImageView;

.field private mContentBitmap:Landroid/graphics/Bitmap;

.field private mMain:Landroid/view/View;

.field private mScale:F

.field private mTitle:Landroid/widget/ImageView;

.field private mTitleBarBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040002

    .line 451
    const/4 v2, 0x0

    .line 450
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;

    .line 452
    iget-object v0, p0, Lme/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;

    const v1, 0x7f0d0007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lme/android/browser/PhoneUi$AnimScreen;->mTitle:Landroid/widget/ImageView;

    .line 453
    iget-object v0, p0, Lme/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;

    const v1, 0x7f0d000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lme/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;

    .line 454
    iget-object v0, p0, Lme/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 455
    iget-object v0, p0, Lme/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 456
    const/high16 v0, 0x3f800000

    iput v0, p0, Lme/android/browser/PhoneUi$AnimScreen;->mScale:F

    .line 457
    invoke-direct {p0}, Lme/android/browser/PhoneUi$AnimScreen;->getScaleFactor()F

    move-result v0

    invoke-direct {p0, v0}, Lme/android/browser/PhoneUi$AnimScreen;->setScaleFactor(F)V

    .line 458
    return-void
.end method

.method static synthetic access$0(Lme/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lme/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lme/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lme/android/browser/PhoneUi$AnimScreen;->mTitle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lme/android/browser/PhoneUi$AnimScreen;F)V
    .locals 0

    .prologue
    .line 512
    invoke-direct {p0, p1}, Lme/android/browser/PhoneUi$AnimScreen;->setScaleFactor(F)V

    return-void
.end method

.method static synthetic access$3(Lme/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lme/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getScaleFactor()F
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lme/android/browser/PhoneUi$AnimScreen;->mScale:F

    return v0
.end method

.method private safeCreateBitmap(II)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 499
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 500
    :cond_0
    const-string v0, "PhoneUi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "safeCreateBitmap failed! width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 501
    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 500
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v0, 0x0

    .line 504
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private setScaleFactor(F)V
    .locals 2
    .param p1, "sf"    # F

    .prologue
    .line 513
    iput p1, p0, Lme/android/browser/PhoneUi$AnimScreen;->mScale:F

    .line 514
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 515
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 516
    iget-object v1, p0, Lme/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 517
    return-void
.end method


# virtual methods
.method public set(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 508
    iget-object v0, p0, Lme/android/browser/PhoneUi$AnimScreen;->mTitle:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lme/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 510
    return-void
.end method

.method public set(Lme/android/browser/TitleBar;Landroid/webkit/WebView;)V
    .locals 8
    .param p1, "tbar"    # Lme/android/browser/TitleBar;
    .param p2, "web"    # Landroid/webkit/WebView;

    .prologue
    const/4 v7, 0x0

    .line 461
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    invoke-virtual {p1}, Lme/android/browser/TitleBar;->getWidth()I

    move-result v4

    if-lez v4, :cond_8

    invoke-virtual {p1}, Lme/android/browser/TitleBar;->getEmbeddedHeight()I

    move-result v4

    if-lez v4, :cond_8

    .line 465
    iget-object v4, p0, Lme/android/browser/PhoneUi$AnimScreen;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 466
    iget-object v4, p0, Lme/android/browser/PhoneUi$AnimScreen;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lme/android/browser/TitleBar;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 467
    iget-object v4, p0, Lme/android/browser/PhoneUi$AnimScreen;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Lme/android/browser/TitleBar;->getEmbeddedHeight()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 468
    :cond_2
    invoke-virtual {p1}, Lme/android/browser/TitleBar;->getWidth()I

    move-result v4

    .line 469
    invoke-virtual {p1}, Lme/android/browser/TitleBar;->getEmbeddedHeight()I

    move-result v5

    .line 468
    invoke-direct {p0, v4, v5}, Lme/android/browser/PhoneUi$AnimScreen;->safeCreateBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lme/android/browser/PhoneUi$AnimScreen;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    .line 471
    :cond_3
    iget-object v4, p0, Lme/android/browser/PhoneUi$AnimScreen;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    .line 472
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v4, p0, Lme/android/browser/PhoneUi$AnimScreen;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 473
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {p1, v0}, Lme/android/browser/TitleBar;->draw(Landroid/graphics/Canvas;)V

    .line 474
    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 479
    .end local v0    # "c":Landroid/graphics/Canvas;
    :cond_4
    :goto_1
    iget-object v4, p0, Lme/android/browser/PhoneUi$AnimScreen;->mTitle:Landroid/widget/ImageView;

    iget-object v5, p0, Lme/android/browser/PhoneUi$AnimScreen;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 480
    iget-object v4, p0, Lme/android/browser/PhoneUi$AnimScreen;->mTitle:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 481
    invoke-virtual {p2}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Lme/android/browser/TitleBar;->getEmbeddedHeight()I

    move-result v5

    sub-int v1, v4, v5

    .line 482
    .local v1, "h":I
    iget-object v4, p0, Lme/android/browser/PhoneUi$AnimScreen;->mContentBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    .line 483
    iget-object v4, p0, Lme/android/browser/PhoneUi$AnimScreen;->mContentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/webkit/WebView;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 484
    iget-object v4, p0, Lme/android/browser/PhoneUi$AnimScreen;->mContentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v1, :cond_6

    .line 485
    :cond_5
    invoke-virtual {p2}, Landroid/webkit/WebView;->getWidth()I

    move-result v4

    invoke-direct {p0, v4, v1}, Lme/android/browser/PhoneUi$AnimScreen;->safeCreateBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lme/android/browser/PhoneUi$AnimScreen;->mContentBitmap:Landroid/graphics/Bitmap;

    .line 487
    :cond_6
    iget-object v4, p0, Lme/android/browser/PhoneUi$AnimScreen;->mContentBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_7

    .line 488
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v4, p0, Lme/android/browser/PhoneUi$AnimScreen;->mContentBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 489
    .restart local v0    # "c":Landroid/graphics/Canvas;
    invoke-virtual {p2}, Landroid/webkit/WebView;->getScrollX()I

    move-result v2

    .line 490
    .local v2, "tx":I
    invoke-virtual {p2}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    .line 491
    .local v3, "ty":I
    neg-int v4, v2

    int-to-float v4, v4

    neg-int v5, v3

    invoke-virtual {p1}, Lme/android/browser/TitleBar;->getEmbeddedHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 492
    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    .line 493
    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 495
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v2    # "tx":I
    .end local v3    # "ty":I
    :cond_7
    iget-object v4, p0, Lme/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;

    iget-object v5, p0, Lme/android/browser/PhoneUi$AnimScreen;->mContentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 477
    .end local v1    # "h":I
    :cond_8
    iput-object v7, p0, Lme/android/browser/PhoneUi$AnimScreen;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    goto :goto_1
.end method
