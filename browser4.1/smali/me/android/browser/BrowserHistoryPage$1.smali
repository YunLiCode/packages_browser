.class Lme/android/browser/BrowserHistoryPage$1;
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
    iput-object p1, p0, Lme/android/browser/BrowserHistoryPage$1;->this$0:Lme/android/browser/BrowserHistoryPage;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 256
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    check-cast p2, Landroid/widget/TextView;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 257
    .local v0, "title":Ljava/lang/CharSequence;
    iget-object v1, p0, Lme/android/browser/BrowserHistoryPage$1;->this$0:Lme/android/browser/BrowserHistoryPage;

    # getter for: Lme/android/browser/BrowserHistoryPage;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;
    invoke-static {v1}, Lme/android/browser/BrowserHistoryPage;->access$1(Lme/android/browser/BrowserHistoryPage;)Landroid/app/FragmentBreadCrumbs;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/app/FragmentBreadCrumbs;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 258
    iget-object v1, p0, Lme/android/browser/BrowserHistoryPage$1;->this$0:Lme/android/browser/BrowserHistoryPage;

    iget-object v1, v1, Lme/android/browser/BrowserHistoryPage;->mChildWrapper:Lme/android/browser/BrowserHistoryPage$HistoryChildWrapper;

    invoke-virtual {v1, p3}, Lme/android/browser/BrowserHistoryPage$HistoryChildWrapper;->setSelectedGroup(I)V

    .line 259
    iget-object v1, p0, Lme/android/browser/BrowserHistoryPage$1;->this$0:Lme/android/browser/BrowserHistoryPage;

    iget-object v1, v1, Lme/android/browser/BrowserHistoryPage;->mGroupList:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, p3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 260
    return-void
.end method
