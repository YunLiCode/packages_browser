.class abstract Lme/android/browser/BrowserHistoryPage$HistoryWrapper;
.super Landroid/widget/BaseAdapter;
.source "BrowserHistoryPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/BrowserHistoryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "HistoryWrapper"
.end annotation


# instance fields
.field protected mAdapter:Lme/android/browser/BrowserHistoryPage$HistoryAdapter;

.field private mObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Lme/android/browser/BrowserHistoryPage$HistoryAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lme/android/browser/BrowserHistoryPage$HistoryAdapter;

    .prologue
    .line 451
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 437
    new-instance v0, Lme/android/browser/BrowserHistoryPage$HistoryWrapper$1;

    invoke-direct {v0, p0}, Lme/android/browser/BrowserHistoryPage$HistoryWrapper$1;-><init>(Lme/android/browser/BrowserHistoryPage$HistoryWrapper;)V

    iput-object v0, p0, Lme/android/browser/BrowserHistoryPage$HistoryWrapper;->mObserver:Landroid/database/DataSetObserver;

    .line 452
    iput-object p1, p0, Lme/android/browser/BrowserHistoryPage$HistoryWrapper;->mAdapter:Lme/android/browser/BrowserHistoryPage$HistoryAdapter;

    .line 453
    iget-object v0, p0, Lme/android/browser/BrowserHistoryPage$HistoryWrapper;->mAdapter:Lme/android/browser/BrowserHistoryPage$HistoryAdapter;

    iget-object v1, p0, Lme/android/browser/BrowserHistoryPage$HistoryWrapper;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lme/android/browser/BrowserHistoryPage$HistoryAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 454
    return-void
.end method
