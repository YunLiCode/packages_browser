.class Lcom/android/browser/Controller$Download;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Download"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mPrivateBrowsing:Z

.field private mText:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "toDownload"    # Ljava/lang/String;
    .param p3, "privateBrowsing"    # Z
    .param p4, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 2189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2190
    iput-object p1, p0, Lcom/android/browser/Controller$Download;->mActivity:Landroid/app/Activity;

    .line 2191
    iput-object p2, p0, Lcom/android/browser/Controller$Download;->mText:Ljava/lang/String;

    .line 2192
    iput-boolean p3, p0, Lcom/android/browser/Controller$Download;->mPrivateBrowsing:Z

    .line 2193
    iput-object p4, p0, Lcom/android/browser/Controller$Download;->mUserAgent:Ljava/lang/String;

    .line 2194
    return-void
.end method

.method private getTarget(Lcom/android/browser/DataUri;)Ljava/io/File;
    .locals 10
    .param p1, "uri"    # Lcom/android/browser/DataUri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2231
    iget-object v7, p0, Lcom/android/browser/Controller$Download;->mActivity:Landroid/app/Activity;

    sget-object v8, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2232
    .local v0, "dir":Ljava/io/File;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd-HH-mm-ss-"

    invoke-direct {v2, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2233
    .local v2, "format":Ljava/text/DateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 2234
    .local v5, "nameBase":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/browser/DataUri;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 2235
    .local v3, "mimeType":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    .line 2236
    .local v4, "mimeTypeMap":Landroid/webkit/MimeTypeMap;
    invoke-virtual {v4, v3}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2237
    .local v1, "extension":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2238
    const-string v7, "Controller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown mime type in data URI"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    const-string v1, "dat"

    .line 2241
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2242
    invoke-static {v5, v1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 2243
    .local v6, "targetFile":Ljava/io/File;
    return-object v6
.end method

.method private saveDataUri()V
    .locals 14

    .prologue
    .line 2201
    const/4 v10, 0x0

    .line 2203
    .local v10, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v13, Lcom/android/browser/DataUri;

    iget-object v1, p0, Lcom/android/browser/Controller$Download;->mText:Ljava/lang/String;

    invoke-direct {v13, v1}, Lcom/android/browser/DataUri;-><init>(Ljava/lang/String;)V

    .line 2204
    .local v13, "uri":Lcom/android/browser/DataUri;
    invoke-direct {p0, v13}, Lcom/android/browser/Controller$Download;->getTarget(Lcom/android/browser/DataUri;)Ljava/io/File;

    move-result-object v12

    .line 2205
    .local v12, "target":Ljava/io/File;
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2206
    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .local v11, "outputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v13}, Lcom/android/browser/DataUri;->getData()[B

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 2207
    iget-object v1, p0, Lcom/android/browser/Controller$Download;->mActivity:Landroid/app/Activity;

    const-string v2, "download"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 2209
    .local v0, "manager":Landroid/app/DownloadManager;
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Controller$Download;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v13}, Lcom/android/browser/DataUri;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Lcom/android/browser/DataUri;->getData()[B

    move-result-object v6

    array-length v6, v6

    int-to-long v6, v6

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2216
    if-eqz v11, :cond_2

    .line 2218
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v10, v11

    .line 2224
    .end local v0    # "manager":Landroid/app/DownloadManager;
    .end local v11    # "outputStream":Ljava/io/FileOutputStream;
    .end local v12    # "target":Ljava/io/File;
    .end local v13    # "uri":Lcom/android/browser/DataUri;
    .restart local v10    # "outputStream":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 2219
    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "manager":Landroid/app/DownloadManager;
    .restart local v11    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v12    # "target":Ljava/io/File;
    .restart local v13    # "uri":Lcom/android/browser/DataUri;
    :catch_0
    move-exception v1

    move-object v10, v11

    .line 2221
    .end local v11    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 2213
    .end local v0    # "manager":Landroid/app/DownloadManager;
    .end local v12    # "target":Ljava/io/File;
    .end local v13    # "uri":Lcom/android/browser/DataUri;
    :catch_1
    move-exception v9

    .line 2214
    .local v9, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v1, "Controller"

    const-string v2, "Could not save data URL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2216
    if-eqz v10, :cond_0

    .line 2218
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 2219
    :catch_2
    move-exception v1

    goto :goto_0

    .line 2216
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    :goto_2
    if-eqz v10, :cond_1

    .line 2218
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2221
    :cond_1
    :goto_3
    throw v1

    .line 2219
    :catch_3
    move-exception v2

    goto :goto_3

    .line 2216
    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v12    # "target":Ljava/io/File;
    .restart local v13    # "uri":Lcom/android/browser/DataUri;
    :catchall_1
    move-exception v1

    move-object v10, v11

    .end local v11    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 2213
    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "outputStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v9

    move-object v10, v11

    .end local v11    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "manager":Landroid/app/DownloadManager;
    .restart local v11    # "outputStream":Ljava/io/FileOutputStream;
    :cond_2
    move-object v10, v11

    .end local v11    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    .line 2179
    iget-object v0, p0, Lcom/android/browser/Controller$Download;->mText:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/browser/DataUri;->isDataUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2180
    invoke-direct {p0}, Lcom/android/browser/Controller$Download;->saveDataUri()V

    .line 2185
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 2182
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller$Download;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/browser/Controller$Download;->mText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/browser/Controller$Download;->mUserAgent:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/browser/Controller$Download;->mPrivateBrowsing:Z

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/browser/DownloadHandler;->onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
