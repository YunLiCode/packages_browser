.class Lme/android/browser/DownloadTouchIcon;
.super Landroid/os/AsyncTask;
.source "DownloadTouchIcon.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mMessage:Landroid/os/Message;

.field private final mOriginalUrl:Ljava/lang/String;

.field mTab:Lme/android/browser/Tab;

.field private final mUrl:Ljava/lang/String;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 79
    iput-object v1, p0, Lme/android/browser/DownloadTouchIcon;->mTab:Lme/android/browser/Tab;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/DownloadTouchIcon;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lme/android/browser/DownloadTouchIcon;->mContentResolver:Landroid/content/ContentResolver;

    .line 82
    iput-object v1, p0, Lme/android/browser/DownloadTouchIcon;->mOriginalUrl:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lme/android/browser/DownloadTouchIcon;->mUrl:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lme/android/browser/DownloadTouchIcon;->mUserAgent:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "userAgent"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 93
    iput-object p2, p0, Lme/android/browser/DownloadTouchIcon;->mMessage:Landroid/os/Message;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/DownloadTouchIcon;->mContext:Landroid/content/Context;

    .line 95
    iput-object v1, p0, Lme/android/browser/DownloadTouchIcon;->mContentResolver:Landroid/content/ContentResolver;

    .line 96
    iput-object v1, p0, Lme/android/browser/DownloadTouchIcon;->mOriginalUrl:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lme/android/browser/DownloadTouchIcon;->mUrl:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lme/android/browser/DownloadTouchIcon;->mUserAgent:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public constructor <init>(Lme/android/browser/Tab;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "tab"    # Lme/android/browser/Tab;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "cr"    # Landroid/content/ContentResolver;
    .param p4, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 62
    iput-object p1, p0, Lme/android/browser/DownloadTouchIcon;->mTab:Lme/android/browser/Tab;

    .line 63
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/DownloadTouchIcon;->mContext:Landroid/content/Context;

    .line 64
    iput-object p3, p0, Lme/android/browser/DownloadTouchIcon;->mContentResolver:Landroid/content/ContentResolver;

    .line 66
    invoke-virtual {p4}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/DownloadTouchIcon;->mOriginalUrl:Ljava/lang/String;

    .line 67
    invoke-virtual {p4}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/DownloadTouchIcon;->mUrl:Ljava/lang/String;

    .line 68
    invoke-virtual {p4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/DownloadTouchIcon;->mUserAgent:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private storeIcon(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 176
    iget-object v2, p0, Lme/android/browser/DownloadTouchIcon;->mTab:Lme/android/browser/Tab;

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lme/android/browser/DownloadTouchIcon;->mTab:Lme/android/browser/Tab;

    iput-object v5, v2, Lme/android/browser/Tab;->mTouchIconLoader:Lme/android/browser/DownloadTouchIcon;

    .line 181
    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lme/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lme/android/browser/DownloadTouchIcon;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 197
    :cond_1
    :goto_0
    return-void

    .line 185
    :cond_2
    iget-object v2, p0, Lme/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 187
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 189
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 190
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "touch_icon"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 193
    :cond_3
    const-string v2, "url_key"

    iget-object v3, p0, Lme/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lme/android/browser/DownloadTouchIcon;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Ldroid/provider/BrowserContract$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 195
    iget-object v2, p0, Lme/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 192
    if-nez v2, :cond_3

    goto :goto_0
.end method


# virtual methods
.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lme/android/browser/DownloadTouchIcon;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 15
    .param p1, "values"    # [Ljava/lang/String;

    .prologue
    .line 103
    iget-object v12, p0, Lme/android/browser/DownloadTouchIcon;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v12, :cond_0

    .line 104
    iget-object v12, p0, Lme/android/browser/DownloadTouchIcon;->mContentResolver:Landroid/content/ContentResolver;

    .line 105
    iget-object v13, p0, Lme/android/browser/DownloadTouchIcon;->mOriginalUrl:Ljava/lang/String;

    iget-object v14, p0, Lme/android/browser/DownloadTouchIcon;->mUrl:Ljava/lang/String;

    .line 104
    invoke-static {v12, v13, v14}, Lme/android/browser/Bookmarks;->queryCombinedForUrl(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    iput-object v12, p0, Lme/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    .line 108
    :cond_0
    iget-object v12, p0, Lme/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    if-eqz v12, :cond_7

    iget-object v12, p0, Lme/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-lez v12, :cond_7

    const/4 v7, 0x1

    .line 110
    .local v7, "inDatabase":Z
    :goto_0
    const/4 v12, 0x0

    aget-object v11, p1, v12

    .line 112
    .local v11, "url":Ljava/lang/String;
    if-nez v7, :cond_1

    iget-object v12, p0, Lme/android/browser/DownloadTouchIcon;->mMessage:Landroid/os/Message;

    if-eqz v12, :cond_4

    .line 113
    :cond_1
    const/4 v1, 0x0

    .line 114
    .local v1, "client":Landroid/net/http/AndroidHttpClient;
    const/4 v8, 0x0

    .line 117
    .local v8, "request":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    iget-object v12, p0, Lme/android/browser/DownloadTouchIcon;->mUserAgent:Ljava/lang/String;

    invoke-static {v12}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    .line 118
    iget-object v12, p0, Lme/android/browser/DownloadTouchIcon;->mContext:Landroid/content/Context;

    invoke-static {v12, v11}, Landroid/net/Proxy;->getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;

    move-result-object v5

    .line 119
    .local v5, "httpHost":Lorg/apache/http/HttpHost;
    if-eqz v5, :cond_2

    .line 120
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v12

    invoke-static {v12, v5}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 123
    :cond_2
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v9, v11}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local v8    # "request":Lorg/apache/http/client/methods/HttpGet;
    .local v9, "request":Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 128
    invoke-virtual {v1, v9}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 129
    .local v10, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    const/16 v13, 0xc8

    if-ne v12, v13, :cond_3

    .line 130
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 131
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v3, :cond_3

    .line 132
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 133
    .local v2, "content":Ljava/io/InputStream;
    if-eqz v2, :cond_3

    .line 135
    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 134
    invoke-static {v2, v12, v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 136
    .local v6, "icon":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_8

    .line 137
    invoke-direct {p0, v6}, Lme/android/browser/DownloadTouchIcon;->storeIcon(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    .end local v2    # "content":Ljava/io/InputStream;
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "icon":Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 151
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 156
    .end local v1    # "client":Landroid/net/http/AndroidHttpClient;
    .end local v5    # "httpHost":Lorg/apache/http/HttpHost;
    .end local v9    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    :cond_4
    :goto_2
    iget-object v12, p0, Lme/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    if-eqz v12, :cond_5

    .line 157
    iget-object v12, p0, Lme/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 160
    :cond_5
    iget-object v12, p0, Lme/android/browser/DownloadTouchIcon;->mMessage:Landroid/os/Message;

    if-eqz v12, :cond_6

    .line 161
    iget-object v12, p0, Lme/android/browser/DownloadTouchIcon;->mMessage:Landroid/os/Message;

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    .line 164
    :cond_6
    const/4 v12, 0x0

    return-object v12

    .line 108
    .end local v7    # "inDatabase":Z
    .end local v11    # "url":Ljava/lang/String;
    :cond_7
    const/4 v7, 0x0

    goto :goto_0

    .line 138
    .restart local v1    # "client":Landroid/net/http/AndroidHttpClient;
    .restart local v2    # "content":Ljava/io/InputStream;
    .restart local v3    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v5    # "httpHost":Lorg/apache/http/HttpHost;
    .restart local v6    # "icon":Landroid/graphics/Bitmap;
    .restart local v7    # "inDatabase":Z
    .restart local v9    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    .restart local v11    # "url":Ljava/lang/String;
    :cond_8
    :try_start_2
    iget-object v12, p0, Lme/android/browser/DownloadTouchIcon;->mMessage:Landroid/os/Message;

    if-eqz v12, :cond_3

    .line 139
    iget-object v12, p0, Lme/android/browser/DownloadTouchIcon;->mMessage:Landroid/os/Message;

    invoke-virtual {v12}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 140
    .local v0, "b":Landroid/os/Bundle;
    const-string v12, "touch_icon"

    invoke-virtual {v0, v12, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 145
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "content":Ljava/io/InputStream;
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "icon":Landroid/graphics/Bitmap;
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v4

    move-object v8, v9

    .line 146
    .end local v5    # "httpHost":Lorg/apache/http/HttpHost;
    .end local v9    # "request":Lorg/apache/http/client/methods/HttpGet;
    .local v4, "ex":Ljava/lang/Exception;
    .restart local v8    # "request":Lorg/apache/http/client/methods/HttpGet;
    :goto_3
    if-eqz v8, :cond_9

    .line 147
    :try_start_3
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    :cond_9
    if-eqz v1, :cond_4

    .line 151
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_2

    .line 149
    .end local v4    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 150
    :goto_4
    if-eqz v1, :cond_a

    .line 151
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 153
    :cond_a
    throw v12

    .line 149
    .end local v8    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "httpHost":Lorg/apache/http/HttpHost;
    .restart local v9    # "request":Lorg/apache/http/client/methods/HttpGet;
    :catchall_1
    move-exception v12

    move-object v8, v9

    .end local v9    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "request":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_4

    .line 145
    .end local v5    # "httpHost":Lorg/apache/http/HttpHost;
    :catch_1
    move-exception v4

    goto :goto_3
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lme/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lme/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 172
    :cond_0
    return-void
.end method
