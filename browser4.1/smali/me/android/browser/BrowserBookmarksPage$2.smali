.class Lme/android/browser/BrowserBookmarksPage$2;
.super Ljava/lang/Object;
.source "BrowserBookmarksPage.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/BrowserBookmarksPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/BrowserBookmarksPage;


# direct methods
.method constructor <init>(Lme/android/browser/BrowserBookmarksPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/BrowserBookmarksPage$2;->this$0:Lme/android/browser/BrowserBookmarksPage;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 264
    iget-object v0, p0, Lme/android/browser/BrowserBookmarksPage$2;->this$0:Lme/android/browser/BrowserBookmarksPage;

    invoke-virtual {v0, p1}, Lme/android/browser/BrowserBookmarksPage;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
