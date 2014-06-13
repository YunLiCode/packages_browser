.class public Ldroid/provider/BrowserContract;
.super Ljava/lang/Object;
.source "BrowserContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldroid/provider/BrowserContract$Accounts;,
        Ldroid/provider/BrowserContract$BaseSyncColumns;,
        Ldroid/provider/BrowserContract$Bookmarks;,
        Ldroid/provider/BrowserContract$ChromeSyncColumns;,
        Ldroid/provider/BrowserContract$Combined;,
        Ldroid/provider/BrowserContract$CommonColumns;,
        Ldroid/provider/BrowserContract$History;,
        Ldroid/provider/BrowserContract$HistoryColumns;,
        Ldroid/provider/BrowserContract$ImageColumns;,
        Ldroid/provider/BrowserContract$ImageMappingColumns;,
        Ldroid/provider/BrowserContract$ImageMappings;,
        Ldroid/provider/BrowserContract$Images;,
        Ldroid/provider/BrowserContract$Searches;,
        Ldroid/provider/BrowserContract$Settings;,
        Ldroid/provider/BrowserContract$SyncColumns;,
        Ldroid/provider/BrowserContract$SyncState;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "me.android.browser"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"

.field public static final PARAM_LIMIT:Ljava/lang/String; = "limit"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "content://me.android.browser"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ldroid/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
