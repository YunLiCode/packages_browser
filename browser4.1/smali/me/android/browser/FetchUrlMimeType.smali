.class Lme/android/browser/FetchUrlMimeType;
.super Ljava/lang/Thread;
.source "FetchUrlMimeType.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "FetchUrlMimeType"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCookies:Ljava/lang/String;

.field private mRequest:Landroid/app/DownloadManager$Request;

.field private mUri:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/DownloadManager$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Landroid/app/DownloadManager$Request;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "cookies"    # Ljava/lang/String;
    .param p5, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/FetchUrlMimeType;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lme/android/browser/FetchUrlMimeType;->mRequest:Landroid/app/DownloadManager$Request;

    .line 60
    iput-object p3, p0, Lme/android/browser/FetchUrlMimeType;->mUri:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lme/android/browser/FetchUrlMimeType;->mCookies:Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lme/android/browser/FetchUrlMimeType;->mUserAgent:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 69
    move-object/from16 v0, p0

    iget-object v14, v0, Lme/android/browser/FetchUrlMimeType;->mUserAgent:Ljava/lang/String;

    invoke-static {v14}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    .line 72
    .local v1, "client":Landroid/net/http/AndroidHttpClient;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lme/android/browser/FetchUrlMimeType;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lme/android/browser/FetchUrlMimeType;->mUri:Ljava/lang/String;

    invoke-static {v14, v15}, Landroid/net/Proxy;->getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;

    move-result-object v7

    .line 73
    .local v7, "httpHost":Lorg/apache/http/HttpHost;
    if-eqz v7, :cond_0

    .line 74
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v14

    invoke-static {v14, v7}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    new-instance v11, Lorg/apache/http/client/methods/HttpHead;

    move-object/from16 v0, p0

    iget-object v14, v0, Lme/android/browser/FetchUrlMimeType;->mUri:Ljava/lang/String;

    invoke-direct {v11, v14}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .line 83
    .local v11, "request":Lorg/apache/http/client/methods/HttpHead;
    move-object/from16 v0, p0

    iget-object v14, v0, Lme/android/browser/FetchUrlMimeType;->mCookies:Ljava/lang/String;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lme/android/browser/FetchUrlMimeType;->mCookies:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1

    .line 84
    const-string v14, "Cookie"

    move-object/from16 v0, p0

    iget-object v15, v0, Lme/android/browser/FetchUrlMimeType;->mCookies:Ljava/lang/String;

    invoke-virtual {v11, v14, v15}, Lorg/apache/http/client/methods/HttpHead;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_1
    const/4 v9, 0x0

    .line 89
    .local v9, "mimeType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 91
    .local v2, "contentDisposition":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v1, v11}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 95
    .local v12, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    const/16 v15, 0xc8

    if-ne v14, v15, :cond_3

    .line 96
    const-string v14, "Content-Type"

    invoke-interface {v12, v14}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    .line 97
    .local v6, "header":Lorg/apache/http/Header;
    if-eqz v6, :cond_2

    .line 98
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 99
    const/16 v14, 0x3b

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 100
    .local v13, "semicolonIndex":I
    const/4 v14, -0x1

    if-eq v13, v14, :cond_2

    .line 101
    const/4 v14, 0x0

    invoke-virtual {v9, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 104
    .end local v13    # "semicolonIndex":I
    :cond_2
    const-string v14, "Content-Disposition"

    invoke-interface {v12, v14}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 105
    .local v3, "contentDispositionHeader":Lorg/apache/http/Header;
    if-eqz v3, :cond_3

    .line 106
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 114
    .end local v3    # "contentDispositionHeader":Lorg/apache/http/Header;
    .end local v6    # "header":Lorg/apache/http/Header;
    :cond_3
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 117
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    if-eqz v9, :cond_6

    .line 118
    const-string v14, "text/plain"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 119
    const-string v14, "application/octet-stream"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 121
    :cond_4
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v14

    .line 122
    move-object/from16 v0, p0

    iget-object v15, v0, Lme/android/browser/FetchUrlMimeType;->mUri:Ljava/lang/String;

    invoke-static {v15}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 121
    invoke-virtual {v14, v15}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 123
    .local v10, "newMimeType":Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 124
    move-object/from16 v0, p0

    iget-object v14, v0, Lme/android/browser/FetchUrlMimeType;->mRequest:Landroid/app/DownloadManager$Request;

    invoke-virtual {v14, v10}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 127
    .end local v10    # "newMimeType":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lme/android/browser/FetchUrlMimeType;->mUri:Ljava/lang/String;

    invoke-static {v14, v2, v9}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lme/android/browser/FetchUrlMimeType;->mRequest:Landroid/app/DownloadManager$Request;

    sget-object v15, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v14, v15, v5}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 133
    .end local v5    # "filename":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lme/android/browser/FetchUrlMimeType;->mContext:Landroid/content/Context;

    .line 134
    const-string v15, "download"

    .line 133
    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/DownloadManager;

    .line 135
    .local v8, "manager":Landroid/app/DownloadManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lme/android/browser/FetchUrlMimeType;->mRequest:Landroid/app/DownloadManager$Request;

    invoke-virtual {v8, v14}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 136
    .end local v2    # "contentDisposition":Ljava/lang/String;
    .end local v7    # "httpHost":Lorg/apache/http/HttpHost;
    .end local v8    # "manager":Landroid/app/DownloadManager;
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v11    # "request":Lorg/apache/http/client/methods/HttpHead;
    :goto_1
    return-void

    .line 76
    :catch_0
    move-exception v4

    .line 77
    .local v4, "ex":Ljava/lang/IllegalArgumentException;
    const-string v14, "FetchUrlMimeType"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Download failed: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_1

    .line 109
    .end local v4    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "contentDisposition":Ljava/lang/String;
    .restart local v7    # "httpHost":Lorg/apache/http/HttpHost;
    .restart local v9    # "mimeType":Ljava/lang/String;
    .restart local v11    # "request":Lorg/apache/http/client/methods/HttpHead;
    :catch_1
    move-exception v4

    .line 110
    .restart local v4    # "ex":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v11}, Lorg/apache/http/client/methods/HttpHead;->abort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 111
    .end local v4    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v4

    .line 112
    .local v4, "ex":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v11}, Lorg/apache/http/client/methods/HttpHead;->abort()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 113
    .end local v4    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 114
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 115
    throw v14
.end method
