.class Lme/android/browser/BrowserBookmarksPage$CombinedBookmarksCallbackWrapper;
.super Ljava/lang/Object;
.source "BrowserBookmarksPage.java"

# interfaces
.implements Lme/android/browser/BookmarksPageCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/BrowserBookmarksPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CombinedBookmarksCallbackWrapper"
.end annotation


# instance fields
.field private mCombinedCallback:Lme/android/browser/CombinedBookmarksCallbacks;


# direct methods
.method private constructor <init>(Lme/android/browser/CombinedBookmarksCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lme/android/browser/CombinedBookmarksCallbacks;

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-object p1, p0, Lme/android/browser/BrowserBookmarksPage$CombinedBookmarksCallbackWrapper;->mCombinedCallback:Lme/android/browser/CombinedBookmarksCallbacks;

    .line 369
    return-void
.end method

.method synthetic constructor <init>(Lme/android/browser/CombinedBookmarksCallbacks;Lme/android/browser/BrowserBookmarksPage$CombinedBookmarksCallbackWrapper;)V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lme/android/browser/BrowserBookmarksPage$CombinedBookmarksCallbackWrapper;-><init>(Lme/android/browser/CombinedBookmarksCallbacks;)V

    return-void
.end method


# virtual methods
.method public onBookmarkSelected(Landroid/database/Cursor;Z)Z
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "isFolder"    # Z

    .prologue
    .line 379
    if-eqz p2, :cond_0

    .line 380
    const/4 v0, 0x0

    .line 383
    :goto_0
    return v0

    .line 382
    :cond_0
    iget-object v0, p0, Lme/android/browser/BrowserBookmarksPage$CombinedBookmarksCallbackWrapper;->mCombinedCallback:Lme/android/browser/CombinedBookmarksCallbacks;

    invoke-static {p1}, Lme/android/browser/BrowserBookmarksPage;->getUrl(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lme/android/browser/CombinedBookmarksCallbacks;->openUrl(Ljava/lang/String;)V

    .line 383
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public varargs onOpenInNewWindow([Ljava/lang/String;)Z
    .locals 1
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 373
    iget-object v0, p0, Lme/android/browser/BrowserBookmarksPage$CombinedBookmarksCallbackWrapper;->mCombinedCallback:Lme/android/browser/CombinedBookmarksCallbacks;

    invoke-interface {v0, p1}, Lme/android/browser/CombinedBookmarksCallbacks;->openInNewTab([Ljava/lang/String;)V

    .line 374
    const/4 v0, 0x1

    return v0
.end method
