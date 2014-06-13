.class Lme/android/browser/util/ThreadedCursorAdapter$1;
.super Landroid/widget/CursorAdapter;
.source "ThreadedCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/util/ThreadedCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/util/ThreadedCursorAdapter;


# direct methods
.method constructor <init>(Lme/android/browser/util/ThreadedCursorAdapter;Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Landroid/database/Cursor;
    .param p4, "$anonymous2"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/util/ThreadedCursorAdapter$1;->this$0:Lme/android/browser/util/ThreadedCursorAdapter;

    .line 63
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyDataSetChanged()V
    .locals 5

    .prologue
    .line 77
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 78
    iget-object v0, p0, Lme/android/browser/util/ThreadedCursorAdapter$1;->this$0:Lme/android/browser/util/ThreadedCursorAdapter;

    invoke-virtual {p0}, Lme/android/browser/util/ThreadedCursorAdapter$1;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lme/android/browser/util/ThreadedCursorAdapter;->access$1(Lme/android/browser/util/ThreadedCursorAdapter;I)V

    .line 79
    iget-object v0, p0, Lme/android/browser/util/ThreadedCursorAdapter$1;->this$0:Lme/android/browser/util/ThreadedCursorAdapter;

    # getter for: Lme/android/browser/util/ThreadedCursorAdapter;->mGeneration:J
    invoke-static {v0}, Lme/android/browser/util/ThreadedCursorAdapter;->access$2(Lme/android/browser/util/ThreadedCursorAdapter;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lme/android/browser/util/ThreadedCursorAdapter;->access$3(Lme/android/browser/util/ThreadedCursorAdapter;J)V

    .line 80
    iget-object v0, p0, Lme/android/browser/util/ThreadedCursorAdapter$1;->this$0:Lme/android/browser/util/ThreadedCursorAdapter;

    invoke-virtual {v0}, Lme/android/browser/util/ThreadedCursorAdapter;->notifyDataSetChanged()V

    .line 81
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 5

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetInvalidated()V

    .line 86
    iget-object v0, p0, Lme/android/browser/util/ThreadedCursorAdapter$1;->this$0:Lme/android/browser/util/ThreadedCursorAdapter;

    invoke-virtual {p0}, Lme/android/browser/util/ThreadedCursorAdapter$1;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lme/android/browser/util/ThreadedCursorAdapter;->access$1(Lme/android/browser/util/ThreadedCursorAdapter;I)V

    .line 87
    iget-object v0, p0, Lme/android/browser/util/ThreadedCursorAdapter$1;->this$0:Lme/android/browser/util/ThreadedCursorAdapter;

    # getter for: Lme/android/browser/util/ThreadedCursorAdapter;->mGeneration:J
    invoke-static {v0}, Lme/android/browser/util/ThreadedCursorAdapter;->access$2(Lme/android/browser/util/ThreadedCursorAdapter;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lme/android/browser/util/ThreadedCursorAdapter;->access$3(Lme/android/browser/util/ThreadedCursorAdapter;J)V

    .line 88
    iget-object v0, p0, Lme/android/browser/util/ThreadedCursorAdapter$1;->this$0:Lme/android/browser/util/ThreadedCursorAdapter;

    invoke-virtual {v0}, Lme/android/browser/util/ThreadedCursorAdapter;->notifyDataSetInvalidated()V

    .line 89
    return-void
.end method
