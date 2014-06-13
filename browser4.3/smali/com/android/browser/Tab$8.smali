.class Lcom/android/browser/Tab$8;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Lcom/android/browser/DataController$OnQueryUrlIsBookmark;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab;)V
    .locals 0

    .prologue
    .line 1785
    iput-object p1, p0, Lcom/android/browser/Tab$8;->this$0:Lcom/android/browser/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryUrlIsBookmark(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isBookmark"    # Z

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/android/browser/Tab$8;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1789
    iget-object v0, p0, Lcom/android/browser/Tab$8;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iput-boolean p2, v0, Lcom/android/browser/Tab$PageState;->mIsBookmarkedSite:Z

    .line 1790
    iget-object v0, p0, Lcom/android/browser/Tab$8;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$8;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewController;->bookmarkedStatusHasChanged(Lcom/android/browser/Tab;)V

    .line 1792
    :cond_0
    return-void
.end method
