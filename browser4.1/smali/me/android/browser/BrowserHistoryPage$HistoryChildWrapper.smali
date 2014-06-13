.class Lme/android/browser/BrowserHistoryPage$HistoryChildWrapper;
.super Lme/android/browser/BrowserHistoryPage$HistoryWrapper;
.source "BrowserHistoryPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/BrowserHistoryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistoryChildWrapper"
.end annotation


# instance fields
.field private mSelectedGroup:I


# direct methods
.method public constructor <init>(Lme/android/browser/BrowserHistoryPage$HistoryAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lme/android/browser/BrowserHistoryPage$HistoryAdapter;

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lme/android/browser/BrowserHistoryPage$HistoryWrapper;-><init>(Lme/android/browser/BrowserHistoryPage$HistoryAdapter;)V

    .line 491
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lme/android/browser/BrowserHistoryPage$HistoryChildWrapper;->mAdapter:Lme/android/browser/BrowserHistoryPage$HistoryAdapter;

    iget v1, p0, Lme/android/browser/BrowserHistoryPage$HistoryChildWrapper;->mSelectedGroup:I

    invoke-virtual {v0, v1}, Lme/android/browser/BrowserHistoryPage$HistoryAdapter;->getChildrenCount(I)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 505
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 510
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 515
    iget-object v0, p0, Lme/android/browser/BrowserHistoryPage$HistoryChildWrapper;->mAdapter:Lme/android/browser/BrowserHistoryPage$HistoryAdapter;

    iget v1, p0, Lme/android/browser/BrowserHistoryPage$HistoryChildWrapper;->mSelectedGroup:I

    .line 516
    const/4 v3, 0x0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 515
    invoke-virtual/range {v0 .. v5}, Lme/android/browser/BrowserHistoryPage$HistoryAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method setSelectedGroup(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .prologue
    .line 494
    iput p1, p0, Lme/android/browser/BrowserHistoryPage$HistoryChildWrapper;->mSelectedGroup:I

    .line 495
    invoke-virtual {p0}, Lme/android/browser/BrowserHistoryPage$HistoryChildWrapper;->notifyDataSetChanged()V

    .line 496
    return-void
.end method
