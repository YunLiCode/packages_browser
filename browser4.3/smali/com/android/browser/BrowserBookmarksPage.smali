.class public Lcom/android/browser/BrowserBookmarksPage;
.super Landroid/app/Fragment;
.source "BrowserBookmarksPage.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Lcom/android/browser/BreadCrumbView$Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserBookmarksPage$AccountsLoader;,
        Lcom/android/browser/BrowserBookmarksPage$LookupBookmarkCount;,
        Lcom/android/browser/BrowserBookmarksPage$OpenAllInTabsTask;,
        Lcom/android/browser/BrowserBookmarksPage$CombinedBookmarksCallbackWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/view/View$OnCreateContextMenuListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/android/browser/BreadCrumbView$Controller;",
        "Landroid/widget/ExpandableListView$OnChildClickListener;"
    }
.end annotation


# static fields
.field static sOptions:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mBookmarkAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/browser/BrowserBookmarksAdapter;",
            ">;"
        }
    .end annotation
.end field

.field mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

.field private mContextItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mDisableNewWindow:Z

.field mEmptyView:Landroid/view/View;

.field mEnableContextMenu:Z

.field mGrid:Lcom/android/browser/view/BookmarkExpandableView;

.field mRoot:Landroid/view/View;

.field mState:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 237
    new-instance v0, Lcom/android/browser/BrowserBookmarksPage$1;

    invoke-direct {v0}, Lcom/android/browser/BrowserBookmarksPage$1;-><init>()V

    sput-object v0, Lcom/android/browser/BrowserBookmarksPage;->sOptions:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mEnableContextMenu:Z

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarkAdapters:Ljava/util/HashMap;

    .line 260
    new-instance v0, Lcom/android/browser/BrowserBookmarksPage$2;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserBookmarksPage$2;-><init>(Lcom/android/browser/BrowserBookmarksPage;)V

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 646
    return-void
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 554
    .local v0, "cm":Landroid/content/ClipboardManager;
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 555
    return-void
.end method

