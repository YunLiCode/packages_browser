.class public final Ldroid/provider/BrowserContract$ImageMappings;
.super Ljava/lang/Object;
.source "BrowserContract.java"

# interfaces
.implements Ldroid/provider/BrowserContract$ImageMappingColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldroid/provider/BrowserContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageMappings"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/image_mappings"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/image_mappings"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 650
    sget-object v0, Ldroid/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "image_mappings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ldroid/provider/BrowserContract$ImageMappings;->CONTENT_URI:Landroid/net/Uri;

    .line 641
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method