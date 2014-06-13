.class public interface abstract Lme/android/browser/provider/SnapshotProvider$Snapshots;
.super Ljava/lang/Object;
.source "SnapshotProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/provider/SnapshotProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Snapshots"
.end annotation


# static fields
.field public static final BACKGROUND:Ljava/lang/String; = "background"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATE_CREATED:Ljava/lang/String; = "date_created"

.field public static final FAVICON:Ljava/lang/String; = "favicon"

.field public static final THUMBNAIL:Ljava/lang/String; = "thumbnail"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final VIEWSTATE:Ljava/lang/String; = "view_state"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VIEWSTATE_PATH:Ljava/lang/String; = "viewstate_path"

.field public static final VIEWSTATE_SIZE:Ljava/lang/String; = "viewstate_size"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lme/android/browser/provider/SnapshotProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "snapshots"

    .line 39
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lme/android/browser/provider/SnapshotProvider$Snapshots;->CONTENT_URI:Landroid/net/Uri;

    .line 37
    return-void
.end method
