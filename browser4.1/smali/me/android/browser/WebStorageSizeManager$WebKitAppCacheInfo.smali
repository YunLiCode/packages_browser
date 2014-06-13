.class public Lme/android/browser/WebStorageSizeManager$WebKitAppCacheInfo;
.super Ljava/lang/Object;
.source "WebStorageSizeManager.java"

# interfaces
.implements Lme/android/browser/WebStorageSizeManager$AppCacheInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/WebStorageSizeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebKitAppCacheInfo"
.end annotation


# static fields
.field private static final APPCACHE_FILE:Ljava/lang/String; = "ApplicationCache.db"


# instance fields
.field private mAppCachePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lme/android/browser/WebStorageSizeManager$WebKitAppCacheInfo;->mAppCachePath:Ljava/lang/String;

    .line 173
    return-void
.end method


# virtual methods
.method public getAppCacheSizeBytes()J
    .locals 3

    .prologue
    .line 176
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lme/android/browser/WebStorageSizeManager$WebKitAppCacheInfo;->mAppCachePath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 178
    const-string v2, "ApplicationCache.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    return-wide v1
.end method
