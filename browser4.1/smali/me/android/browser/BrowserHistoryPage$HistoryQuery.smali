.class interface abstract Lme/android/browser/BrowserHistoryPage$HistoryQuery;
.super Ljava/lang/Object;
.source "BrowserHistoryPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/BrowserHistoryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "HistoryQuery"
.end annotation


# static fields
.field public static final INDEX_DATE_LAST_VISITED:I = 0x1

.field public static final INDEX_FAVICON:I = 0x4

.field public static final INDEX_ID:I = 0x0

.field public static final INDEX_IS_BOOKMARK:I = 0x6

.field public static final INDEX_TITE:I = 0x2

.field public static final INDEX_URL:I = 0x3

.field public static final INDEX_VISITS:I = 0x5

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 89
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 90
    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 91
    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 92
    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 93
    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 94
    const-string v2, "visits"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 95
    const-string v2, "bookmark"

    aput-object v2, v0, v1

    .line 88
    sput-object v0, Lme/android/browser/BrowserHistoryPage$HistoryQuery;->PROJECTION:[Ljava/lang/String;

    .line 87
    return-void
.end method
