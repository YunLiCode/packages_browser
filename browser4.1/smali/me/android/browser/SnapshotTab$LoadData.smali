.class Lme/android/browser/SnapshotTab$LoadData;
.super Landroid/os/AsyncTask;
.source "SnapshotTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/SnapshotTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field static final PROJECTION:[Ljava/lang/String;

.field static final SNAPSHOT_BACKGROUND:I = 0x5

.field static final SNAPSHOT_DATE_CREATED:I = 0x6

.field static final SNAPSHOT_FAVICON:I = 0x3

.field static final SNAPSHOT_ID:I = 0x0

.field static final SNAPSHOT_TITLE:I = 0x2

.field static final SNAPSHOT_URL:I = 0x1

.field static final SNAPSHOT_VIEWSTATE:I = 0x4

.field static final SNAPSHOT_VIEWSTATE_PATH:I = 0x7


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mTab:Lme/android/browser/SnapshotTab;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 157
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 158
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 159
    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 160
    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 161
    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 162
    const-string v2, "view_state"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 163
    const-string v2, "background"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 164
    const-string v2, "date_created"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 165
    const-string v2, "viewstate_path"

    aput-object v2, v0, v1

    .line 157
    sput-object v0, Lme/android/browser/SnapshotTab$LoadData;->PROJECTION:[Ljava/lang/String;

    .line 155
    return-void
.end method

.method public constructor <init>(Lme/android/browser/SnapshotTab;Landroid/content/Context;)V
    .locals 1
    .param p1, "t"    # Lme/android/browser/SnapshotTab;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 181
    iput-object p1, p0, Lme/android/browser/SnapshotTab$LoadData;->mTab:Lme/android/browser/SnapshotTab;

    .line 182
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/SnapshotTab$LoadData;->mContentResolver:Landroid/content/ContentResolver;

    .line 183
    iput-object p2, p0, Lme/android/browser/SnapshotTab$LoadData;->mContext:Landroid/content/Context;

    .line 184
    return-void
.end method

.method private getInputStream(Landroid/database/Cursor;)Ljava/io/InputStream;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 194
    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 196
    iget-object v3, p0, Lme/android/browser/SnapshotTab$LoadData;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    .line 198
    :cond_0
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 199
    .local v1, "data":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 200
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 188
    iget-object v0, p0, Lme/android/browser/SnapshotTab$LoadData;->mTab:Lme/android/browser/SnapshotTab;

    # getter for: Lme/android/browser/SnapshotTab;->mSnapshotId:J
    invoke-static {v0}, Lme/android/browser/SnapshotTab;->access$15(Lme/android/browser/SnapshotTab;)J

    move-result-wide v6

    .line 189
    .local v6, "id":J
    sget-object v0, Lme/android/browser/provider/SnapshotProvider$Snapshots;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 190
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lme/android/browser/SnapshotTab$LoadData;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lme/android/browser/SnapshotTab$LoadData;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lme/android/browser/SnapshotTab$LoadData;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 9
    .param p1, "result"    # Landroid/database/Cursor;

    .prologue
    const/4 v8, 0x0

    .line 206
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 207
    iget-object v5, p0, Lme/android/browser/SnapshotTab$LoadData;->mTab:Lme/android/browser/SnapshotTab;

    iget-object v5, v5, Lme/android/browser/SnapshotTab;->mCurrentState:Lme/android/browser/Tab$PageState;

    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lme/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    .line 208
    iget-object v5, p0, Lme/android/browser/SnapshotTab$LoadData;->mTab:Lme/android/browser/SnapshotTab;

    iget-object v5, v5, Lme/android/browser/SnapshotTab;->mCurrentState:Lme/android/browser/Tab$PageState;

    const/4 v6, 0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lme/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    .line 209
    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 210
    .local v1, "favicon":[B
    if-eqz v1, :cond_0

    .line 211
    iget-object v5, p0, Lme/android/browser/SnapshotTab$LoadData;->mTab:Lme/android/browser/SnapshotTab;

    iget-object v5, v5, Lme/android/browser/SnapshotTab;->mCurrentState:Lme/android/browser/Tab$PageState;

    .line 212
    const/4 v6, 0x0

    array-length v7, v1

    invoke-static {v1, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 211
    iput-object v6, v5, Lme/android/browser/Tab$PageState;->mFavicon:Landroid/graphics/Bitmap;

    .line 214
    :cond_0
    iget-object v5, p0, Lme/android/browser/SnapshotTab$LoadData;->mTab:Lme/android/browser/SnapshotTab;

    invoke-virtual {v5}, Lme/android/browser/SnapshotTab;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v4

    .line 215
    .local v4, "web":Landroid/webkit/WebViewClassic;
    if-eqz v4, :cond_1

    .line 216
    invoke-direct {p0, p1}, Lme/android/browser/SnapshotTab$LoadData;->getInputStream(Landroid/database/Cursor;)Ljava/io/InputStream;

    move-result-object v2

    .line 217
    .local v2, "ins":Ljava/io/InputStream;
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 218
    .local v3, "stream":Ljava/util/zip/GZIPInputStream;
    invoke-virtual {v4, v3}, Landroid/webkit/WebViewClassic;->loadViewState(Ljava/io/InputStream;)V

    .line 220
    .end local v2    # "ins":Ljava/io/InputStream;
    .end local v3    # "stream":Ljava/util/zip/GZIPInputStream;
    :cond_1
    iget-object v5, p0, Lme/android/browser/SnapshotTab$LoadData;->mTab:Lme/android/browser/SnapshotTab;

    const/4 v6, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v5, v6}, Lme/android/browser/SnapshotTab;->access$17(Lme/android/browser/SnapshotTab;I)V

    .line 221
    iget-object v5, p0, Lme/android/browser/SnapshotTab$LoadData;->mTab:Lme/android/browser/SnapshotTab;

    const/4 v6, 0x6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lme/android/browser/SnapshotTab;->access$18(Lme/android/browser/SnapshotTab;J)V

    .line 222
    iget-object v5, p0, Lme/android/browser/SnapshotTab$LoadData;->mTab:Lme/android/browser/SnapshotTab;

    iget-object v5, v5, Lme/android/browser/SnapshotTab;->mWebViewController:Lme/android/browser/WebViewController;

    iget-object v6, p0, Lme/android/browser/SnapshotTab$LoadData;->mTab:Lme/android/browser/SnapshotTab;

    invoke-interface {v5, v6}, Lme/android/browser/WebViewController;->onPageFinished(Lme/android/browser/Tab;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    .end local v1    # "favicon":[B
    .end local v4    # "web":Landroid/webkit/WebViewClassic;
    :cond_2
    if-eqz p1, :cond_3

    .line 229
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_3
    iget-object v5, p0, Lme/android/browser/SnapshotTab$LoadData;->mTab:Lme/android/browser/SnapshotTab;

    invoke-static {v5, v8}, Lme/android/browser/SnapshotTab;->access$16(Lme/android/browser/SnapshotTab;Lme/android/browser/SnapshotTab$LoadData;)V

    .line 233
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "SnapshotTab"

    const-string v6, "Failed to load view state, closing tab"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    iget-object v5, p0, Lme/android/browser/SnapshotTab$LoadData;->mTab:Lme/android/browser/SnapshotTab;

    iget-object v5, v5, Lme/android/browser/SnapshotTab;->mWebViewController:Lme/android/browser/WebViewController;

    iget-object v6, p0, Lme/android/browser/SnapshotTab$LoadData;->mTab:Lme/android/browser/SnapshotTab;

    invoke-interface {v5, v6}, Lme/android/browser/WebViewController;->closeTab(Lme/android/browser/Tab;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    if-eqz p1, :cond_4

    .line 229
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_4
    iget-object v5, p0, Lme/android/browser/SnapshotTab$LoadData;->mTab:Lme/android/browser/SnapshotTab;

    invoke-static {v5, v8}, Lme/android/browser/SnapshotTab;->access$16(Lme/android/browser/SnapshotTab;Lme/android/browser/SnapshotTab$LoadData;)V

    goto :goto_0

    .line 227
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 228
    if-eqz p1, :cond_5

    .line 229
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_5
    iget-object v6, p0, Lme/android/browser/SnapshotTab$LoadData;->mTab:Lme/android/browser/SnapshotTab;

    invoke-static {v6, v8}, Lme/android/browser/SnapshotTab;->access$16(Lme/android/browser/SnapshotTab;Lme/android/browser/SnapshotTab$LoadData;)V

    .line 232
    throw v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lme/android/browser/SnapshotTab$LoadData;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
