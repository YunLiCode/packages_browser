.class Lme/android/browser/Tab$4;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Lme/android/browser/DataController$OnQueryUrlIsBookmark;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/Tab;


# direct methods
.method constructor <init>(Lme/android/browser/Tab;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/Tab$4;->this$0:Lme/android/browser/Tab;

    .line 1782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryUrlIsBookmark(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isBookmark"    # Z

    .prologue
    .line 1785
    iget-object v0, p0, Lme/android/browser/Tab$4;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iget-object v0, v0, Lme/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1786
    iget-object v0, p0, Lme/android/browser/Tab$4;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mCurrentState:Lme/android/browser/Tab$PageState;

    iput-boolean p2, v0, Lme/android/browser/Tab$PageState;->mIsBookmarkedSite:Z

    .line 1787
    iget-object v0, p0, Lme/android/browser/Tab$4;->this$0:Lme/android/browser/Tab;

    iget-object v0, v0, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    iget-object v1, p0, Lme/android/browser/Tab$4;->this$0:Lme/android/browser/Tab;

    invoke-interface {v0, v1}, Lme/android/browser/WebViewController;->bookmarkedStatusHasChanged(Lme/android/browser/Tab;)V

    .line 1789
    :cond_0
    return-void
.end method
