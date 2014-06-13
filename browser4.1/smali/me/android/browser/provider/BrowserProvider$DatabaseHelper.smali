.class Lme/android/browser/provider/BrowserProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BrowserProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/provider/BrowserProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 251
    const-string v0, "browser.db"

    const/4 v1, 0x0

    const/16 v2, 0x18

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 252
    iput-object p1, p0, Lme/android/browser/provider/BrowserProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 253
    return-void
.end method

.method static synthetic access$0(Lme/android/browser/provider/BrowserProvider$DatabaseHelper;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lme/android/browser/provider/BrowserProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private removeGears()V
    .locals 1

    .prologue
    .line 341
    new-instance v0, Lme/android/browser/provider/BrowserProvider$DatabaseHelper$1;

    invoke-direct {v0, p0}, Lme/android/browser/provider/BrowserProvider$DatabaseHelper$1;-><init>(Lme/android/browser/provider/BrowserProvider$DatabaseHelper;)V

    .line 385
    invoke-virtual {v0}, Lme/android/browser/provider/BrowserProvider$DatabaseHelper$1;->start()V

    .line 386
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 257
    const-string v4, "CREATE TABLE bookmarks (_id INTEGER PRIMARY KEY,title TEXT,url TEXT NOT NULL,visits INTEGER,date LONG,created LONG,description TEXT,bookmark INTEGER,favicon BLOB DEFAULT NULL,thumbnail BLOB DEFAULT NULL,touch_icon BLOB DEFAULT NULL,user_entered INTEGER);"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 272
    iget-object v4, p0, Lme/android/browser/provider/BrowserProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 273
    const v5, 0x7f09006a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 274
    .local v1, "bookmarks":[Ljava/lang/CharSequence;
    array-length v3, v1

    .line 276
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 286
    :goto_1
    const-string v4, "CREATE TABLE searches (_id INTEGER PRIMARY KEY,search TEXT,date LONG);"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 291
    return-void

    .line 277
    :cond_0
    :try_start_0
    iget-object v4, p0, Lme/android/browser/provider/BrowserProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    add-int/lit8 v5, v2, 0x1

    aget-object v5, v1, v5

    # invokes: Lme/android/browser/provider/BrowserProvider;->replaceSystemPropertyInString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    invoke-static {v4, v5}, Lme/android/browser/provider/BrowserProvider;->access$0(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 278
    .local v0, "bookmarkDestination":Ljava/lang/CharSequence;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "INSERT INTO bookmarks (title, url, visits, date, created, bookmark) VALUES(\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 281
    const-string v5, "\', 0, 0, 0, 1);"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 278
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 283
    .end local v0    # "bookmarkDestination":Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 295
    const-string v0, "BrowserProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Upgrading database from version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 296
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/16 v0, 0x12

    if-ne p2, v0, :cond_0

    .line 298
    const-string v0, "DROP TABLE IF EXISTS labels"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 300
    :cond_0
    const/16 v0, 0x13

    if-gt p2, v0, :cond_1

    .line 301
    const-string v0, "ALTER TABLE bookmarks ADD COLUMN thumbnail BLOB DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 303
    :cond_1
    const/16 v0, 0x15

    if-ge p2, v0, :cond_2

    .line 304
    const-string v0, "ALTER TABLE bookmarks ADD COLUMN touch_icon BLOB DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 306
    :cond_2
    const/16 v0, 0x16

    if-ge p2, v0, :cond_3

    .line 307
    const-string v0, "DELETE FROM bookmarks WHERE (bookmark = 0 AND url LIKE \"%.google.%client=ms-%\")"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 308
    invoke-direct {p0}, Lme/android/browser/provider/BrowserProvider$DatabaseHelper;->removeGears()V

    .line 310
    :cond_3
    const/16 v0, 0x17

    if-ge p2, v0, :cond_4

    .line 311
    const-string v0, "ALTER TABLE bookmarks ADD COLUMN user_entered INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 313
    :cond_4
    const/16 v0, 0x18

    if-ge p2, v0, :cond_5

    .line 315
    const-string v0, "DELETE FROM bookmarks WHERE url IS NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 316
    const-string v0, "ALTER TABLE bookmarks RENAME TO bookmarks_temp;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 317
    const-string v0, "CREATE TABLE bookmarks (_id INTEGER PRIMARY KEY,title TEXT,url TEXT NOT NULL,visits INTEGER,date LONG,created LONG,description TEXT,bookmark INTEGER,favicon BLOB DEFAULT NULL,thumbnail BLOB DEFAULT NULL,touch_icon BLOB DEFAULT NULL,user_entered INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 331
    const-string v0, "INSERT INTO bookmarks SELECT * FROM bookmarks_temp;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 332
    const-string v0, "DROP TABLE bookmarks_temp;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 338
    :goto_0
    return-void

    .line 334
    :cond_5
    const-string v0, "DROP TABLE IF EXISTS bookmarks"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 335
    const-string v0, "DROP TABLE IF EXISTS searches"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0, p1}, Lme/android/browser/provider/BrowserProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method
