.class public Lme/android/browser/homepages/RequestHandler;
.super Ljava/lang/Thread;
.source "RequestHandler.java"


# static fields
.field private static final INDEX:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final RESOURCE:I = 0x2

.field private static final SELECTION:Ljava/lang/String; = "url NOT LIKE \'content:%\' AND thumbnail IS NOT NULL"

.field private static final TAG:Ljava/lang/String; = "RequestHandler"

.field private static final sFileComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field mContext:Landroid/content/Context;

.field mOutput:Ljava/io/OutputStream;

.field mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 50
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lme/android/browser/homepages/RequestHandler;->sUriMatcher:Landroid/content/UriMatcher;

    .line 57
    sget-object v0, Lme/android/browser/homepages/RequestHandler;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "me.android.browser.home"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    sget-object v0, Lme/android/browser/homepages/RequestHandler;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "me.android.browser.home"

    const-string v2, "res/*/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 103
    const-string v2, "url"

    aput-object v2, v0, v1

    .line 104
    const-string v1, "title"

    aput-object v1, v0, v3

    .line 105
    const-string v1, "thumbnail"

    aput-object v1, v0, v4

    .line 102
    sput-object v0, Lme/android/browser/homepages/RequestHandler;->PROJECTION:[Ljava/lang/String;

    .line 148
    new-instance v0, Lme/android/browser/homepages/RequestHandler$1;

    invoke-direct {v0}, Lme/android/browser/homepages/RequestHandler$1;-><init>()V

    sput-object v0, Lme/android/browser/homepages/RequestHandler;->sFileComparator:Ljava/util/Comparator;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 62
    iput-object p2, p0, Lme/android/browser/homepages/RequestHandler;->mUri:Landroid/net/Uri;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/homepages/RequestHandler;->mContext:Landroid/content/Context;

    .line 64
    iput-object p3, p0, Lme/android/browser/homepages/RequestHandler;->mOutput:Ljava/io/OutputStream;

    .line 65
    return-void
.end method

.method static readableFileSize(J)Ljava/lang/String;
    .locals 10
    .param p0, "size"    # J

    .prologue
    const-wide/high16 v8, 0x4090000000000000L

    .line 217
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gtz v2, :cond_0

    const-string v2, "0"

    .line 220
    :goto_0
    return-object v2

    .line 218
    :cond_0
    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "B"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "KB"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "MB"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "GB"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "TB"

    aput-object v3, v1, v2

    .line 219
    .local v1, "units":[Ljava/lang/String;
    long-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-int v0, v2

    .line 220
    .local v0, "digitGroups":I
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#,##0.#"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 221
    long-to-double v4, p0

    int-to-double v6, v0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 220
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method cleanup()V
    .locals 3

    .prologue
    .line 258
    :try_start_0
    iget-object v1, p0, Lme/android/browser/homepages/RequestHandler;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RequestHandler"

    const-string v2, "Failed to close pipe!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method doHandleRequest()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    const-string v1, "file"

    iget-object v2, p0, Lme/android/browser/homepages/RequestHandler;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lme/android/browser/homepages/RequestHandler;->writeFolderIndex()V

    .line 93
    :goto_0
    return-void

    .line 84
    :cond_0
    sget-object v1, Lme/android/browser/homepages/RequestHandler;->sUriMatcher:Landroid/content/UriMatcher;

    iget-object v2, p0, Lme/android/browser/homepages/RequestHandler;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 85
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 87
    :pswitch_0
    invoke-virtual {p0}, Lme/android/browser/homepages/RequestHandler;->writeTemplatedIndex()V

    goto :goto_0

    .line 90
    :pswitch_1
    invoke-virtual {p0}, Lme/android/browser/homepages/RequestHandler;->getUriResourcePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/android/browser/homepages/RequestHandler;->writeResource(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getUriResourcePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 225
    const-string v2, "/?res/([\\w/]+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 226
    .local v1, "pattern":Ljava/util/regex/Pattern;
    iget-object v2, p0, Lme/android/browser/homepages/RequestHandler;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 227
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 230
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lme/android/browser/homepages/RequestHandler;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method htmlEncode(Ljava/lang/String;)[B
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 69
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lme/android/browser/homepages/RequestHandler;->doHandleRequest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-virtual {p0}, Lme/android/browser/homepages/RequestHandler;->cleanup()V

    .line 77
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "RequestHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to handle request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lme/android/browser/homepages/RequestHandler;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    invoke-virtual {p0}, Lme/android/browser/homepages/RequestHandler;->cleanup()V

    goto :goto_0

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 75
    invoke-virtual {p0}, Lme/android/browser/homepages/RequestHandler;->cleanup()V

    .line 76
    throw v1
.end method

.method writeFolderIndex()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lme/android/browser/homepages/RequestHandler;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 161
    .local v1, "files":[Ljava/io/File;
    sget-object v3, Lme/android/browser/homepages/RequestHandler;->sFileComparator:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 162
    iget-object v3, p0, Lme/android/browser/homepages/RequestHandler;->mContext:Landroid/content/Context;

    const v4, 0x7f07000e

    invoke-static {v3, v4}, Lme/android/browser/homepages/Template;->getCachedTemplate(Landroid/content/Context;I)Lme/android/browser/homepages/Template;

    move-result-object v2

    .line 163
    .local v2, "t":Lme/android/browser/homepages/Template;
    const-string v3, "path"

    iget-object v4, p0, Lme/android/browser/homepages/RequestHandler;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lme/android/browser/homepages/Template;->assign(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v4, "parent_url"

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v4, v3}, Lme/android/browser/homepages/Template;->assign(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v3, "files"

    new-instance v4, Lme/android/browser/homepages/RequestHandler$4;

    invoke-direct {v4, p0, v1}, Lme/android/browser/homepages/RequestHandler$4;-><init>(Lme/android/browser/homepages/RequestHandler;[Ljava/io/File;)V

    invoke-virtual {v2, v3, v4}, Lme/android/browser/homepages/Template;->assignLoop(Ljava/lang/String;Lme/android/browser/homepages/Template$ListEntityIterator;)V

    .line 213
    iget-object v3, p0, Lme/android/browser/homepages/RequestHandler;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v2, v3}, Lme/android/browser/homepages/Template;->write(Ljava/io/OutputStream;)V

    .line 214
    return-void

    .line 164
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method writeResource(Ljava/lang/String;)V
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v6, p0, Lme/android/browser/homepages/RequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 236
    .local v5, "res":Landroid/content/res/Resources;
    const-class v6, Lme/android/browser/R;

    invoke-virtual {v6}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 238
    .local v1, "id":I
    if-eqz v1, :cond_0

    .line 239
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 240
    .local v2, "in":Ljava/io/InputStream;
    const/16 v6, 0x1000

    new-array v0, v6, [B

    .line 242
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "read":I
    if-gtz v4, :cond_1

    .line 246
    .end local v0    # "buf":[B
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v4    # "read":I
    :cond_0
    return-void

    .line 243
    .restart local v0    # "buf":[B
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v4    # "read":I
    :cond_1
    iget-object v6, p0, Lme/android/browser/homepages/RequestHandler;->mOutput:Ljava/io/OutputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method writeString(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lme/android/browser/homepages/RequestHandler;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 250
    return-void
.end method

.method writeString(Ljava/lang/String;II)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lme/android/browser/homepages/RequestHandler;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 254
    return-void
.end method

.method writeTemplatedIndex()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 110
    iget-object v0, p0, Lme/android/browser/homepages/RequestHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f07000f

    invoke-static {v0, v1}, Lme/android/browser/homepages/Template;->getCachedTemplate(Landroid/content/Context;I)Lme/android/browser/homepages/Template;

    move-result-object v10

    .line 111
    .local v10, "t":Lme/android/browser/homepages/Template;
    iget-object v0, p0, Lme/android/browser/homepages/RequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 112
    sget-object v1, Ldroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lme/android/browser/homepages/RequestHandler;->PROJECTION:[Ljava/lang/String;

    const-string v3, "url NOT LIKE \'content:%\' AND thumbnail IS NOT NULL"

    .line 113
    const-string v5, "visits DESC LIMIT 12"

    .line 111
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 114
    .local v9, "historyResults":Landroid/database/Cursor;
    move-object v7, v9

    .line 116
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lme/android/browser/homepages/RequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 118
    sget-object v1, Ldroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lme/android/browser/homepages/RequestHandler;->PROJECTION:[Ljava/lang/String;

    const-string v3, "url NOT LIKE \'content:%\' AND thumbnail IS NOT NULL"

    .line 119
    const/4 v4, 0x0

    const-string v5, "created DESC LIMIT 12"

    .line 117
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 120
    .local v6, "bookmarkResults":Landroid/database/Cursor;
    new-instance v8, Lme/android/browser/homepages/RequestHandler$2;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/database/Cursor;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    const/4 v1, 0x1

    aput-object v6, v0, v1

    invoke-direct {v8, p0, v0}, Lme/android/browser/homepages/RequestHandler$2;-><init>(Lme/android/browser/homepages/RequestHandler;[Landroid/database/Cursor;)V

    .end local v7    # "cursor":Landroid/database/Cursor;
    .local v8, "cursor":Landroid/database/Cursor;
    move-object v7, v8

    .line 127
    .end local v6    # "bookmarkResults":Landroid/database/Cursor;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_0
    const-string v0, "most_visited"

    new-instance v1, Lme/android/browser/homepages/RequestHandler$3;

    invoke-direct {v1, p0, v7}, Lme/android/browser/homepages/RequestHandler$3;-><init>(Lme/android/browser/homepages/RequestHandler;Landroid/database/Cursor;)V

    invoke-virtual {v10, v0, v1}, Lme/android/browser/homepages/Template;->assignLoop(Ljava/lang/String;Lme/android/browser/homepages/Template$ListEntityIterator;)V

    .line 142
    iget-object v0, p0, Lme/android/browser/homepages/RequestHandler;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v10, v0}, Lme/android/browser/homepages/Template;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 146
    return-void

    .line 143
    :catchall_0
    move-exception v0

    .line 144
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 145
    throw v0
.end method
