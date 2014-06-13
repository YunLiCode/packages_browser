.class public Lcom/android/browser/BookmarksLoader;
.super Landroid/content/CursorLoader;
.source "BookmarksLoader.java"


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field mAccountName:Ljava/lang/String;

.field mAccountType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "thumbnail"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "touch_icon"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "folder"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "position"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "parent"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/BookmarksLoader;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 55
    sget-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Lcom/android/browser/BookmarksLoader;->addAccount(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/browser/BookmarksLoader;->PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iput-object p2, p0, Lcom/android/browser/BookmarksLoader;->mAccountType:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/android/browser/BookmarksLoader;->mAccountName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method static addAccount(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "acct_type"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "acct_name"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setUri(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/browser/BookmarksLoader;->mAccountType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/browser/BookmarksLoader;->mAccountName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/browser/BookmarksLoader;->addAccount(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 64
    return-void
.end method
