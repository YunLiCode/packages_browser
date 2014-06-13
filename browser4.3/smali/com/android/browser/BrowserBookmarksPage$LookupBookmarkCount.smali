.class Lcom/android/browser/BrowserBookmarksPage$LookupBookmarkCount;
.super Landroid/os/AsyncTask;
.source "BrowserBookmarksPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserBookmarksPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LookupBookmarkCount"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mHeader:Lcom/android/browser/BookmarkItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/BookmarkItem;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "header"    # Lcom/android/browser/BookmarkItem;

    .prologue
    .line 618
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 619
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksPage$LookupBookmarkCount;->mContext:Landroid/content/Context;

    .line 620
    iput-object p2, p0, Lcom/android/browser/BrowserBookmarksPage$LookupBookmarkCount;->mHeader:Lcom/android/browser/BookmarkItem;

    .line 621
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Long;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 625
    array-length v0, p1

    if-eq v0, v4, :cond_0

    .line 626
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Missing folder id!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage$LookupBookmarkCount;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/browser/BookmarkUtils;->getBookmarksUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 629
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage$LookupBookmarkCount;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "parent=?"

    new-array v4, v4, [Ljava/lang/String;

    aget-object v5, p1, v7

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 632
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 614
    check-cast p1, [Ljava/lang/Long;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage$LookupBookmarkCount;->doInBackground([Ljava/lang/Long;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 637
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 638
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage$LookupBookmarkCount;->mHeader:Lcom/android/browser/BookmarkItem;

    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$LookupBookmarkCount;->mContext:Landroid/content/Context;

    const v2, 0x7f0c005a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BookmarkItem;->setUrl(Ljava/lang/String;)V

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage$LookupBookmarkCount;->mHeader:Lcom/android/browser/BookmarkItem;

    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$LookupBookmarkCount;->mContext:Landroid/content/Context;

    const v2, 0x7f0c005b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BookmarkItem;->setUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 614
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage$LookupBookmarkCount;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
