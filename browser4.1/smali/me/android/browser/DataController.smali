.class public Lme/android/browser/DataController;
.super Ljava/lang/Object;
.source "DataController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/android/browser/DataController$CallbackContainer;,
        Lme/android/browser/DataController$DCMessage;,
        Lme/android/browser/DataController$DataControllerHandler;,
        Lme/android/browser/DataController$OnQueryUrlIsBookmark;
    }
.end annotation


# static fields
.field private static final HISTORY_UPDATE_TITLE:I = 0x65

.field private static final HISTORY_UPDATE_VISITED:I = 0x64

.field private static final LOGTAG:Ljava/lang/String; = "DataController"

.field private static final QUERY_URL_IS_BOOKMARK:I = 0xc8

.field private static final TAB_DELETE_THUMBNAIL:I = 0xcb

.field private static final TAB_LOAD_THUMBNAIL:I = 0xc9

.field private static final TAB_SAVE_THUMBNAIL:I = 0xca

.field private static sInstance:Lme/android/browser/DataController;


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mCbHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDataHandler:Lme/android/browser/DataController$DataControllerHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/DataController;->mContext:Landroid/content/Context;

    .line 83
    new-instance v0, Lme/android/browser/DataController$DataControllerHandler;

    invoke-direct {v0, p0}, Lme/android/browser/DataController$DataControllerHandler;-><init>(Lme/android/browser/DataController;)V

    iput-object v0, p0, Lme/android/browser/DataController;->mDataHandler:Lme/android/browser/DataController$DataControllerHandler;

    .line 84
    iget-object v0, p0, Lme/android/browser/DataController;->mDataHandler:Lme/android/browser/DataController$DataControllerHandler;

    invoke-virtual {v0}, Lme/android/browser/DataController$DataControllerHandler;->start()V

    .line 85
    new-instance v0, Lme/android/browser/DataController$1;

    invoke-direct {v0, p0}, Lme/android/browser/DataController$1;-><init>(Lme/android/browser/DataController;)V

    iput-object v0, p0, Lme/android/browser/DataController;->mCbHandler:Landroid/os/Handler;

    .line 100
    return-void
.end method

.method static synthetic access$0(Lme/android/browser/DataController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lme/android/browser/DataController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lme/android/browser/DataController;)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lme/android/browser/DataController;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$2(Lme/android/browser/DataController;Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lme/android/browser/DataController;->mBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method static synthetic access$3(Lme/android/browser/DataController;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lme/android/browser/DataController;->mCbHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static getInstance(Landroid/content/Context;)Lme/android/browser/DataController;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 75
    sget-object v0, Lme/android/browser/DataController;->sInstance:Lme/android/browser/DataController;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lme/android/browser/DataController;

    invoke-direct {v0, p0}, Lme/android/browser/DataController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lme/android/browser/DataController;->sInstance:Lme/android/browser/DataController;

    .line 78
    :cond_0
    sget-object v0, Lme/android/browser/DataController;->sInstance:Lme/android/browser/DataController;

    return-object v0
.end method


# virtual methods
.method public deleteThumbnail(Lme/android/browser/Tab;)V
    .locals 4
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 124
    iget-object v0, p0, Lme/android/browser/DataController;->mDataHandler:Lme/android/browser/DataController$DataControllerHandler;

    const/16 v1, 0xcb

    invoke-virtual {p1}, Lme/android/browser/Tab;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lme/android/browser/DataController$DataControllerHandler;->sendMessage(ILjava/lang/Object;)V

    .line 125
    return-void
.end method

.method public loadThumbnail(Lme/android/browser/Tab;)V
    .locals 2
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 120
    iget-object v0, p0, Lme/android/browser/DataController;->mDataHandler:Lme/android/browser/DataController$DataControllerHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p1}, Lme/android/browser/DataController$DataControllerHandler;->sendMessage(ILjava/lang/Object;)V

    .line 121
    return-void
.end method

.method public queryBookmarkStatus(Ljava/lang/String;Lme/android/browser/DataController$OnQueryUrlIsBookmark;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "replyTo"    # Lme/android/browser/DataController$OnQueryUrlIsBookmark;

    .prologue
    .line 111
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 113
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lme/android/browser/DataController$OnQueryUrlIsBookmark;->onQueryUrlIsBookmark(Ljava/lang/String;Z)V

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lme/android/browser/DataController;->mDataHandler:Lme/android/browser/DataController$DataControllerHandler;

    const/16 v1, 0xc8

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lme/android/browser/DataController$DataControllerHandler;->sendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public saveThumbnail(Lme/android/browser/Tab;)V
    .locals 2
    .param p1, "tab"    # Lme/android/browser/Tab;

    .prologue
    .line 128
    iget-object v0, p0, Lme/android/browser/DataController;->mDataHandler:Lme/android/browser/DataController$DataControllerHandler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1, p1}, Lme/android/browser/DataController$DataControllerHandler;->sendMessage(ILjava/lang/Object;)V

    .line 129
    return-void
.end method

.method public updateHistoryTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lme/android/browser/DataController;->mDataHandler:Lme/android/browser/DataController$DataControllerHandler;

    const/16 v1, 0x65

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lme/android/browser/DataController$DataControllerHandler;->sendMessage(ILjava/lang/Object;)V

    .line 108
    return-void
.end method

.method public updateVisitedHistory(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lme/android/browser/DataController;->mDataHandler:Lme/android/browser/DataController$DataControllerHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lme/android/browser/DataController$DataControllerHandler;->sendMessage(ILjava/lang/Object;)V

    .line 104
    return-void
.end method
