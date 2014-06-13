.class Lcom/android/browser/util/ThreadedCursorAdapter$3;
.super Landroid/os/Handler;
.source "ThreadedCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/util/ThreadedCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/util/ThreadedCursorAdapter;


# direct methods
.method constructor <init>(Lcom/android/browser/util/ThreadedCursorAdapter;)V
    .locals 0

    .prologue
    .line 106
    .local p0, "this":Lcom/android/browser/util/ThreadedCursorAdapter$3;, "Lcom/android/browser/util/ThreadedCursorAdapter.3;"
    iput-object p1, p0, Lcom/android/browser/util/ThreadedCursorAdapter$3;->this$0:Lcom/android/browser/util/ThreadedCursorAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 110
    .local p0, "this":Lcom/android/browser/util/ThreadedCursorAdapter$3;, "Lcom/android/browser/util/ThreadedCursorAdapter.3;"
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;

    .line 111
    .local v0, "container":Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;, "Lcom/android/browser/util/ThreadedCursorAdapter<TT;>.LoadContainer;"
    if-nez v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v2, v0, Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 115
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;->owner:Landroid/widget/Adapter;

    iget-object v3, p0, Lcom/android/browser/util/ThreadedCursorAdapter$3;->this$0:Lcom/android/browser/util/ThreadedCursorAdapter;

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;->position:I

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;->generation:J

    iget-object v4, p0, Lcom/android/browser/util/ThreadedCursorAdapter$3;->this$0:Lcom/android/browser/util/ThreadedCursorAdapter;

    # getter for: Lcom/android/browser/util/ThreadedCursorAdapter;->mGeneration:J
    invoke-static {v4}, Lcom/android/browser/util/ThreadedCursorAdapter;->access$100(Lcom/android/browser/util/ThreadedCursorAdapter;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 122
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;->loaded:Z

    .line 123
    iget-object v2, p0, Lcom/android/browser/util/ThreadedCursorAdapter$3;->this$0:Lcom/android/browser/util/ThreadedCursorAdapter;

    iget-object v3, v0, Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;->bind_object:Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/android/browser/util/ThreadedCursorAdapter;->bindView(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_0
.end method
