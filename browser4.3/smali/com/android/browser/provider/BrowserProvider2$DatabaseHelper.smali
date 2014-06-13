.class final Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BrowserProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/provider/BrowserProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/provider/BrowserProvider2;


# direct methods
.method public constructor <init>(Lcom/android/browser/provider/BrowserProvider2;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/BrowserProvider2;

    .line 396
    const-string v0, "browser2.db"

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 397
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 398
    return-void
.end method

.method private addDefaultBookmarks(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 16
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "parentId"    # J

    .prologue
    .line 657
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/BrowserProvider2;

    invoke-virtual {v14}, Lcom/android/browser/provider/BrowserProvider2;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 658
    .local v10, "res":Landroid/content/res/Resources;
    const v14, 0x7f08006a

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 660
    .local v2, "bookmarks":[Ljava/lang/CharSequence;
    array-length v11, v2

    .line 661
    .local v11, "size":I
    const v14, 0x7f080059

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 663
    .local v9, "preloads":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 664
    .local v8, "parent":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 665
    .local v7, "now":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v11, :cond_4

    .line 666
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/BrowserProvider2;

    invoke-virtual {v14}, Lcom/android/browser/provider/BrowserProvider2;->getContext()Landroid/content/Context;

    move-result-object v14

    add-int/lit8 v15, v5, 0x1

    aget-object v15, v2, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->replaceSystemPropertyInString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 668
    .local v1, "bookmarkDestination":Ljava/lang/CharSequence;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "INSERT INTO bookmarks (title, url, folder,parent,position,created) VALUES (\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v2, v5

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\', "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\', "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "0,"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ");"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 684
    const/4 v14, 0x0

    invoke-virtual {v9, v5, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 685
    .local v4, "faviconId":I
    add-int/lit8 v14, v5, 0x1

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    .line 686
    .local v13, "thumbId":I
    const/4 v12, 0x0

    .local v12, "thumb":[B
    const/4 v3, 0x0

    .line 688
    .local v3, "favicon":[B
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->readRaw(Landroid/content/res/Resources;I)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    .line 692
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->readRaw(Landroid/content/res/Resources;I)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 695
    :goto_2
    if-nez v12, :cond_0

    if-eqz v3, :cond_3

    .line 696
    :cond_0
    :try_start_3
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 697
    .local v6, "imageValues":Landroid/content/ContentValues;
    const-string v14, "url_key"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    if-eqz v3, :cond_1

    .line 699
    const-string v14, "favicon"

    invoke-virtual {v6, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 701
    :cond_1
    if-eqz v12, :cond_2

    .line 702
    const-string v14, "thumbnail"

    invoke-virtual {v6, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 704
    :cond_2
    const-string v14, "images"

    const-string v15, "favicon"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 665
    .end local v6    # "imageValues":Landroid/content/ContentValues;
    :cond_3
    add-int/lit8 v5, v5, 0x2

    goto/16 :goto_0

    .line 709
    .end local v1    # "bookmarkDestination":Ljava/lang/CharSequence;
    .end local v3    # "favicon":[B
    .end local v4    # "faviconId":I
    .end local v12    # "thumb":[B
    .end local v13    # "thumbId":I
    :cond_4
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 711
    .end local v5    # "i":I
    .end local v7    # "now":Ljava/lang/String;
    .end local v8    # "parent":Ljava/lang/String;
    :goto_3
    return-void

    .line 707
    :catch_0
    move-exception v14

    .line 709
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :catchall_0
    move-exception v14

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    throw v14

    .line 689
    .restart local v1    # "bookmarkDestination":Ljava/lang/CharSequence;
    .restart local v3    # "favicon":[B
    .restart local v4    # "faviconId":I
    .restart local v5    # "i":I
    .restart local v7    # "now":Ljava/lang/String;
    .restart local v8    # "parent":Ljava/lang/String;
    .restart local v12    # "thumb":[B
    .restart local v13    # "thumbId":I
    :catch_1
    move-exception v14

    goto :goto_1

    .line 693
    :catch_2
    move-exception v14

    goto :goto_2
.end method

.method private createDefaultBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const-wide/16 v4, 0x1

    const/4 v3, 0x1

    .line 640
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 644
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 645
    const-string v1, "sync3"

    const-string v2, "google_chrome_bookmarks"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v1, "title"

    const-string v2, "Bookmarks"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v1, "parent"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 648
    const-string v1, "position"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 649
    const-string v1, "folder"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 650
    const-string v1, "dirty"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 651
    const-string v1, "bookmarks"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 653
    invoke-direct {p0, p1, v4, v5}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->addDefaultBookmarks(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 654
    return-void
.end method

.method private getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 8
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 735
    const-string v7, "android-google"

    .line 736
    .local v7, "ret":Ljava/lang/String;
    const/4 v6, 0x0

    .line 738
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=\'client_id\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 740
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 746
    :cond_0
    if-eqz v6, :cond_1

    .line 747
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 750
    :cond_1
    :goto_0
    return-object v7

    .line 743
    :catch_0
    move-exception v0

    .line 746
    if-eqz v6, :cond_1

    .line 747
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 746
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 747
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private readRaw(Landroid/content/res/Resources;I)[B
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 714
    if-nez p2, :cond_0

    .line 715
    const/4 v4, 0x0

    .line 728
    :goto_0
    return-object v4

    .line 717
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 719
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 720
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x1000

    new-array v1, v4, [B

    .line 722
    .local v1, "buf":[B
    :goto_1
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "read":I
    if-lez v3, :cond_1

    .line 723
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 728
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buf":[B
    .end local v3    # "read":I
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v4

    .line 725
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buf":[B
    .restart local v3    # "read":I
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 726
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 728
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method private replaceSystemPropertyInString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "srcString"    # Ljava/lang/CharSequence;

    .prologue
    .line 754
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 755
    .local v7, "sb":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 757
    .local v5, "lastCharLoc":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 759
    .local v1, "client_id":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 760
    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 761
    .local v0, "c":C
    const/16 v8, 0x7b

    if-ne v0, v8, :cond_0

    .line 762
    invoke-interface {p2, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 763
    move v5, v2

    .line 765
    move v3, v2

    .local v3, "j":I
    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 766
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 767
    .local v4, "k":C
    const/16 v8, 0x7d

    if-ne v4, v8, :cond_2

    .line 768
    add-int/lit8 v8, v2, 0x1

    invoke-interface {p2, v8, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 769
    .local v6, "propertyKeyValue":Ljava/lang/String;
    const-string v8, "CLIENT_ID"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 770
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 774
    :goto_2
    add-int/lit8 v5, v3, 0x1

    .line 775
    move v2, v3

    .line 759
    .end local v3    # "j":I
    .end local v4    # "k":C
    .end local v6    # "propertyKeyValue":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 772
    .restart local v3    # "j":I
    .restart local v4    # "k":C
    .restart local v6    # "propertyKeyValue":Ljava/lang/String;
    :cond_1
    const-string v8, "unknown"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 765
    .end local v6    # "propertyKeyValue":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 781
    .end local v0    # "c":C
    .end local v3    # "j":I
    .end local v4    # "k":C
    :cond_3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sub-int/2addr v8, v5

    if-lez v8, :cond_4

    .line 783
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {p2, v5, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 785
    :cond_4
    return-object v7
.end method


# virtual methods
.method createAccountsView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 590
    const-string v0, "CREATE VIEW IF NOT EXISTS v_accounts AS SELECT NULL AS account_name, NULL AS account_type, 1 AS root_id UNION ALL SELECT account_name, account_type, _id AS root_id FROM bookmarks WHERE sync3 = \"bookmark_bar\" AND deleted = 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 601
    return-void
.end method

.method createOmniboxSuggestions(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 471
    const-string v0, "CREATE VIEW IF NOT EXISTS v_omnibox_suggestions  AS   SELECT _id, url, title, 1 AS bookmark, 0 AS visits, 0 AS date  FROM bookmarks   WHERE deleted = 0 AND folder = 0   UNION ALL   SELECT _id, url, title, 0 AS bookmark, visits, date   FROM history   WHERE url NOT IN (SELECT url FROM bookmarks    WHERE deleted = 0 AND folder = 0)   ORDER BY bookmark DESC, visits DESC, date DESC "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method createThumbnails(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 475
    const-string v0, "CREATE TABLE IF NOT EXISTS thumbnails (_id INTEGER PRIMARY KEY,thumbnail BLOB NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method enableSync(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v9, 0x1

    .line 482
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 483
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "key"

    const-string v8, "sync_enabled"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v7, "value"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 485
    iget-object v7, p0, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/BrowserProvider2;

    # invokes: Lcom/android/browser/provider/BrowserProvider2;->insertSettingsInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    invoke-static {v7, p1, v6}, Lcom/android/browser/provider/BrowserProvider2;->access$000(Lcom/android/browser/provider/BrowserProvider2;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    .line 487
    iget-object v7, p0, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/BrowserProvider2;

    invoke-virtual {v7}, Lcom/android/browser/provider/BrowserProvider2;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "account"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/AccountManager;

    .line 489
    .local v2, "am":Landroid/accounts/AccountManager;
    if-nez v2, :cond_1

    .line 506
    :cond_0
    return-void

    .line 492
    :cond_1
    const-string v7, "com.google"

    invoke-virtual {v2, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 493
    .local v1, "accounts":[Landroid/accounts/Account;
    if-eqz v1, :cond_0

    array-length v7, v1

    if-eqz v7, :cond_0

    .line 496
    move-object v3, v1

    .local v3, "arr$":[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v3, v4

    .line 497
    .local v0, "account":Landroid/accounts/Account;
    const-string v7, "com.android.browser"

    invoke-static {v0, v7}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    .line 500
    const-string v7, "com.android.browser"

    invoke-static {v0, v7, v9}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 502
    const-string v7, "com.android.browser"

    invoke-static {v0, v7, v9}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 496
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method importFromBrowserProvider(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 16
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 509
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/BrowserProvider2;

    invoke-virtual {v3}, Lcom/android/browser/provider/BrowserProvider2;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 510
    .local v10, "context":Landroid/content/Context;
    const-string v3, "browser.db"

    invoke-virtual {v10, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 511
    .local v13, "oldDbFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 512
    new-instance v11, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;

    invoke-direct {v11, v10}, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 514
    .local v11, "helper":Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;
    invoke-virtual {v11}, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 515
    .local v1, "oldDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 517
    .local v9, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcom/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v2, v3, v4

    .line 519
    .local v2, "table":Ljava/lang/String;
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "url"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "title"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "favicon"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "touch_icon"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "created"

    aput-object v5, v3, v4

    const-string v4, "bookmark!=0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 528
    if-eqz v9, :cond_3

    .line 529
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 530
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 531
    .local v14, "url":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 533
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 534
    .local v15, "values":Landroid/content/ContentValues;
    const-string v3, "url"

    invoke-virtual {v15, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v3, "title"

    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v3, "created"

    const/4 v4, 0x4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 537
    const-string v3, "position"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 538
    const-string v3, "parent"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 539
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 540
    .local v12, "imageValues":Landroid/content/ContentValues;
    const-string v3, "url_key"

    invoke-virtual {v12, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v3, "favicon"

    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 542
    const-string v3, "touch_icon"

    const/4 v4, 0x3

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 543
    const-string v3, "images"

    const-string v4, "thumbnail"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 544
    const-string v3, "bookmarks"

    const-string v4, "dirty"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 577
    .end local v2    # "table":Ljava/lang/String;
    .end local v12    # "imageValues":Landroid/content/ContentValues;
    .end local v14    # "url":Ljava/lang/String;
    .end local v15    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 578
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 579
    invoke-virtual {v11}, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;->close()V

    throw v3

    .line 546
    .restart local v2    # "table":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 549
    :cond_3
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "url"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "title"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "visits"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "date"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "created"

    aput-object v5, v3, v4

    const-string v4, "visits > 0 OR bookmark = 0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 559
    if-eqz v9, :cond_6

    .line 560
    :cond_4
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 561
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 562
    .restart local v15    # "values":Landroid/content/ContentValues;
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 563
    .restart local v14    # "url":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 565
    const-string v3, "url"

    invoke-virtual {v15, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v3, "title"

    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v3, "visits"

    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 568
    const-string v3, "date"

    const/4 v4, 0x3

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 569
    const-string v3, "created"

    const/4 v4, 0x4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 570
    const-string v3, "history"

    const-string v4, "favicon"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    .line 572
    .end local v14    # "url":Ljava/lang/String;
    .end local v15    # "values":Landroid/content/ContentValues;
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 575
    :cond_6
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 577
    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 578
    :cond_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 579
    invoke-virtual {v11}, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;->close()V

    .line 581
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_8

    .line 582
    invoke-virtual {v13}, Ljava/io/File;->deleteOnExit()V

    .line 584
    :cond_8
    const/4 v3, 0x1

    .line 586
    .end local v1    # "oldDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "table":Ljava/lang/String;
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v11    # "helper":Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;
    :goto_2
    return v3

    :cond_9
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 402
    const-string v0, "CREATE TABLE bookmarks(_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,url TEXT,folder INTEGER NOT NULL DEFAULT 0,parent INTEGER,position INTEGER NOT NULL,insert_after INTEGER,deleted INTEGER NOT NULL DEFAULT 0,account_name TEXT,account_type TEXT,sourceid TEXT,version INTEGER NOT NULL DEFAULT 1,created INTEGER,modified INTEGER,dirty INTEGER NOT NULL DEFAULT 0,sync1 TEXT,sync2 TEXT,sync3 TEXT,sync4 TEXT,sync5 TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 427
    const-string v0, "CREATE TABLE history(_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,url TEXT NOT NULL,created INTEGER,date INTEGER,visits INTEGER NOT NULL DEFAULT 0,user_entered INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 437
    const-string v0, "CREATE TABLE images (url_key TEXT UNIQUE NOT NULL,favicon BLOB,thumbnail BLOB,touch_icon BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 443
    const-string v0, "CREATE INDEX imagesUrlIndex ON images(url_key)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 446
    const-string v0, "CREATE TABLE searches (_id INTEGER PRIMARY KEY AUTOINCREMENT,search TEXT,date LONG);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 452
    const-string v0, "CREATE TABLE settings (key TEXT PRIMARY KEY,value TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->createAccountsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 458
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->createThumbnails(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 460
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/BrowserProvider2;

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 462
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->importFromBrowserProvider(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    invoke-direct {p0, p1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->createDefaultBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 466
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->enableSync(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 467
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->createOmniboxSuggestions(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 468
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/BrowserProvider2;

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 637
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 605
    const/16 v0, 0x20

    if-ge p2, v0, :cond_0

    .line 606
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->createOmniboxSuggestions(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 608
    :cond_0
    const/16 v0, 0x1f

    if-ge p2, v0, :cond_1

    .line 609
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->createThumbnails(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 611
    :cond_1
    const/16 v0, 0x1e

    if-ge p2, v0, :cond_2

    .line 612
    const-string v0, "DROP VIEW IF EXISTS v_snapshots_combined"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 613
    const-string v0, "DROP TABLE IF EXISTS snapshots"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 615
    :cond_2
    const/16 v0, 0x1c

    if-ge p2, v0, :cond_3

    .line 616
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->enableSync(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 618
    :cond_3
    const/16 v0, 0x1b

    if-ge p2, v0, :cond_4

    .line 619
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->createAccountsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 621
    :cond_4
    const/16 v0, 0x1a

    if-ge p2, v0, :cond_5

    .line 622
    const-string v0, "DROP VIEW IF EXISTS combined"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 624
    :cond_5
    const/16 v0, 0x19

    if-ge p2, v0, :cond_6

    .line 625
    const-string v0, "DROP TABLE IF EXISTS bookmarks"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 626
    const-string v0, "DROP TABLE IF EXISTS history"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 627
    const-string v0, "DROP TABLE IF EXISTS searches"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 628
    const-string v0, "DROP TABLE IF EXISTS images"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 629
    const-string v0, "DROP TABLE IF EXISTS settings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/BrowserProvider2;

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/accounts/Account;

    invoke-virtual {v0, p1, v1}, Lcom/android/common/content/SyncStateContentProviderHelper;->onAccountsChanged(Landroid/database/sqlite/SQLiteDatabase;[Landroid/accounts/Account;)V

    .line 631
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 633
    :cond_6
    return-void
.end method
