.class Lme/android/browser/BookmarkUtils$1;
.super Ljava/lang/Object;
.source "BookmarkUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/BookmarkUtils;->displayRemoveBookmarkDialog(JLjava/lang/String;Landroid/content/Context;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$id:J

.field private final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Landroid/os/Message;JLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/BookmarkUtils$1;->val$msg:Landroid/os/Message;

    iput-wide p2, p0, Lme/android/browser/BookmarkUtils$1;->val$id:J

    iput-object p4, p0, Lme/android/browser/BookmarkUtils$1;->val$context:Landroid/content/Context;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 244
    iget-object v1, p0, Lme/android/browser/BookmarkUtils$1;->val$msg:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lme/android/browser/BookmarkUtils$1;->val$msg:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 247
    :cond_0
    new-instance v0, Lme/android/browser/BookmarkUtils$1$1;

    iget-wide v1, p0, Lme/android/browser/BookmarkUtils$1;->val$id:J

    iget-object v3, p0, Lme/android/browser/BookmarkUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2, v3}, Lme/android/browser/BookmarkUtils$1$1;-><init>(Lme/android/browser/BookmarkUtils$1;JLandroid/content/Context;)V

    .line 256
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 257
    return-void
.end method
