.class Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter$1;
.super Landroid/database/DataSetObserver;
.source "BookmarkExpandableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;


# direct methods
.method constructor <init>(Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter$1;->this$1:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    .line 277
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter$1;->this$1:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    invoke-virtual {v0}, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->notifyDataSetChanged()V

    .line 281
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter$1;->this$1:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    invoke-virtual {v0}, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->notifyDataSetInvalidated()V

    .line 286
    return-void
.end method
