.class Lme/android/browser/BrowserSnapshotPage$1;
.super Ljava/lang/Thread;
.source "BrowserSnapshotPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/BrowserSnapshotPage;->deleteSnapshot(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/BrowserSnapshotPage;

.field private final synthetic val$cr:Landroid/content/ContentResolver;

.field private final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lme/android/browser/BrowserSnapshotPage;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/BrowserSnapshotPage$1;->this$0:Lme/android/browser/BrowserSnapshotPage;

    iput-object p2, p0, Lme/android/browser/BrowserSnapshotPage$1;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lme/android/browser/BrowserSnapshotPage$1;->val$uri:Landroid/net/Uri;

    .line 196
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v0, p0, Lme/android/browser/BrowserSnapshotPage$1;->val$cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lme/android/browser/BrowserSnapshotPage$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 200
    return-void
.end method
