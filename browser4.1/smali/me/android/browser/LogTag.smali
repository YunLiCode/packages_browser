.class public Lme/android/browser/LogTag;
.super Ljava/lang/Object;
.source "LogTag.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logBookmarkAdded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    .line 32
    return-void
.end method

.method public static logPageFinishedLoading(Ljava/lang/String;J)V
    .locals 0
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "duration"    # J

    .prologue
    .line 47
    return-void
.end method

.method public static logTimeOnPage(Ljava/lang/String;J)V
    .locals 0
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "duration"    # J

    .prologue
    .line 58
    return-void
.end method
