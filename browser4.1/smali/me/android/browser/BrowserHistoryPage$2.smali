.class Lme/android/browser/BrowserHistoryPage$2;
.super Ljava/lang/Object;
.source "BrowserHistoryPage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/BrowserHistoryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/BrowserHistoryPage;


# direct methods
.method constructor <init>(Lme/android/browser/BrowserHistoryPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/BrowserHistoryPage$2;->this$0:Lme/android/browser/BrowserHistoryPage;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lme/android/browser/BrowserHistoryPage$2;->this$0:Lme/android/browser/BrowserHistoryPage;

    iget-object v0, v0, Lme/android/browser/BrowserHistoryPage;->mCallback:Lme/android/browser/CombinedBookmarksCallbacks;

    check-cast p2, Lme/android/browser/HistoryItem;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2}, Lme/android/browser/HistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lme/android/browser/CombinedBookmarksCallbacks;->openUrl(Ljava/lang/String;)V

    .line 268
    return-void
.end method
