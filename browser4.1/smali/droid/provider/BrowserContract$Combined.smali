.class public final Ldroid/provider/BrowserContract$Combined;
.super Ljava/lang/Object;
.source "BrowserContract.java"

# interfaces
.implements Ldroid/provider/BrowserContract$CommonColumns;
.implements Ldroid/provider/BrowserContract$HistoryColumns;
.implements Ldroid/provider/BrowserContract$ImageColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldroid/provider/BrowserContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Combined"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final IS_BOOKMARK:Ljava/lang/String; = "bookmark"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 677
    sget-object v0, Ldroid/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "combined"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ldroid/provider/BrowserContract$Combined;->CONTENT_URI:Landroid/net/Uri;

    .line 668
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
