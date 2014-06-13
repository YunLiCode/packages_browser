.class public Lme/android/browser/provider/BrowserProvider;
.super Landroid/content/ContentProvider;
.source "BrowserProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/android/browser/provider/BrowserProvider$DatabaseHelper;,
        Lme/android/browser/provider/BrowserProvider$MySuggestionCursor;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final DATABASE_VERSION:I = 0x18

.field private static final MAX_SUGGEST_LONG_LARGE:I = 0x9

.field private static final MAX_SUGGEST_LONG_SMALL:I = 0x6

.field private static final MAX_SUGGEST_SHORT_LARGE:I = 0x6

.field private static final MAX_SUGGEST_SHORT_SMALL:I = 0x3

.field private static final ORDER_BY:Ljava/lang/String; = "visits DESC, date DESC"

.field private static final PICASA_URL:Ljava/lang/String; = "http://picasaweb.google.com/m/viewer?source=androidclient"

.field private static final STRIP_URL_PATTERN:Ljava/util/regex/Pattern;

.field private static final SUGGEST_COLUMN_ICON_1_ID:I = 0x6

.field private static final SUGGEST_COLUMN_ICON_2_ID:I = 0x7

.field private static final SUGGEST_COLUMN_INTENT_ACTION_ID:I = 0x1

.field private static final SUGGEST_COLUMN_INTENT_DATA_ID:I = 0x2

.field private static final SUGGEST_COLUMN_INTENT_EXTRA_DATA:I = 0x9

.field private static final SUGGEST_COLUMN_QUERY_ID:I = 0x8

.field private static final SUGGEST_COLUMN_TEXT_1_ID:I = 0x3

.field private static final SUGGEST_COLUMN_TEXT_2_ID:I = 0x4

.field private static final SUGGEST_COLUMN_TEXT_2_URL_ID:I = 0x5

