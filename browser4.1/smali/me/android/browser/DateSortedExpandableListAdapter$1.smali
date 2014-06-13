.class Lme/android/browser/DateSortedExpandableListAdapter$1;
.super Landroid/database/DataSetObserver;
.source "DateSortedExpandableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/DateSortedExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/DateSortedExpandableListAdapter;


# direct methods
.method constructor <init>(Lme/android/browser/DateSortedExpandableListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/DateSortedExpandableListAdapter$1;->this$0:Lme/android/browser/DateSortedExpandableListAdapter;

    .line 49
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lme/android/browser/DateSortedExpandableListAdapter$1;->this$0:Lme/android/browser/DateSortedExpandableListAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lme/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    .line 53
    iget-object v0, p0, Lme/android/browser/DateSortedExpandableListAdapter$1;->this$0:Lme/android/browser/DateSortedExpandableListAdapter;

    invoke-virtual {v0}, Lme/android/browser/DateSortedExpandableListAdapter;->notifyDataSetChanged()V

    .line 54
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lme/android/browser/DateSortedExpandableListAdapter$1;->this$0:Lme/android/browser/DateSortedExpandableListAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lme/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    .line 59
    iget-object v0, p0, Lme/android/browser/DateSortedExpandableListAdapter$1;->this$0:Lme/android/browser/DateSortedExpandableListAdapter;

    invoke-virtual {v0}, Lme/android/browser/DateSortedExpandableListAdapter;->notifyDataSetInvalidated()V

    .line 60
    return-void
.end method
