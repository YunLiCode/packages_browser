.class Lcom/android/browser/util/ThreadedCursorAdapter$2;
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
.method constructor <init>(Lcom/android/browser/util/ThreadedCursorAdapter;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 96
    .local p0, "this":Lcom/android/browser/util/ThreadedCursorAdapter$2;, "Lcom/android/browser/util/ThreadedCursorAdapter.2;"
    iput-object p1, p0, Lcom/android/browser/util/ThreadedCursorAdapter$2;->this$0:Lcom/android/browser/util/ThreadedCursorAdapter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 103
    .local p0, "this":Lcom/android/browser/util/ThreadedCursorAdapter$2;, "Lcom/android/browser/util/ThreadedCursorAdapter.2;"
    iget-object v1, p0, Lcom/android/browser/util/ThreadedCursorAdapter$2;->this$0:Lcom/android/browser/util/ThreadedCursorAdapter;

    iget v2, p1, Landroid/os/Message;->what:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;

    # invokes: Lcom/android/browser/util/ThreadedCursorAdapter;->loadRowObject(ILcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;)V
    invoke-static {v1, v2, v0}, Lcom/android/browser/util/ThreadedCursorAdapter;->access$200(Lcom/android/browser/util/ThreadedCursorAdapter;ILcom/android/browser/util/ThreadedCursorAdapter$LoadContainer;)V

    .line 104
    return-void
.end method
