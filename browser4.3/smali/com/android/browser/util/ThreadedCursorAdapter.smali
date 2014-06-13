.class public abstract Lcom/android/browser/util/ThreadedCursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThreadedCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursorAdapter:Landroid/widget/CursorAdapter;

.field private mCursorLock:Ljava/lang/Object;

.field private mGeneration:J

.field private mHandler:Landroid/os/Handler;

.field private mHasCursor:Z

.field private mLoadHandler:Landroid/os/Handler;

.field private mLoadingObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .local p0, "this":Lcom/android/browser/util/ThreadedCursorAdapter;, "Lcom/android/browser/util/ThreadedCursorAdapter<TT;>;"
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mCursorLock:Ljava/lang/Object;

    .line 61
    iput-object p1, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mContext:Landroid/content/Context;

    .line 62
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mHasCursor:Z

    .line 63
    new-instance v1, Lcom/android/browser/util/ThreadedCursorAdapter$1;

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/browser/util/ThreadedCursorAdapter$1;-><init>(Lcom/android/browser/util/ThreadedCursorAdapter;Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object v1, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mCursorAdapter:Landroid/widget/CursorAdapter;

    .line 92
    iget-object v1, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mSize:I

    .line 93
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "threaded_adapter_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 95
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 96
    new-instance v1, Lcom/android/browser/util/ThreadedCursorAdapter$2;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/browser/util/ThreadedCursorAdapter$2;-><init>(Lcom/android/browser/util/ThreadedCursorAdapter;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mLoadHandler:Landroid/os/Handler;

    .line 106
    new-instance v1, Lcom/android/browser/util/ThreadedCursorAdapter$3;

    invoke-direct {v1, p0}, Lcom/android/browser/util/ThreadedCursorAdapter$3;-><init>(Lcom/android/browser/util/ThreadedCursorAdapter;)V

    iput-object v1, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mHandler:Landroid/os/Handler;

    .line 126
    return-void

    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    move v1, v2

    .line 62
    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/browser/util/ThreadedCursorAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/util/ThreadedCursorAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mSize:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/browser/util/ThreadedCursorAdapter;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/browser/util/ThreadedCursorAdapter;

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mGeneration:J

    return-wide v0
.end method

.method static synthetic access$108(Lcom/android/browser/util/ThreadedCursorAdapter;)J
    .locals 4
    .param p0, "x0"    # Lcom/android/browser/util/ThreadedCursorAdapter;

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mGeneration:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mGeneration:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/browser/util/ThreadedCursorAdapter;ILcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/util/ThreadedCursorAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/browser/util/ThreadedCursorAdapter;->loadRowObject(ILcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;)V

    return-void
.end method

.method private cachedLoadObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lcom/android/browser/util/ThreadedCursorAdapter;, "Lcom/android/browser/util/ThreadedCursorAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mLoadingObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/android/browser/util/ThreadedCursorAdapter;->getLoadingObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mLoadingObject:Ljava/lang/Object;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mLoadingObject:Ljava/lang/Object;

    return-object v0
.end method

.method private loadRowObject(ILcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;)V
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/browser/util/ThreadedCursorAdapter",
            "<TT;>.",
            "LoadContainer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/android/browser/util/ThreadedCursorAdapter;, "Lcom/android/browser/util/ThreadedCursorAdapter<TT;>;"
    .local p2, "container":Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;, "Lcom/android/browser/util/ThreadedCursorAdapter<TT;>.LoadContainer;"
    if-eqz p2, :cond_0

    iget v1, p2, Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;->position:I

    if-ne v1, p1, :cond_0

    iget-object v1, p2, Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;->owner:Landroid/widget/Adapter;

    if-ne v1, p0, :cond_0

    iget-object v1, p2, Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 154
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 155
    :cond_2
    monitor-exit v2

    goto :goto_0

    .line 158
    .end local v0    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 157
    .restart local v0    # "c":Landroid/database/Cursor;
    :cond_3
    :try_start_1
    iget-object v1, p2, Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;->bind_object:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/util/ThreadedCursorAdapter;->getRowObject(Landroid/database/Cursor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;->bind_object:Ljava/lang/Object;

    .line 158
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    iget-object v1, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public abstract bindView(Landroid/view/View;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .local p0, "this":Lcom/android/browser/util/ThreadedCursorAdapter;, "Lcom/android/browser/util/ThreadedCursorAdapter<TT;>;"
    const/4 v1, 0x0

    .line 200
    iget-object v0, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mLoadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 202
    iget-object v1, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    iput-boolean v0, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mHasCursor:Z

    .line 204
    iget-object v0, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 205
    monitor-exit v1

    .line 206
    return-void

    .line 203
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 130
    .local p0, "this":Lcom/android/browser/util/ThreadedCursorAdapter;, "Lcom/android/browser/util/ThreadedCursorAdapter<TT;>;"
    iget v0, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mSize:I

    return v0
.end method

.method public getItem(I)Landroid/database/Cursor;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 135
    .local p0, "this":Lcom/android/browser/util/ThreadedCursorAdapter;, "Lcom/android/browser/util/ThreadedCursorAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 36
    .local p0, "this":Lcom/android/browser/util/ThreadedCursorAdapter;, "Lcom/android/browser/util/ThreadedCursorAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/browser/util/ThreadedCursorAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 140
    .local p0, "this":Lcom/android/browser/util/ThreadedCursorAdapter;, "Lcom/android/browser/util/ThreadedCursorAdapter<TT;>;"
    iget-object v1, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/browser/util/ThreadedCursorAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/util/ThreadedCursorAdapter;->getItemId(Landroid/database/Cursor;)J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract getItemId(Landroid/database/Cursor;)J
.end method

.method public abstract getLoadingObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getRowObject(Landroid/database/Cursor;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "TT;)TT;"
        }
    .end annotation
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/android/browser/util/ThreadedCursorAdapter;, "Lcom/android/browser/util/ThreadedCursorAdapter<TT;>;"
    const v2, 0x7f0d0005

    .line 164
    if-nez p2, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p3}, Lcom/android/browser/util/ThreadedCursorAdapter;->newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 168
    :cond_0
    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;

    .line 169
    .local v0, "container":Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;, "Lcom/android/browser/util/ThreadedCursorAdapter<TT;>.LoadContainer;"
    if-nez v0, :cond_1

    .line 170
    new-instance v0, Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;

    .end local v0    # "container":Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;, "Lcom/android/browser/util/ThreadedCursorAdapter<TT;>.LoadContainer;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;-><init>(Lcom/android/browser/util/ThreadedCursorAdapter;Lcom/android/browser/util/ThreadedCursorAdapter$1;)V

    .line 171
    .restart local v0    # "container":Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;, "Lcom/android/browser/util/ThreadedCursorAdapter<TT;>.LoadContainer;"
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;->view:Ljava/lang/ref/WeakReference;

    .line 172
    invoke-virtual {p2, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 174
    :cond_1
    iget v1, v0, Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;->position:I

    if-ne v1, p1, :cond_3

    iget-object v1, v0, Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;->owner:Landroid/widget/Adapter;

    if-ne v1, p0, :cond_3

    iget-boolean v1, v0, Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;->loaded:Z

    if-eqz v1, :cond_3

    iget-wide v1, v0, Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;->generation:J

    iget-wide v3, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mGeneration:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 178
    iget-object v1, v0, Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;->bind_object:Ljava/lang/Object;

    invoke-virtual {p0, p2, v1}, Lcom/android/browser/util/ThreadedCursorAdapter;->bindView(Landroid/view/View;Ljava/lang/Object;)V

    .line 189
    :cond_2
    :goto_0
    return-object p2

    .line 180
    :cond_3
    invoke-direct {p0}, Lcom/android/browser/util/ThreadedCursorAdapter;->cachedLoadObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/android/browser/util/ThreadedCursorAdapter;->bindView(Landroid/view/View;Ljava/lang/Object;)V

    .line 181
    iget-boolean v1, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mHasCursor:Z

    if-eqz v1, :cond_2

    .line 182
    iput p1, v0, Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;->position:I

    .line 183
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;->loaded:Z

    .line 184
    iput-object p0, v0, Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;->owner:Landroid/widget/Adapter;

    .line 185
    iget-wide v1, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mGeneration:J

    iput-wide v1, v0, Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;->generation:J

    .line 186
    iget-object v1, p0, Lcom/android/browser/util/ThreadedCursorAdapter;->mLoadHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public abstract newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
.end method