.field private static final SUGGEST_PROJECTION:[Ljava/lang/String;

.field private static final SUGGEST_SELECTION:Ljava/lang/String; = "(url LIKE ? OR url LIKE ? OR url LIKE ? OR url LIKE ? OR title LIKE ?) AND (bookmark = 1 OR user_entered = 1)"

.field static final TABLE_NAMES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "BrowserProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field static final URI_MATCH_BOOKMARKS:I = 0x0

.field private static final URI_MATCH_BOOKMARKS_ID:I = 0xa

.field private static final URI_MATCH_BOOKMARKS_SUGGEST:I = 0x15

.field private static final URI_MATCH_SEARCHES:I = 0x1

.field private static final URI_MATCH_SEARCHES_ID:I = 0xb

.field private static final URI_MATCH_SUGGEST:I = 0x14

.field static final sDatabaseName:Ljava/lang/String; = "browser.db"


# instance fields
.field private SUGGEST_ARGS:[Ljava/lang/String;

.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mMaxSuggestionLongSize:I

.field private mMaxSuggestionShortSize:I

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mSettings:Lme/android/browser/BrowserSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    new-array v0, v2, [Ljava/lang/String;

    .line 68
    const-string v1, "bookmarks"

    aput-object v1, v0, v4

    const-string v1, "searches"

    aput-object v1, v0, v5

    .line 67
    sput-object v0, Lme/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    .line 70
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 71
    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "url"

    aput-object v1, v0, v5

    const-string v1, "title"

    aput-object v1, v0, v2

    const-string v1, "bookmark"

    aput-object v1, v0, v3

    const-string v1, "user_entered"

    aput-object v1, v0, v6

    .line 70
    sput-object v0, Lme/android/browser/provider/BrowserProvider;->SUGGEST_PROJECTION:[Ljava/lang/String;

    .line 101
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 102
    const-string v1, "_id"

    aput-object v1, v0, v4

    .line 103
    const-string v1, "suggest_intent_action"

    aput-object v1, v0, v5

    .line 104
    const-string v1, "suggest_intent_data"

    aput-object v1, v0, v2

    .line 105
    const-string v1, "suggest_text_1"

    aput-object v1, v0, v3

    .line 106
    const-string v1, "suggest_text_2"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    .line 107
    const-string v2, "suggest_text_2_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 108
    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 109
    const-string v2, "suggest_icon_2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 110
    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 111
    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    .line 101
    sput-object v0, Lme/android/browser/provider/BrowserProvider;->COLUMNS:[Ljava/lang/String;

    .line 127
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lme/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 128
    sget-object v0, Lme/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    sget-object v2, Lme/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    sget-object v0, Lme/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lme/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    const/16 v3, 0xa

    .line 130
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 132
    sget-object v0, Lme/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    sget-object v2, Lme/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    sget-object v0, Lme/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lme/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    const/16 v3, 0xb

    .line 134
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    sget-object v0, Lme/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    const-string v2, "search_suggest_query"

    .line 137
    const/16 v3, 0x14

    .line 136
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    sget-object v0, Lme/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lme/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "search_suggest_query"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    const/16 v3, 0x15

    .line 138
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 169
    const-string v0, "^(http://)(.*?)(/$)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lme/android/browser/provider/BrowserProvider;->STRIP_URL_PATTERN:Ljava/util/regex/Pattern;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lme/android/browser/provider/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    .line 177
    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 212
    invoke-static {p0, p1}, Lme/android/browser/provider/BrowserProvider;->replaceSystemPropertyInString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lme/android/browser/provider/BrowserProvider;)I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lme/android/browser/provider/BrowserProvider;->mMaxSuggestionLongSize:I

    return v0
.end method

.method static synthetic access$2()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lme/android/browser/provider/BrowserProvider;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1024
    invoke-static {p0}, Lme/android/browser/provider/BrowserProvider;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doSuggestQuery(Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 13
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "bookmarksOnly"    # Z

    .prologue
    .line 788
    const/4 v0, 0x0

    aget-object v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    :cond_0
    new-instance v0, Lme/android/browser/provider/BrowserProvider$MySuggestionCursor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v5, ""

    invoke-direct {v0, p0, v1, v2, v5}, Lme/android/browser/provider/BrowserProvider$MySuggestionCursor;-><init>(Lme/android/browser/provider/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 825
    :goto_0
    return-object v0

    .line 791
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 792
    .local v10, "like":Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v0, p2, v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 793
    const/4 v0, 0x0

    aget-object v0, p2, v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 794
    :cond_2
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 795
    .local v4, "myArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object v10, v4, v0

    .line 796
    move-object v3, p1

    .line 809
    .local v3, "suggestSelection":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lme/android/browser/provider/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lme/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 810
    sget-object v2, Lme/android/browser/provider/BrowserProvider;->SUGGEST_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 811
    const-string v7, "visits DESC, date DESC"

    iget v8, p0, Lme/android/browser/provider/BrowserProvider;->mMaxSuggestionLongSize:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 809
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 813
    .local v9, "c":Landroid/database/Cursor;
    if-nez p3, :cond_3

    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 814
    :cond_3
    new-instance v0, Lme/android/browser/provider/BrowserProvider$MySuggestionCursor;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, p0, v9, v1, v2}, Lme/android/browser/provider/BrowserProvider$MySuggestionCursor;-><init>(Lme/android/browser/provider/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V

    goto :goto_0

    .line 798
    .end local v3    # "suggestSelection":Ljava/lang/String;
    .end local v4    # "myArgs":[Ljava/lang/String;
    .end local v9    # "c":Landroid/database/Cursor;
    :cond_4
    iget-object v0, p0, Lme/android/browser/provider/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "http://"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 799
    iget-object v0, p0, Lme/android/browser/provider/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "http://www."

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 800
    iget-object v0, p0, Lme/android/browser/provider/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "https://"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 801
    iget-object v0, p0, Lme/android/browser/provider/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "https://www."

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 803
    iget-object v0, p0, Lme/android/browser/provider/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    const/4 v1, 0x4

    aput-object v10, v0, v1

    .line 804
    iget-object v4, p0, Lme/android/browser/provider/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    .line 805
    .restart local v4    # "myArgs":[Ljava/lang/String;
    const-string v3, "(url LIKE ? OR url LIKE ? OR url LIKE ? OR url LIKE ? OR title LIKE ?) AND (bookmark = 1 OR user_entered = 1)"

    .restart local v3    # "suggestSelection":Ljava/lang/String;
    goto/16 :goto_1

    .line 817
    .restart local v9    # "c":Landroid/database/Cursor;
    :cond_5
    if-eqz v4, :cond_6

    array-length v0, v4

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    .line 818
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    .line 819
    iget-object v0, p0, Lme/android/browser/provider/BrowserProvider;->mSettings:Lme/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lme/android/browser/BrowserSettings;->getSearchEngine()Lme/android/browser/search/SearchEngine;

    move-result-object v12

    .line 820
    .local v12, "searchEngine":Lme/android/browser/search/SearchEngine;
    if-eqz v12, :cond_6

    invoke-interface {v12}, Lme/android/browser/search/SearchEngine;->supportsSuggestions()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 821
    invoke-virtual {p0}, Lme/android/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-interface {v12, v0, v1}, Lme/android/browser/search/SearchEngine;->getSuggestions(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 822
    .local v11, "sc":Landroid/database/Cursor;
    new-instance v0, Lme/android/browser/provider/BrowserProvider$MySuggestionCursor;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-direct {v0, p0, v9, v11, v1}, Lme/android/browser/provider/BrowserProvider$MySuggestionCursor;-><init>(Lme/android/browser/provider/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 825
    .end local v11    # "sc":Landroid/database/Cursor;
    .end local v12    # "searchEngine":Lme/android/browser/search/SearchEngine;
    :cond_6
    new-instance v0, Lme/android/browser/provider/BrowserProvider$MySuggestionCursor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-direct {v0, p0, v9, v1, v2}, Lme/android/browser/provider/BrowserProvider$MySuggestionCursor;-><init>(Lme/android/browser/provider/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private fixPicasaBookmark()V
    .locals 6

    .prologue
    .line 427
    iget-object v2, p0, Lme/android/browser/provider/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 428
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "SELECT _id FROM bookmarks WHERE bookmark = 1 AND url = ?"

    .line 429
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "http://picasaweb.google.com/m/viewer?source=androidclient"

    aput-object v5, v3, v4

    .line 428
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 431
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "INSERT INTO bookmarks (title, url, visits, date, created, bookmark) VALUES(\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Lme/android/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08011d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 436
    const-string v3, "http://picasaweb.google.com/m/viewer?source=androidclient"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', 0, 0, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 437
    const-string v3, ", 1);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 433
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    :cond_0
    if-eqz v0, :cond_1

    .line 441
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 444
    :cond_1
    return-void

    .line 439
    :catchall_0
    move-exception v2

    .line 440
    if-eqz v0, :cond_2

    .line 441
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 443
    :cond_2
    throw v2
.end method

.method public static getBookmarksSuggestions(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "constraint"    # Ljava/lang/String;

    .prologue
    .line 1035
    const-string v0, "content://browser/search_suggest_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1036
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lme/android/browser/provider/BrowserProvider;->SUGGEST_PROJECTION:[Ljava/lang/String;

    const-string v3, "(url LIKE ? OR url LIKE ? OR url LIKE ? OR url LIKE ? OR title LIKE ?) AND (bookmark = 1 OR user_entered = 1)"

    .line 1037
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const-string v5, "visits DESC, date DESC"

    move-object v0, p0

    .line 1036
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 182
    const-string v7, "android-google"

    .line 183
    .local v7, "ret":Ljava/lang/String;
    const/4 v6, 0x0

    .line 184
    .local v6, "legacyClientIdCursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 188
    .local v8, "searchClientIdCursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 189
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=\'search_client_id\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 188
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 190
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 202
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_1
    if-eqz v8, :cond_2

    .line 206
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 209
    :cond_2
    :goto_1
    return-object v7

    .line 193
    :cond_3
    :try_start_1
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 194
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=\'client_id\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 193
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 195
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ms-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 202
    if-eqz v6, :cond_4

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_4
    if-eqz v8, :cond_2

    .line 206
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 201
    :catchall_0
    move-exception v0

    .line 202
    if-eqz v6, :cond_5

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_5
    if-eqz v8, :cond_6

    .line 206
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 208
    :cond_6
    throw v0
.end method

.method private static replaceSystemPropertyInString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "srcString"    # Ljava/lang/CharSequence;

    .prologue
    .line 213
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 214
    .local v7, "sb":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 216
    .local v5, "lastCharLoc":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8}, Lme/android/browser/provider/BrowserProvider;->getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "client_id":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lt v2, v8, :cond_1

    .line 240
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sub-int/2addr v8, v5

    if-lez v8, :cond_0

    .line 242
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {p1, v5, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 244
    :cond_0
    return-object v7

    .line 219
    :cond_1
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 220
    .local v0, "c":C
    const/16 v8, 0x7b

    if-ne v0, v8, :cond_2

    .line 221
    invoke-interface {p1, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 222
    move v5, v2

    .line 224
    move v3, v2

    .local v3, "j":I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lt v3, v8, :cond_3

    .line 218
    .end local v3    # "j":I
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    .restart local v3    # "j":I
    :cond_3
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 226
    .local v4, "k":C
    const/16 v8, 0x7d

    if-ne v4, v8, :cond_5

    .line 227
    add-int/lit8 v8, v2, 0x1

    invoke-interface {p1, v8, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 228
    .local v6, "propertyKeyValue":Ljava/lang/String;
    const-string v8, "CLIENT_ID"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 229
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    :goto_3
    add-int/lit8 v5, v3, 0x1

    .line 234
    move v2, v3

    .line 235
    goto :goto_2

    .line 231
    :cond_4
    const-string v8, "unknown"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 224
    .end local v6    # "propertyKeyValue":Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static stripUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1025
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 1030
    .end local p0    # "url":Ljava/lang/String;
    .local v0, "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    return-object p0

    .line 1026
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .restart local p0    # "url":Ljava/lang/String;
    :cond_1
    sget-object v1, Lme/android/browser/provider/BrowserProvider;->STRIP_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1027
    .restart local v0    # "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1028
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 15
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 906
    iget-object v3, p0, Lme/android/browser/provider/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 908
    .local v10, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lme/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 909
    .local v13, "match":I
    const/4 v3, -0x1

    if-eq v13, v3, :cond_0

    const/16 v3, 0x14

    if-ne v13, v3, :cond_1

    .line 910
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown URL"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 914
    :cond_1
    const/16 v3, 0xa

    if-ne v13, v3, :cond_7

    const/4 v12, 0x1

    .line 915
    .local v12, "isBookmarkTable":Z
    :goto_0
    const/4 v11, 0x0

    .line 917
    .local v11, "id":Ljava/lang/String;
    if-nez v12, :cond_2

    const/16 v3, 0xb

    if-ne v13, v3, :cond_4

    .line 918
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 919
    .local v14, "sb":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 920
    const-string v3, "( "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    const-string v3, " ) AND "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "id":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 925
    .restart local v11    # "id":Ljava/lang/String;
    const-string v3, "_id = "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 930
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {p0}, Lme/android/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 933
    .local v2, "cr":Landroid/content/ContentResolver;
    if-eqz v12, :cond_6

    .line 934
    sget-object v3, Ldroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    .line 935
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "bookmark"

    aput-object v6, v4, v5

    .line 936
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "_id = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 934
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 937
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 938
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_5

    .line 940
    iget-object v3, p0, Lme/android/browser/provider/BrowserProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v3}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 943
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 946
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_6
    sget-object v3, Lme/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    rem-int/lit8 v4, v13, 0xa

    aget-object v3, v3, v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v10, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 947
    .local v8, "count":I
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 948
    return v8

    .line 914
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v8    # "count":I
    .end local v11    # "id":Ljava/lang/String;
    .end local v12    # "isBookmarkTable":Z
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 831
    sget-object v1, Lme/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 832
    .local v0, "match":I
    sparse-switch v0, :sswitch_data_0

    .line 849
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 834
    :sswitch_0
    const-string v1, "vnd.android.cursor.dir/bookmark"

    .line 846
    :goto_0
    return-object v1

    .line 837
    :sswitch_1
    const-string v1, "vnd.android.cursor.item/bookmark"

    goto :goto_0

    .line 840
    :sswitch_2
    const-string v1, "vnd.android.cursor.dir/searches"

    goto :goto_0

    .line 843
    :sswitch_3
    const-string v1, "vnd.android.cursor.item/searches"

    goto :goto_0

    .line 846
    :sswitch_4
    const-string v1, "vnd.android.cursor.dir/vnd.android.search.suggest"

    goto :goto_0

    .line 832
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0xa -> :sswitch_1
        0xb -> :sswitch_3
        0x14 -> :sswitch_4
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    const-wide/16 v8, 0x0

    .line 855
    const/4 v1, 0x0

    .line 856
    .local v1, "isBookmarkTable":Z
    iget-object v6, p0, Lme/android/browser/provider/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 858
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lme/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 859
    .local v2, "match":I
    const/4 v5, 0x0

    .line 860
    .local v5, "uri":Landroid/net/Uri;
    packed-switch v2, :pswitch_data_0

    .line 885
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown URL"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 863
    :pswitch_0
    sget-object v6, Lme/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const-string v7, "url"

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 865
    .local v3, "rowID":J
    cmp-long v6, v3, v8

    if-lez v6, :cond_0

    .line 866
    sget-object v6, Ldroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 869
    :cond_0
    const/4 v1, 0x1

    .line 888
    :cond_1
    :goto_0
    if-nez v5, :cond_2

    .line 889
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown URL"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 875
    .end local v3    # "rowID":J
    :pswitch_1
    sget-object v6, Lme/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string v7, "url"

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 877
    .restart local v3    # "rowID":J
    cmp-long v6, v3, v8

    if-lez v6, :cond_1

    .line 878
    sget-object v6, Ldroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 881
    goto :goto_0

    .line 891
    :cond_2
    invoke-virtual {p0}, Lme/android/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 896
    if-eqz v1, :cond_3

    .line 897
    const-string v6, "bookmark"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 898
    const-string v6, "bookmark"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_3

    .line 899
    iget-object v6, p0, Lme/android/browser/provider/BrowserProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v6}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 901
    :cond_3
    return-object v5

    .line 860
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 391
    invoke-virtual {p0}, Lme/android/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 392
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    .line 394
    const/4 v6, 0x4

    .line 392
    if-ne v5, v6, :cond_0

    move v2, v3

    .line 395
    .local v2, "xlargeScreenSize":Z
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v3, :cond_1

    move v1, v3

    .line 399
    .local v1, "isPortrait":Z
    :goto_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 400
    const/16 v4, 0x9

    iput v4, p0, Lme/android/browser/provider/BrowserProvider;->mMaxSuggestionLongSize:I

    .line 401
    iput v7, p0, Lme/android/browser/provider/BrowserProvider;->mMaxSuggestionShortSize:I

    .line 406
    :goto_2
    new-instance v4, Lme/android/browser/provider/BrowserProvider$DatabaseHelper;

    invoke-direct {v4, v0}, Lme/android/browser/provider/BrowserProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lme/android/browser/provider/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 407
    new-instance v4, Landroid/app/backup/BackupManager;

    invoke-direct {v4, v0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lme/android/browser/provider/BrowserProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 422
    invoke-static {}, Lme/android/browser/BrowserSettings;->getInstance()Lme/android/browser/BrowserSettings;

    move-result-object v4

    iput-object v4, p0, Lme/android/browser/provider/BrowserProvider;->mSettings:Lme/android/browser/BrowserSettings;

    .line 423
    return v3

    .end local v1    # "isPortrait":Z
    .end local v2    # "xlargeScreenSize":Z
    :cond_0
    move v2, v4

    .line 392
    goto :goto_0

    .restart local v2    # "xlargeScreenSize":Z
    :cond_1
    move v1, v4

    .line 395
    goto :goto_1

    .line 403
    .restart local v1    # "isPortrait":Z
    :cond_2
    iput v7, p0, Lme/android/browser/provider/BrowserProvider;->mMaxSuggestionLongSize:I

    .line 404
    const/4 v4, 0x3

    iput v4, p0, Lme/android/browser/provider/BrowserProvider;->mMaxSuggestionShortSize:I

    goto :goto_2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projectionIn"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 756
    sget-object v2, Lme/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 757
    .local v12, "match":I
    const/4 v2, -0x1

    if-ne v12, v2, :cond_0

    .line 758
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown URL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 761
    :cond_0
    const/16 v2, 0x14

    if-eq v12, v2, :cond_1

    const/16 v2, 0x15

    if-ne v12, v2, :cond_3

    .line 763
    :cond_1
    const/16 v2, 0x15

    if-ne v12, v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1, v2}, Lme/android/browser/provider/BrowserProvider;->doSuggestQuery(Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v11

    .line 782
    :goto_1
    return-object v11

    .line 763
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 766
    :cond_3
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/String;

    .line 767
    .local v4, "projection":[Ljava/lang/String;
    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    array-length v2, v0

    if-lez v2, :cond_4

    .line 768
    move-object/from16 v0, p2

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    .line 769
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p2

    array-length v5, v0

    move-object/from16 v0, p2

    invoke-static {v0, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 770
    move-object/from16 v0, p2

    array-length v2, v0

    const-string v3, "_id AS _id"

    aput-object v3, v4, v2

    .line 773
    :cond_4
    const/4 v13, 0x0

    .line 774
    .local v13, "whereClause":Ljava/lang/String;
    const/16 v2, 0xa

    if-eq v12, v2, :cond_5

    const/16 v2, 0xb

    if-ne v12, v2, :cond_6

    .line 775
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "_id = "

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 778
    :cond_6
    iget-object v2, p0, Lme/android/browser/provider/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Lme/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    rem-int/lit8 v5, v12, 0xa

    aget-object v3, v3, v5

    .line 779
    move-object/from16 v0, p3

    invoke-static {v13, v0}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 780
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    .line 778
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 781
    .local v11, "c":Landroid/database/Cursor;
    invoke-virtual {p0}, Lme/android/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v11, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 16
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 954
    move-object/from16 v0, p0

    iget-object v4, v0, Lme/android/browser/provider/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 956
    .local v11, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lme/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 957
    .local v13, "match":I
    const/4 v4, -0x1

    if-eq v13, v4, :cond_0

    const/16 v4, 0x14

    if-ne v13, v4, :cond_1

    .line 958
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown URL"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 961
    :cond_1
    const/16 v4, 0xa

    if-eq v13, v4, :cond_2

    const/16 v4, 0xb

    if-ne v13, v4, :cond_4

    .line 962
    :cond_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 963
    .local v15, "sb":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 964
    const-string v4, "( "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    const-string v4, " ) AND "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 969
    .local v12, "id":Ljava/lang/String;
    const-string v4, "_id = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 974
    .end local v12    # "id":Ljava/lang/String;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lme/android/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 979
    .local v3, "cr":Landroid/content/ContentResolver;
    const/16 v4, 0xa

    if-eq v13, v4, :cond_5

    if-nez v13, :cond_7

    .line 980
    :cond_5
    const/4 v9, 0x0

    .line 984
    .local v9, "changingBookmarks":Z
    const-string v4, "bookmark"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 985
    const/4 v9, 0x1

    .line 1003
    :cond_6
    :goto_0
    if-eqz v9, :cond_7

    .line 1004
    move-object/from16 v0, p0

    iget-object v4, v0, Lme/android/browser/provider/BrowserProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v4}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1008
    .end local v9    # "changingBookmarks":Z
    :cond_7
    sget-object v4, Lme/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    rem-int/lit8 v5, v13, 0xa

    aget-object v4, v4, v5

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v11, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 1009
    .local v14, "ret":I
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1010
    return v14

    .line 986
    .end local v14    # "ret":I
    .restart local v9    # "changingBookmarks":Z
    :cond_8
    const-string v4, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 987
    const-string v4, "url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 988
    :cond_9
    const-string v4, "_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 992
    sget-object v4, Ldroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    .line 993
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "bookmark"

    aput-object v7, v5, v6

    .line 994
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_id = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 995
    const-string v7, "_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 994
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 995
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 992
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 996
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 997
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_b

    const/4 v9, 0x1

    .line 999
    :cond_a
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 997
    :cond_b
    const/4 v9, 0x0

    goto :goto_1
.end method
