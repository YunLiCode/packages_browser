.class Lme/android/browser/provider/BrowserProvider2$SuggestionsCursor;
.super Landroid/database/AbstractCursor;
.source "BrowserProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/provider/BrowserProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SuggestionsCursor"
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final ICON_INDEX:I = 0x3

.field private static final ID_INDEX:I = 0x0

.field private static final LAST_ACCESS_TIME_INDEX:I = 0x4

.field private static final SUGGEST_COLUMN_ICON_1_ID:I = 0x6

.field private static final SUGGEST_COLUMN_INTENT_ACTION_ID:I = 0x1

.field private static final SUGGEST_COLUMN_INTENT_DATA_ID:I = 0x2

.field private static final SUGGEST_COLUMN_LAST_ACCESS_HINT_ID:I = 0x7

.field private static final SUGGEST_COLUMN_TEXT_1_ID:I = 0x3

.field private static final SUGGEST_COLUMN_TEXT_2_TEXT_ID:I = 0x4

.field private static final SUGGEST_COLUMN_TEXT_2_URL_ID:I = 0x5

.field private static final TITLE_INDEX:I = 0x2

.field private static final URL_INDEX:I = 0x1


# instance fields
.field private final mSource:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2109
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2110
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 2111
    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 2112
    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 2113
    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 2114
    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 2115
    const-string v2, "suggest_text_2_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 2116
    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 2117
    const-string v2, "suggest_last_access_hint"

    aput-object v2, v0, v1

    .line 2109
    sput-object v0, Lme/android/browser/provider/BrowserProvider2$SuggestionsCursor;->COLUMNS:[Ljava/lang/String;

    .line 2093
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 2121
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 2122
    iput-object p1, p0, Lme/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    .line 2123
    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2127
    sget-object v0, Lme/android/browser/provider/BrowserProvider2$SuggestionsCursor;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2154
    iget-object v0, p0, Lme/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 2159
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 2164
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 2169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 2174
    sparse-switch p1, :sswitch_data_0

    .line 2180
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2176
    :sswitch_0
    iget-object v0, p0, Lme/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 2178
    :goto_0
    return-wide v0

    :sswitch_1
    iget-object v0, p0, Lme/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    .line 2174
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 2185
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    const/4 v1, 0x1

    .line 2132
    packed-switch p1, :pswitch_data_0

    .line 2149
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2134
    :pswitch_0
    iget-object v0, p0, Lme/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2136
    :pswitch_1
    const-string v0, "android.intent.action.VIEW"

    goto :goto_0

    .line 2138
    :pswitch_2
    iget-object v0, p0, Lme/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2141
    :pswitch_3
    iget-object v0, p0, Lme/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/android/browser/UrlUtils;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2143
    :pswitch_4
    iget-object v0, p0, Lme/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2145
    :pswitch_5
    iget-object v0, p0, Lme/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2147
    :pswitch_6
    iget-object v0, p0, Lme/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 2190
    iget-object v0, p0, Lme/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 1
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 2195
    iget-object v0, p0, Lme/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
