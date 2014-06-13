.class Lcom/android/browser/Controller$10;
.super Landroid/os/AsyncTask;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Controller;->updateScreenshot(Lcom/android/browser/Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Controller;

.field final synthetic val$bm:Landroid/graphics/Bitmap;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$originalUrl:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/Controller;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 2121
    iput-object p1, p0, Lcom/android/browser/Controller$10;->this$0:Lcom/android/browser/Controller;

    iput-object p2, p0, Lcom/android/browser/Controller$10;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/browser/Controller$10;->val$originalUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/browser/Controller$10;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/browser/Controller$10;->val$bm:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2121
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller$10;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "unused"    # [Ljava/lang/Void;

    .prologue
    const/4 v8, 0x0

    .line 2124
    const/4 v0, 0x0

    .line 2127
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/android/browser/Controller$10;->val$cr:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/browser/Controller$10;->val$originalUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/browser/Controller$10;->val$url:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/android/browser/Bookmarks;->queryCombinedForUrl(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2128
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2129
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2131
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    iget-object v4, p0, Lcom/android/browser/Controller$10;->val$bm:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2133
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2134
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "thumbnail"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2137
    :cond_0
    const-string v4, "url_key"

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    iget-object v4, p0, Lcom/android/browser/Controller$10;->val$cr:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/BrowserContract$Images;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2139
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 2148
    .end local v1    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2150
    :cond_2
    :goto_0
    return-object v8

    .line 2141
    :catch_0
    move-exception v4

    .line 2148
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2143
    :catch_1
    move-exception v2

    .line 2146
    .local v2, "s":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v4, "Controller"

    const-string v5, "Error when running updateScreenshot "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2148
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v2    # "s":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v4
.end method
