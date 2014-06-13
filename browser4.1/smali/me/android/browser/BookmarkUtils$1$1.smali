.class Lme/android/browser/BookmarkUtils$1$1;
.super Ljava/lang/Object;
.source "BookmarkUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/BookmarkUtils$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lme/android/browser/BookmarkUtils$1;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$id:J


# direct methods
.method constructor <init>(Lme/android/browser/BookmarkUtils$1;JLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/BookmarkUtils$1$1;->this$1:Lme/android/browser/BookmarkUtils$1;

    iput-wide p2, p0, Lme/android/browser/BookmarkUtils$1$1;->val$id:J

    iput-object p4, p0, Lme/android/browser/BookmarkUtils$1$1;->val$context:Landroid/content/Context;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 251
    sget-object v1, Ldroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    .line 252
    iget-wide v2, p0, Lme/android/browser/BookmarkUtils$1$1;->val$id:J

    .line 250
    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 253
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lme/android/browser/BookmarkUtils$1$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 254
    return-void
.end method
