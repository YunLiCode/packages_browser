.class public Lme/android/browser/view/SnapshotGridView;
.super Landroid/widget/GridView;
.source "SnapshotGridView.java"


# static fields
.field private static final MAX_COLUMNS:I = 0x5


# instance fields
.field private mColWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 42
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 43
    .local v2, "widthSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 44
    .local v1, "widthMode":I
    if-lez v2, :cond_0

    iget v3, p0, Lme/android/browser/view/SnapshotGridView;->mColWidth:I

    if-lez v3, :cond_0

    .line 45
    iget v3, p0, Lme/android/browser/view/SnapshotGridView;->mColWidth:I

    div-int v0, v2, v3

    .line 47
    .local v0, "numCols":I
    const/4 v3, 0x5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Lme/android/browser/view/SnapshotGridView;->mColWidth:I

    mul-int/2addr v3, v4

    .line 46
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 49
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 51
    .end local v0    # "numCols":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 52
    return-void
.end method

.method public setColumnWidth(I)V
    .locals 0
    .param p1, "columnWidth"    # I

    .prologue
    .line 56
    iput p1, p0, Lme/android/browser/view/SnapshotGridView;->mColWidth:I

    .line 57
    invoke-super {p0, p1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 58
    return-void
.end method