.method static createShortcutIntent(Landroid/content/Context;Landroid/database/Cursor;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 454
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, "url":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, "title":Ljava/lang/String;
    const/4 v4, 0x5

    invoke-static {p1, v4}, Lcom/android/browser/BrowserBookmarksPage;->getBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 457
    .local v2, "touchIcon":Landroid/graphics/Bitmap;
    const/4 v4, 0x3

    invoke-static {p1, v4}, Lcom/android/browser/BrowserBookmarksPage;->getBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 458
    .local v0, "favicon":Landroid/graphics/Bitmap;
    invoke-static {p0, v3, v1, v2, v0}, Lcom/android/browser/BookmarkUtils;->createAddToHomeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/content/Intent;

    move-result-object v4

    return-object v4
.end method

.method private displayRemoveBookmarkDialog(Lcom/android/browser/BrowserBookmarksAdapter;I)V
    .locals 6
    .param p1, "adapter"    # Lcom/android/browser/BrowserBookmarksAdapter;
    .param p2, "position"    # I

    .prologue
    .line 536
    invoke-virtual {p1, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v1

    .line 537
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 538
    .local v2, "id":J
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 539
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 540
    .local v0, "context":Landroid/content/Context;
    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/browser/BookmarkUtils;->displayRemoveBookmarkDialog(JLjava/lang/String;Landroid/content/Context;Landroid/os/Message;)V

    .line 541
    return-void
.end method

.method private editBookmark(Lcom/android/browser/BrowserBookmarksAdapter;I)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 510
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/browser/AddBookmarkPage;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 511
    invoke-virtual {p1, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v3

    .line 512
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 513
    const-string v5, "title"

    const/4 v6, 0x2

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v5, "url"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const/4 v5, 0x3

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 518
    if-eqz v5, :cond_0

    .line 519
    const-string v6, "favicon"

    array-length v7, v5

    invoke-static {v5, v1, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 522
    :cond_0
    const-string v5, "_id"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 524
    const-string v5, "parent"

    const/16 v6, 0x8

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 526
    const-string v5, "bookmark"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 527
    const-string v4, "is_folder"

    const/4 v5, 0x6

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 529
    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserBookmarksPage;->startActivity(Landroid/content/Intent;)V

    .line 530
    return-void

    :cond_1
    move v0, v1

    .line 527
    goto :goto_0
.end method

.method static getBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnIndex"    # I

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/browser/BrowserBookmarksPage;->getBitmap(Landroid/database/Cursor;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static getBitmap(Landroid/database/Cursor;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnIndex"    # I
    .param p2, "inBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 244
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 245
    .local v0, "data":[B
    if-nez v0, :cond_0

    .line 246
    const/4 v3, 0x0

    .line 256
    :goto_0
    return-object v3

    .line 248
    :cond_0
    sget-object v3, Lcom/android/browser/BrowserBookmarksPage;->sOptions:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/BitmapFactory$Options;

    .line 249
    .local v2, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-object p2, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 250
    const/4 v3, 0x1

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 251
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 253
    const/4 v3, 0x0

    :try_start_0
    array-length v4, v0

    invoke-static {v0, v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 254
    :catch_0
    move-exception v1

    .line 256
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    array-length v3, v0

    invoke-static {v0, v5, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method private getBreadCrumbs(I)Lcom/android/browser/BreadCrumbView;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v0, p1}, Lcom/android/browser/view/BookmarkExpandableView;->getBreadCrumbs(I)Lcom/android/browser/BreadCrumbView;

    move-result-object v0

    return-object v0
.end method

.method private getChildAdapter(I)Lcom/android/browser/BrowserBookmarksAdapter;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v0, p1}, Lcom/android/browser/view/BookmarkExpandableView;->getChildAdapter(I)Lcom/android/browser/BrowserBookmarksAdapter;

    move-result-object v0

    return-object v0
.end method

.method static getUrl(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 548
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUrl(Lcom/android/browser/BrowserBookmarksAdapter;I)Ljava/lang/String;
    .locals 1
    .param p1, "adapter"    # Lcom/android/browser/BrowserBookmarksAdapter;
    .param p2, "position"    # I

    .prologue
    .line 544
    invoke-virtual {p1, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadFolder(ILandroid/net/Uri;)V
    .locals 3
    .param p1, "groupPosition"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 592
    .local v1, "manager":Landroid/app/LoaderManager;
    add-int/lit8 v2, p1, 0x64

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BookmarksLoader;

    .line 594
    .local v0, "loader":Lcom/android/browser/BookmarksLoader;
    invoke-virtual {v0, p2}, Lcom/android/browser/BookmarksLoader;->setUri(Landroid/net/Uri;)V

    .line 595
    invoke-virtual {v0}, Lcom/android/browser/BookmarksLoader;->forceLoad()V

    .line 596
    return-void
.end method

.method private loadUrl(Lcom/android/browser/BrowserBookmarksAdapter;I)V
    .locals 3
    .param p1, "adapter"    # Lcom/android/browser/BrowserBookmarksAdapter;
    .param p2, "position"    # I

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    invoke-virtual {p1, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/browser/BookmarksPageCallbacks;->onBookmarkSelected(Landroid/database/Cursor;Z)Z

    .line 465
    :cond_0
    return-void
.end method

.method private openInNewWindow(Lcom/android/browser/BrowserBookmarksAdapter;I)V
    .locals 8
    .param p1, "adapter"    # Lcom/android/browser/BrowserBookmarksAdapter;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 468
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    if-eqz v6, :cond_0

    .line 469
    invoke-virtual {p1, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    .line 470
    .local v0, "c":Landroid/database/Cursor;
    const/4 v6, 0x6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v4, :cond_1

    move v3, v4

    .line 471
    .local v3, "isFolder":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 472
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 473
    .local v1, "id":J
    new-instance v4, Lcom/android/browser/BrowserBookmarksPage$OpenAllInTabsTask;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/browser/BrowserBookmarksPage$OpenAllInTabsTask;-><init>(Lcom/android/browser/BrowserBookmarksPage;J)V

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/browser/BrowserBookmarksPage$OpenAllInTabsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 478
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "id":J
    .end local v3    # "isFolder":Z
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "c":Landroid/database/Cursor;
    :cond_1
    move v3, v5

    .line 470
    goto :goto_0

    .line 475
    .restart local v3    # "isFolder":Z
    :cond_2
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v0}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-interface {v6, v4}, Lcom/android/browser/BookmarksPageCallbacks;->onOpenInNewWindow([Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private populateBookmarkItem(Landroid/database/Cursor;Lcom/android/browser/BookmarkItem;Z)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "item"    # Lcom/android/browser/BookmarkItem;
    .param p3, "isFolder"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 308
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/browser/BookmarkItem;->setName(Ljava/lang/String;)V

    .line 309
    if-eqz p3, :cond_0

    .line 310
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/android/browser/BookmarkItem;->setUrl(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020027

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 313
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Lcom/android/browser/BookmarkItem;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 314
    new-instance v2, Lcom/android/browser/BrowserBookmarksPage$LookupBookmarkCount;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lcom/android/browser/BrowserBookmarksPage$LookupBookmarkCount;-><init>(Landroid/content/Context;Lcom/android/browser/BookmarkItem;)V

    new-array v3, v4, [Ljava/lang/Long;

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/android/browser/BrowserBookmarksPage$LookupBookmarkCount;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 322
    :goto_0
    return-void

    .line 317
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p2, v1}, Lcom/android/browser/BookmarkItem;->setUrl(Ljava/lang/String;)V

    .line 319
    const/4 v2, 0x3

    invoke-static {p1, v2}, Lcom/android/browser/BrowserBookmarksPage;->getBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 320
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Lcom/android/browser/BookmarkItem;->setFavicon(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method canEdit(Landroid/database/Cursor;)Z
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    .line 302
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 303
    .local v0, "type":I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleContextItem(III)Z
    .locals 11
    .param p1, "itemId"    # I
    .param p2, "groupPosition"    # I
    .param p3, "childPosition"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 180
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 181
    .local v0, "activity":Landroid/app/Activity;
    invoke-direct {p0, p2}, Lcom/android/browser/BrowserBookmarksPage;->getChildAdapter(I)Lcom/android/browser/BrowserBookmarksAdapter;

    move-result-object v1

    .line 183
    .local v1, "adapter":Lcom/android/browser/BrowserBookmarksAdapter;
    sparse-switch p1, :sswitch_data_0

    .line 228
    const/4 v6, 0x0

    .line 230
    :goto_0
    return v6

    .line 185
    :sswitch_0
    invoke-direct {p0, v1, p3}, Lcom/android/browser/BrowserBookmarksPage;->loadUrl(Lcom/android/browser/BrowserBookmarksAdapter;I)V

    goto :goto_0

    .line 188
    :sswitch_1
    invoke-direct {p0, v1, p3}, Lcom/android/browser/BrowserBookmarksPage;->editBookmark(Lcom/android/browser/BrowserBookmarksAdapter;I)V

    goto :goto_0

    .line 191
    :sswitch_2
    invoke-virtual {v1, p3}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v2

    .line 192
    .local v2, "c":Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/android/browser/BrowserBookmarksPage;->createShortcutIntent(Landroid/content/Context;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 195
    .end local v2    # "c":Landroid/database/Cursor;
    :sswitch_3
    invoke-direct {p0, v1, p3}, Lcom/android/browser/BrowserBookmarksPage;->displayRemoveBookmarkDialog(Lcom/android/browser/BrowserBookmarksAdapter;I)V

    goto :goto_0

    .line 198
    :sswitch_4
    invoke-direct {p0, v1, p3}, Lcom/android/browser/BrowserBookmarksPage;->openInNewWindow(Lcom/android/browser/BrowserBookmarksAdapter;I)V

    goto :goto_0

    .line 201
    :sswitch_5
    invoke-virtual {v1, p3}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v3

    .line 202
    .local v3, "cursor":Landroid/database/Cursor;
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-static {v3, v9}, Lcom/android/browser/BrowserBookmarksPage;->getBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v10, 0x4

    invoke-static {v3, v10}, Lcom/android/browser/BrowserBookmarksPage;->getBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-static {v0, v7, v8, v9, v10}, Lcom/android/browser/Controller;->sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 210
    .end local v3    # "cursor":Landroid/database/Cursor;
    :sswitch_6
    invoke-direct {p0, v1, p3}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(Lcom/android/browser/BrowserBookmarksAdapter;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/browser/BrowserBookmarksPage;->copy(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 213
    :sswitch_7
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v7

    invoke-direct {p0, v1, p3}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(Lcom/android/browser/BrowserBookmarksAdapter;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/browser/BrowserSettings;->setHomePage(Ljava/lang/String;)V

    .line 214
    const v7, 0x7f0c0042

    invoke-static {v0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 219
    :sswitch_8
    invoke-virtual {v1, p3}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v3

    .line 220
    .restart local v3    # "cursor":Landroid/database/Cursor;
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 224
    .local v5, "url":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v0, v7, v5, v4}, Lcom/android/browser/Bookmarks;->removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0021 -> :sswitch_0
        0x7f0d0022 -> :sswitch_4
        0x7f0d0099 -> :sswitch_1
        0x7f0d009a -> :sswitch_2
        0x7f0d009b -> :sswitch_5
        0x7f0d009c -> :sswitch_6
        0x7f0d009d -> :sswitch_3
        0x7f0d009e -> :sswitch_7
        0x7f0d00de -> :sswitch_8
    .end sparse-switch
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 9
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 430
    invoke-direct {p0, p3}, Lcom/android/browser/BrowserBookmarksPage;->getChildAdapter(I)Lcom/android/browser/BrowserBookmarksAdapter;

    move-result-object v0

    .line 431
    .local v0, "adapter":Lcom/android/browser/BrowserBookmarksAdapter;
    invoke-virtual {v0, p4}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v2

    .line 432
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x6

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_1

    move v3, v6

    .line 433
    .local v3, "isFolder":Z
    :goto_0
    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    invoke-interface {v8, v2, v3}, Lcom/android/browser/BookmarksPageCallbacks;->onBookmarkSelected(Landroid/database/Cursor;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 450
    :cond_0
    :goto_1
    return v6

    .end local v3    # "isFolder":Z
    :cond_1
    move v3, v7

    .line 432
    goto :goto_0

    .line 438
    .restart local v3    # "isFolder":Z
    :cond_2
    if-eqz v3, :cond_0

    .line 439
    const/4 v8, 0x2

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 440
    .local v4, "title":Ljava/lang/String;
    sget-object v8, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    invoke-static {v8, p5, p6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 442
    .local v5, "uri":Landroid/net/Uri;
    invoke-direct {p0, p3}, Lcom/android/browser/BrowserBookmarksPage;->getBreadCrumbs(I)Lcom/android/browser/BreadCrumbView;

    move-result-object v1

    .line 443
    .local v1, "crumbs":Lcom/android/browser/BreadCrumbView;
    if-eqz v1, :cond_3

    .line 445
    invoke-virtual {v1, v4, v5}, Lcom/android/browser/BreadCrumbView;->pushView(Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;

    .line 446
    invoke-virtual {v1, v7}, Lcom/android/browser/BreadCrumbView;->setVisibility(I)V

    .line 448
    :cond_3
    invoke-direct {p0, p3, v5}, Lcom/android/browser/BrowserBookmarksPage;->loadFolder(ILandroid/net/Uri;)V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v4, 0x0

    .line 559
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 560
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 561
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    const v3, 0x7f040009

    invoke-virtual {v2, v3}, Lcom/android/browser/view/BookmarkExpandableView;->setColumnWidthFromLayout(I)V

    .line 562
    const v2, 0x7f0b0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 563
    .local v0, "paddingTop":I
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mRoot:Landroid/view/View;

    invoke-virtual {v2, v4, v0, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 564
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 565
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    instance-of v2, v2, Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;

    if-nez v2, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v1

    .line 166
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;

    .line 168
    .local v0, "i":Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;
    if-eqz v0, :cond_0

    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iget v2, v0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;->groupPosition:I

    iget v3, v0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;->childPosition:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/browser/BrowserBookmarksPage;->handleContextItem(III)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    const/4 v1, 0x1

    goto :goto_0

    .line 175
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 329
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 330
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 332
    .local v2, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    const-string v5, "bbp_group_state"

    const-string v6, "{}"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mState:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 339
    .local v0, "args":Landroid/os/Bundle;
    if-nez v0, :cond_1

    :goto_1
    iput-boolean v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mDisableNewWindow:Z

    .line 340
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserBookmarksPage;->setHasOptionsMenu(Z)V

    .line 341
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/browser/CombinedBookmarksCallbacks;

    if-eqz v3, :cond_0

    .line 342
    new-instance v4, Lcom/android/browser/BrowserBookmarksPage$CombinedBookmarksCallbackWrapper;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/browser/CombinedBookmarksCallbacks;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/android/browser/BrowserBookmarksPage$CombinedBookmarksCallbackWrapper;-><init>(Lcom/android/browser/CombinedBookmarksCallbacks;Lcom/android/browser/BrowserBookmarksPage$1;)V

    iput-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    .line 345
    :cond_0
    return-void

    .line 333
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 335
    .local v1, "e":Lorg/json/JSONException;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "bbp_group_state"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 336
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mState:Lorg/json/JSONObject;

    goto :goto_0

    .line 339
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "args":Landroid/os/Bundle;
    :cond_1
    const-string v4, "disable_new_window"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 12
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 270
    move-object v7, p3

    check-cast v7, Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;

    .line 271
    .local v7, "info":Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;
    iget v11, v7, Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;->groupPosition:I

    invoke-direct {p0, v11}, Lcom/android/browser/BrowserBookmarksPage;->getChildAdapter(I)Lcom/android/browser/BrowserBookmarksAdapter;

    move-result-object v1

    .line 272
    .local v1, "adapter":Lcom/android/browser/BrowserBookmarksAdapter;
    iget v11, v7, Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;->childPosition:I

    invoke-virtual {v1, v11}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v3

    .line 273
    .local v3, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserBookmarksPage;->canEdit(Landroid/database/Cursor;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 299
    :cond_0
    return-void

    .line 276
    :cond_1
    const/4 v11, 0x6

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_3

    move v8, v9

    .line 279
    .local v8, "isFolder":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 280
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    .line 281
    .local v6, "inflater":Landroid/view/MenuInflater;
    const v11, 0x7f100001

    invoke-virtual {v6, v11, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 282
    if-eqz v8, :cond_4

    .line 283
    const v10, 0x7f0d009f

    invoke-interface {p1, v10, v9}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 290
    :cond_2
    :goto_1
    new-instance v4, Lcom/android/browser/BookmarkItem;

    invoke-direct {v4, v0}, Lcom/android/browser/BookmarkItem;-><init>(Landroid/content/Context;)V

    .line 291
    .local v4, "header":Lcom/android/browser/BookmarkItem;
    invoke-virtual {v4, v9}, Lcom/android/browser/BookmarkItem;->setEnableScrolling(Z)V

    .line 292
    invoke-direct {p0, v3, v4, v8}, Lcom/android/browser/BrowserBookmarksPage;->populateBookmarkItem(Landroid/database/Cursor;Lcom/android/browser/BookmarkItem;Z)V

    .line 293
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 295
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v2

    .line 296
    .local v2, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v2, :cond_0

    .line 297
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iget-object v10, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 296
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "count":I
    .end local v4    # "header":Lcom/android/browser/BookmarkItem;
    .end local v5    # "i":I
    .end local v6    # "inflater":Landroid/view/MenuInflater;
    .end local v8    # "isFolder":Z
    :cond_3
    move v8, v10

    .line 276
    goto :goto_0

    .line 285
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v6    # "inflater":Landroid/view/MenuInflater;
    .restart local v8    # "isFolder":Z
    :cond_4
    const v11, 0x7f0d0098

    invoke-interface {p1, v11, v9}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 286
    iget-boolean v11, p0, Lcom/android/browser/BrowserBookmarksPage;->mDisableNewWindow:Z

    if-eqz v11, :cond_2

    .line 287
    const v11, 0x7f0d0022

    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 6
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 104
    new-instance v2, Lcom/android/browser/BrowserBookmarksPage$AccountsLoader;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/browser/BrowserBookmarksPage$AccountsLoader;-><init>(Landroid/content/Context;)V

    .line 110
    :goto_0
    return-object v2

    .line 105
    :cond_0
    const/16 v3, 0x64

    if-lt p1, v3, :cond_1

    .line 106
    const-string v3, "account_type"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "accountType":Ljava/lang/String;
    const-string v3, "account_name"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "accountName":Ljava/lang/String;
    new-instance v2, Lcom/android/browser/BookmarksLoader;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lcom/android/browser/BookmarksLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .local v2, "bl":Lcom/android/browser/BookmarksLoader;
    goto :goto_0

    .line 112
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v2    # "bl":Lcom/android/browser/BookmarksLoader;
    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown loader id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 390
    const v1, 0x7f04000a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mRoot:Landroid/view/View;

    .line 391
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mRoot:Landroid/view/View;

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mEmptyView:Landroid/view/View;

    .line 393
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mRoot:Landroid/view/View;

    const v2, 0x7f0d0020

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/browser/view/BookmarkExpandableView;

    iput-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    .line 394
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v1, p0}, Lcom/android/browser/view/BookmarkExpandableView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 395
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    const v2, 0x7f040009

    invoke-virtual {v1, v2}, Lcom/android/browser/view/BookmarkExpandableView;->setColumnWidthFromLayout(I)V

    .line 396
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v1, p0}, Lcom/android/browser/view/BookmarkExpandableView;->setBreadcrumbController(Lcom/android/browser/BreadCrumbView$Controller;)V

    .line 397
    iget-boolean v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mEnableContextMenu:Z

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserBookmarksPage;->setEnableContextMenu(Z)V

    .line 400
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 401
    .local v0, "lm":Landroid/app/LoaderManager;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 403
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method public onDestroyView()V
    .locals 5

    .prologue
    .line 408
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 409
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/browser/view/BookmarkExpandableView;->setBreadcrumbController(Lcom/android/browser/BreadCrumbView$Controller;)V

    .line 410
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v3}, Lcom/android/browser/view/BookmarkExpandableView;->clearAccounts()V

    .line 411
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    .line 412
    .local v2, "lm":Landroid/app/LoaderManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 413
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarkAdapters:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 414
    .local v1, "id":I
    invoke-virtual {v2, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_0

    .line 416
    .end local v1    # "id":I
    :cond_0
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarkAdapters:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 417
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 10
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v9, 0x1

    .line 118
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v7

    if-ne v7, v9, :cond_3

    .line 119
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v6

    .line 120
    .local v6, "lm":Landroid/app/LoaderManager;
    const/16 v5, 0x64

    .line 121
    .local v5, "id":I
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 122
    const/4 v7, 0x0

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "accountName":Ljava/lang/String;
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "accountType":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v3, "args":Landroid/os/Bundle;
    const-string v7, "account_name"

    invoke-virtual {v3, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v7, "account_type"

    invoke-virtual {v3, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v2, Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/android/browser/BrowserBookmarksAdapter;-><init>(Landroid/content/Context;)V

    .line 129
    .local v2, "adapter":Lcom/android/browser/BrowserBookmarksAdapter;
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarkAdapters:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const/4 v4, 0x1

    .line 132
    .local v4, "expand":Z
    :try_start_0
    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mState:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    move-object v7, v0

    :goto_1
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 135
    :goto_2
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v7, v0, v2, v4}, Lcom/android/browser/view/BookmarkExpandableView;->addAccount(Ljava/lang/String;Lcom/android/browser/BrowserBookmarksAdapter;Z)V

    .line 136
    invoke-virtual {v6, v5, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 137
    add-int/lit8 v5, v5, 0x1

    .line 138
    goto :goto_0

    .line 132
    :cond_0
    :try_start_1
    const-string v7, "local"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 146
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v2    # "adapter":Lcom/android/browser/BrowserBookmarksAdapter;
    .end local v3    # "args":Landroid/os/Bundle;
    .end local v4    # "expand":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 151
    .end local v5    # "id":I
    .end local v6    # "lm":Landroid/app/LoaderManager;
    :cond_2
    :goto_3
    return-void

    .line 147
    :cond_3
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v7

    const/16 v8, 0x64

    if-lt v7, v8, :cond_2

    .line 148
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarkAdapters:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/BrowserBookmarksAdapter;

    .line 149
    .restart local v2    # "adapter":Lcom/android/browser/BrowserBookmarksAdapter;
    invoke-virtual {v2, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_3

    .line 134
    .restart local v0    # "accountName":Ljava/lang/String;
    .restart local v1    # "accountType":Ljava/lang/String;
    .restart local v3    # "args":Landroid/os/Bundle;
    .restart local v4    # "expand":Z
    .restart local v5    # "id":I
    .restart local v6    # "lm":Landroid/app/LoaderManager;
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 71
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/BrowserBookmarksPage;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarkAdapters:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserBookmarksAdapter;

    .line 157
    .local v0, "adapter":Lcom/android/browser/BrowserBookmarksAdapter;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserBookmarksAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 159
    .end local v0    # "adapter":Lcom/android/browser/BrowserBookmarksAdapter;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 349
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 351
    :try_start_0
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v1}, Lcom/android/browser/view/BookmarkExpandableView;->saveGroupState()Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mState:Lorg/json/JSONObject;

    .line 353
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 354
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bbp_group_state"

    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mState:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onTop(Lcom/android/browser/BreadCrumbView;ILjava/lang/Object;)V
    .locals 3
    .param p1, "view"    # Lcom/android/browser/BreadCrumbView;
    .param p2, "level"    # I
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 572
    const/high16 v2, 0x7f0d0000

    invoke-virtual {p1, v2}, Lcom/android/browser/BreadCrumbView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "groupPosition":I
    move-object v1, p3

    .line 573
    check-cast v1, Landroid/net/Uri;

    .line 574
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 576
    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    .line 578
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->loadFolder(ILandroid/net/Uri;)V

    .line 579
    const/4 v2, 0x1

    if-gt p2, v2, :cond_1

    .line 580
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/browser/BreadCrumbView;->setVisibility(I)V

    .line 584
    :goto_0
    return-void

    .line 582
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/browser/BreadCrumbView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCallbackListener(Lcom/android/browser/BookmarksPageCallbacks;)V
    .locals 0
    .param p1, "callbackListener"    # Lcom/android/browser/BookmarksPageCallbacks;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    .line 600
    return-void
.end method

.method public setEnableContextMenu(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 603
    iput-boolean p1, p0, Lcom/android/browser/BrowserBookmarksPage;->mEnableContextMenu:Z

    .line 604
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    if-eqz v0, :cond_0

    .line 605
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mEnableContextMenu:Z

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->registerForContextMenu(Landroid/view/View;)V

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->unregisterForContextMenu(Landroid/view/View;)V

    .line 609
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/view/BookmarkExpandableView;->setLongClickable(Z)V

    goto :goto_0
.end method
