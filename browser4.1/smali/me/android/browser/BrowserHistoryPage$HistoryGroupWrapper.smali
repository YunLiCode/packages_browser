.class Lme/android/browser/BrowserHistoryPage$HistoryGroupWrapper;
.super Lme/android/browser/BrowserHistoryPage$HistoryWrapper;
.source "BrowserHistoryPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/BrowserHistoryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistoryGroupWrapper"
.end annotation


# direct methods
.method public constructor <init>(Lme/android/browser/BrowserHistoryPage$HistoryAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lme/android/browser/BrowserHistoryPage$HistoryAdapter;

    .prologue
    .line 460
    invoke-direct {p0, p1}, Lme/android/browser/BrowserHistoryPage$HistoryWrapper;-><init>(Lme/android/browser/BrowserHistoryPage$HistoryAdapter;)V

    .line 461
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lme/android/browser/BrowserHistoryPage$HistoryGroupWrapper;->mAdapter:Lme/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {v0}, Lme/android/browser/BrowserHistoryPage$HistoryAdapter;->getGroupCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 470
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 475
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 480
    iget-object v0, p0, Lme/android/browser/BrowserHistoryPage$HistoryGroupWrapper;->mAdapter:Lme/android/browser/BrowserHistoryPage$HistoryAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Lme/android/browser/BrowserHistoryPage$HistoryAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
