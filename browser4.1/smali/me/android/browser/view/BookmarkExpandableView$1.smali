.class Lme/android/browser/view/BookmarkExpandableView$1;
.super Ljava/lang/Object;
.source "BookmarkExpandableView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/view/BookmarkExpandableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/view/BookmarkExpandableView;


# direct methods
.method constructor <init>(Lme/android/browser/view/BookmarkExpandableView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/view/BookmarkExpandableView$1;->this$0:Lme/android/browser/view/BookmarkExpandableView;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    const/high16 v0, 0x7f0d0000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 226
    .local v3, "groupPosition":I
    const v0, 0x7f0d0001

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 227
    .local v4, "childPosition":I
    iget-object v0, p0, Lme/android/browser/view/BookmarkExpandableView$1;->this$0:Lme/android/browser/view/BookmarkExpandableView;

    # getter for: Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;
    invoke-static {v0}, Lme/android/browser/view/BookmarkExpandableView;->access$0(Lme/android/browser/view/BookmarkExpandableView;)Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->getGroupCount()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 228
    iget-object v0, p0, Lme/android/browser/view/BookmarkExpandableView$1;->this$0:Lme/android/browser/view/BookmarkExpandableView;

    # getter for: Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;
    invoke-static {v0}, Lme/android/browser/view/BookmarkExpandableView;->access$0(Lme/android/browser/view/BookmarkExpandableView;)Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    move-result-object v0

    iget-object v0, v0, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0}, Lme/android/browser/BrowserBookmarksAdapter;->getCount()I

    move-result v0

    if-le v0, v4, :cond_0

    .line 231
    iget-object v0, p0, Lme/android/browser/view/BookmarkExpandableView$1;->this$0:Lme/android/browser/view/BookmarkExpandableView;

    # getter for: Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;
    invoke-static {v0}, Lme/android/browser/view/BookmarkExpandableView;->access$0(Lme/android/browser/view/BookmarkExpandableView;)Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    move-result-object v0

    iget-object v0, v0, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, v4}, Lme/android/browser/BrowserBookmarksAdapter;->getItemId(I)J

    move-result-wide v5

    .line 232
    .local v5, "id":J
    iget-object v0, p0, Lme/android/browser/view/BookmarkExpandableView$1;->this$0:Lme/android/browser/view/BookmarkExpandableView;

    # getter for: Lme/android/browser/view/BookmarkExpandableView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;
    invoke-static {v0}, Lme/android/browser/view/BookmarkExpandableView;->access$1(Lme/android/browser/view/BookmarkExpandableView;)Landroid/widget/ExpandableListView$OnChildClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lme/android/browser/view/BookmarkExpandableView$1;->this$0:Lme/android/browser/view/BookmarkExpandableView;

    # getter for: Lme/android/browser/view/BookmarkExpandableView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;
    invoke-static {v0}, Lme/android/browser/view/BookmarkExpandableView;->access$1(Lme/android/browser/view/BookmarkExpandableView;)Landroid/widget/ExpandableListView$OnChildClickListener;

    move-result-object v0

    iget-object v1, p0, Lme/android/browser/view/BookmarkExpandableView$1;->this$0:Lme/android/browser/view/BookmarkExpandableView;

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Landroid/widget/ExpandableListView$OnChildClickListener;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    goto :goto_0
.end method
