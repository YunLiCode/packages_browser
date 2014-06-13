.class Lme/android/browser/Controller$10;
.super Landroid/os/AsyncTask;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/Controller;->updateScreenshot(Lme/android/browser/Tab;)V
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
.field final synthetic this$0:Lme/android/browser/Controller;

.field private final synthetic val$bm:Landroid/graphics/Bitmap;

.field private final synthetic val$cr:Landroid/content/ContentResolver;

.field private final synthetic val$originalUrl:Ljava/lang/String;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lme/android/browser/Controller;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/Controller$10;->this$0:Lme/android/browser/Controller;

    iput-object p2, p0, Lme/android/browser/Controller$10;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lme/android/browser/Controller$10;->val$originalUrl:Ljava/lang/String;

    iput-object p4, p0, Lme/android/browser/Controller$10;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lme/android/browser/Controller$10;->val$bm:Landroid/graphics/Bitmap;

    .line 2116
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lme/android/browser/Controller$10;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "unused"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x0

    .line 2119
    const/4 v0, 0x0

    .line 2122
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lme/android/browser/Controller$10;->val$cr:Landroid/content/ContentResolver;

    iget-object v4, p0, Lme/android/browser/Controller$10;->val$originalUrl:Ljava/lang/String;

    iget-object v5, p0, Lme/android/browser/Controller$10;->val$url:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lme/android/browser/Bookmarks;->queryCombinedForUrl(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2123
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2125
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2126
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    iget-object v3, p0, Lme/android/browser/Controller$10;->val$bm:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2128
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2129
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "thumbnail"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2132
    :cond_0
    const-string v3, "url_key"

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2133
    iget-object v3, p0, Lme/android/browser/Controller$10;->val$cr:Landroid/content/ContentResolver;

    sget-object v4, Ldroid/provider/BrowserContract$Images;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2134
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 2131
    if-nez v3, :cond_0

    .line 2139
    .end local v1    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2141
    :cond_2
    :goto_0
    return-object v7

    .line 2136
    :catch_0
    move-exception v3

    .line 2139
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2138
    :catchall_0
    move-exception v3

    .line 2139
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2140
    :cond_3
    throw v3
.end method
