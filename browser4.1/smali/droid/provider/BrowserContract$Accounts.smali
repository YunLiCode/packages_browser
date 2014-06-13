.class public final Ldroid/provider/BrowserContract$Accounts;
.super Ljava/lang/Object;
.source "BrowserContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldroid/provider/BrowserContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Accounts"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ROOT_ID:Ljava/lang/String; = "root_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 412
    sget-object v0, Ldroid/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "accounts"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 411
    sput-object v0, Ldroid/provider/BrowserContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    .line 407
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
