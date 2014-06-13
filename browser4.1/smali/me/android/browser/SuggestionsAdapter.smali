.class public Lme/android/browser/SuggestionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SuggestionsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/android/browser/SuggestionsAdapter$CombinedCursor;,
        Lme/android/browser/SuggestionsAdapter$CompletionListener;,
        Lme/android/browser/SuggestionsAdapter$CursorSource;,
        Lme/android/browser/SuggestionsAdapter$SlowFilterTask;,
        Lme/android/browser/SuggestionsAdapter$SuggestCursor;,
        Lme/android/browser/SuggestionsAdapter$SuggestFilter;,
        Lme/android/browser/SuggestionsAdapter$SuggestItem;,
        Lme/android/browser/SuggestionsAdapter$SuggestionResults;
    }
.end annotation


# static fields
.field private static final COMBINED_PROJECTION:[Ljava/lang/String;

.field private static final COMBINED_SELECTION:Ljava/lang/String; = "(url LIKE ? OR url LIKE ? OR url LIKE ? OR url LIKE ? OR title LIKE ?)"

.field public static final TYPE_BOOKMARK:I = 0x0

.field public static final TYPE_HISTORY:I = 0x1

.field public static final TYPE_SEARCH:I = 0x3

.field public static final TYPE_SUGGEST:I = 0x4

.field public static final TYPE_SUGGEST_URL:I = 0x2


# instance fields
.field final mContext:Landroid/content/Context;

.field final mFilter:Landroid/widget/Filter;

.field mFilterResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lme/android/browser/SuggestionsAdapter$SuggestItem;",
            ">;"
        }
    .end annotation
.end field

.field mIncognitoMode:Z

.field mLandscapeMode:Z

.field final mLinesLandscape:I

.field final mLinesPortrait:I

.field final mListener:Lme/android/browser/SuggestionsAdapter$CompletionListener;

.field mMixedResults:Lme/android/browser/SuggestionsAdapter$SuggestionResults;

.field final mResultsLock:Ljava/lang/Object;

.field mSettings:Lme/android/browser/BrowserSettings;

.field mSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lme/android/browser/SuggestionsAdapter$CursorSource;",
            ">;"
        }
    .end annotation
.end field

.field mSuggestResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lme/android/browser/SuggestionsAdapter$SuggestItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 56
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 57
    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 58
    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 59
    const-string v2, "bookmark"

    aput-object v2, v0, v1

    .line 55
    sput-object v0, Lme/android/browser/SuggestionsAdapter;->COMBINED_PROJECTION:[Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lme/android/browser/SuggestionsAdapter$CompletionListener;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lme/android/browser/SuggestionsAdapter$CompletionListener;

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lme/android/browser/SuggestionsAdapter;->mResultsLock:Ljava/lang/Object;

    .line 87
    iput-object p1, p0, Lme/android/browser/SuggestionsAdapter;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {}, Lme/android/browser/BrowserSettings;->getInstance()Lme/android/browser/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/SuggestionsAdapter;->mSettings:Lme/android/browser/BrowserSettings;

    .line 89
    iput-object p2, p0, Lme/android/browser/SuggestionsAdapter;->mListener:Lme/android/browser/SuggestionsAdapter$CompletionListener;

    .line 90
    iget-object v0, p0, Lme/android/browser/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    const v1, 0x7f0e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 90
    iput v0, p0, Lme/android/browser/SuggestionsAdapter;->mLinesPortrait:I

    .line 92
    iget-object v0, p0, Lme/android/browser/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 92
    iput v0, p0, Lme/android/browser/SuggestionsAdapter;->mLinesLandscape:I

    .line 95
    new-instance v0, Lme/android/browser/SuggestionsAdapter$SuggestFilter;

    invoke-direct {v0, p0}, Lme/android/browser/SuggestionsAdapter$SuggestFilter;-><init>(Lme/android/browser/SuggestionsAdapter;)V

    iput-object v0, p0, Lme/android/browser/SuggestionsAdapter;->mFilter:Landroid/widget/Filter;

    .line 96
    new-instance v0, Lme/android/browser/SuggestionsAdapter$CombinedCursor;

    invoke-direct {v0, p0}, Lme/android/browser/SuggestionsAdapter$CombinedCursor;-><init>(Lme/android/browser/SuggestionsAdapter;)V

    invoke-virtual {p0, v0}, Lme/android/browser/SuggestionsAdapter;->addSource(Lme/android/browser/SuggestionsAdapter$CursorSource;)V

    .line 97
    return-void
.end method

.method static synthetic access$1(Lme/android/browser/SuggestionsAdapter;)I
    .locals 1

    .prologue
    .line 321
    invoke-direct {p0}, Lme/android/browser/SuggestionsAdapter;->getMaxLines()I

    move-result v0

    return v0
.end method

.method static synthetic access$2()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lme/android/browser/SuggestionsAdapter;->COMBINED_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private bindView(Landroid/view/View;Lme/android/browser/SuggestionsAdapter$SuggestItem;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lme/android/browser/SuggestionsAdapter$SuggestItem;

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 159
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 160
    const v8, 0x1020014

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 161
    .local v4, "tv1":Landroid/widget/TextView;
    const v8, 0x1020015

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 162
    .local v5, "tv2":Landroid/widget/TextView;
    const v8, 0x7f0d0048

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 163
    .local v1, "ic1":Landroid/widget/ImageView;
    const v8, 0x7f0d006c

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 164
    .local v2, "ic2":Landroid/view/View;
    const v8, 0x7f0d001f

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 165
    .local v0, "div":Landroid/view/View;
    iget-object v8, p2, Lme/android/browser/SuggestionsAdapter$SuggestItem;->title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v8, p2, Lme/android/browser/SuggestionsAdapter$SuggestItem;->url:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 167
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 174
    :goto_0
    const/4 v3, -0x1

    .line 175
    .local v3, "id":I
    iget v8, p2, Lme/android/browser/SuggestionsAdapter$SuggestItem;->type:I

    packed-switch v8, :pswitch_data_0

    .line 190
    const/4 v3, -0x1

    .line 192
    :goto_1
    const/4 v8, -0x1

    if-eq v3, v8, :cond_0

    .line 193
    iget-object v8, p0, Lme/android/browser/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    :cond_0
    const/4 v8, 0x4

    iget v9, p2, Lme/android/browser/SuggestionsAdapter$SuggestItem;->type:I

    if-eq v8, v9, :cond_1

    .line 196
    const/4 v8, 0x3

    iget v9, p2, Lme/android/browser/SuggestionsAdapter$SuggestItem;->type:I

    if-ne v8, v9, :cond_2

    :cond_1
    move v6, v7

    .line 195
    :cond_2
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 198
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 199
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    const v6, 0x7f0d006b

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    return-void

    .line 170
    .end local v3    # "id":I
    :cond_3
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v8, p2, Lme/android/browser/SuggestionsAdapter$SuggestItem;->url:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    .line 178
    .restart local v3    # "id":I
    :pswitch_0
    const v3, 0x7f020044

    .line 179
    goto :goto_1

    .line 181
    :pswitch_1
    const v3, 0x7f020041

    .line 182
    goto :goto_1

    .line 184
    :pswitch_2
    const v3, 0x7f020043

    .line 185
    goto :goto_1

    .line 187
    :pswitch_3
    const v3, 0x7f020042

    .line 188
    goto :goto_1

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getMaxLines()I
    .locals 5

    .prologue
    .line 322
    iget-boolean v1, p0, Lme/android/browser/SuggestionsAdapter;->mLandscapeMode:Z

    if-eqz v1, :cond_0

    iget v0, p0, Lme/android/browser/SuggestionsAdapter;->mLinesLandscape:I

    .line 323
    .local v0, "maxLines":I
    :goto_0
    int-to-double v1, v0

    const-wide/high16 v3, 0x4000000000000000L

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 324
    return v0

    .line 322
    .end local v0    # "maxLines":I
    :cond_0
    iget v0, p0, Lme/android/browser/SuggestionsAdapter;->mLinesPortrait:I

    goto :goto_0
.end method

.method static getSuggestionTitle(Lme/android/browser/SuggestionsAdapter$SuggestItem;)Ljava/lang/String;
    .locals 1
    .param p0, "item"    # Lme/android/browser/SuggestionsAdapter$SuggestItem;

    .prologue
    .line 557
    iget-object v0, p0, Lme/android/browser/SuggestionsAdapter$SuggestItem;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/android/browser/SuggestionsAdapter$SuggestItem;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSuggestionUrl(Lme/android/browser/SuggestionsAdapter$SuggestItem;)Ljava/lang/String;
    .locals 2
    .param p0, "item"    # Lme/android/browser/SuggestionsAdapter$SuggestItem;

    .prologue
    .line 561
    invoke-static {p0}, Lme/android/browser/SuggestionsAdapter;->getSuggestionTitle(Lme/android/browser/SuggestionsAdapter$SuggestItem;)Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lme/android/browser/SuggestionsAdapter$SuggestItem;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    .end local v0    # "title":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "title":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lme/android/browser/SuggestionsAdapter$SuggestItem;->url:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public addSource(Lme/android/browser/SuggestionsAdapter$CursorSource;)V
    .locals 2
    .param p1, "c"    # Lme/android/browser/SuggestionsAdapter$CursorSource;

    .prologue
    .line 105
    iget-object v0, p0, Lme/android/browser/SuggestionsAdapter;->mSources:Ljava/util/List;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lme/android/browser/SuggestionsAdapter;->mSources:Ljava/util/List;

    .line 108
    :cond_0
    iget-object v0, p0, Lme/android/browser/SuggestionsAdapter;->mSources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method buildSuggestionResults()Lme/android/browser/SuggestionsAdapter$SuggestionResults;
    .locals 6

    .prologue
    .line 228
    new-instance v2, Lme/android/browser/SuggestionsAdapter$SuggestionResults;

    invoke-direct {v2, p0}, Lme/android/browser/SuggestionsAdapter$SuggestionResults;-><init>(Lme/android/browser/SuggestionsAdapter;)V

    .line 230
    .local v2, "mixed":Lme/android/browser/SuggestionsAdapter$SuggestionResults;
    iget-object v5, p0, Lme/android/browser/SuggestionsAdapter;->mResultsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 231
    :try_start_0
    iget-object v0, p0, Lme/android/browser/SuggestionsAdapter;->mFilterResults:Ljava/util/List;

    .line 232
    .local v0, "filter":Ljava/util/List;, "Ljava/util/List<Lme/android/browser/SuggestionsAdapter$SuggestItem;>;"
    iget-object v3, p0, Lme/android/browser/SuggestionsAdapter;->mSuggestResults:Ljava/util/List;

    .line 230
    .local v3, "suggest":Ljava/util/List;, "Ljava/util/List<Lme/android/browser/SuggestionsAdapter$SuggestItem;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 239
    :cond_0
    if-eqz v3, :cond_1

    .line 240
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 244
    :cond_1
    return-object v2

    .line 230
    .end local v0    # "filter":Ljava/util/List;, "Ljava/util/List<Lme/android/browser/SuggestionsAdapter$SuggestItem;>;"
    .end local v3    # "suggest":Ljava/util/List;, "Ljava/util/List<Lme/android/browser/SuggestionsAdapter$SuggestItem;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 235
    .restart local v0    # "filter":Ljava/util/List;, "Ljava/util/List<Lme/android/browser/SuggestionsAdapter$SuggestItem;>;"
    .restart local v3    # "suggest":Ljava/util/List;, "Ljava/util/List<Lme/android/browser/SuggestionsAdapter$SuggestItem;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/android/browser/SuggestionsAdapter$SuggestItem;

    .line 236
    .local v1, "item":Lme/android/browser/SuggestionsAdapter$SuggestItem;
    invoke-virtual {v2, v1}, Lme/android/browser/SuggestionsAdapter$SuggestionResults;->addResult(Lme/android/browser/SuggestionsAdapter$SuggestItem;)V

    goto :goto_0

    .line 240
    .end local v1    # "item":Lme/android/browser/SuggestionsAdapter$SuggestItem;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/android/browser/SuggestionsAdapter$SuggestItem;

    .line 241
    .restart local v1    # "item":Lme/android/browser/SuggestionsAdapter$SuggestItem;
    invoke-virtual {v2, v1}, Lme/android/browser/SuggestionsAdapter$SuggestionResults;->addResult(Lme/android/browser/SuggestionsAdapter$SuggestItem;)V

    goto :goto_1
.end method

.method public clearCache()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 543
    iput-object v0, p0, Lme/android/browser/SuggestionsAdapter;->mFilterResults:Ljava/util/List;

    .line 544
    iput-object v0, p0, Lme/android/browser/SuggestionsAdapter;->mSuggestResults:Ljava/util/List;

    .line 545
    invoke-virtual {p0}, Lme/android/browser/SuggestionsAdapter;->notifyDataSetInvalidated()V

    .line 546
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lme/android/browser/SuggestionsAdapter;->mMixedResults:Lme/android/browser/SuggestionsAdapter$SuggestionResults;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lme/android/browser/SuggestionsAdapter;->mMixedResults:Lme/android/browser/SuggestionsAdapter$SuggestionResults;

    invoke-virtual {v0}, Lme/android/browser/SuggestionsAdapter$SuggestionResults;->getLineCount()I

    move-result v0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lme/android/browser/SuggestionsAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lme/android/browser/SuggestionsAdapter;->getItem(I)Lme/android/browser/SuggestionsAdapter$SuggestItem;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lme/android/browser/SuggestionsAdapter$SuggestItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lme/android/browser/SuggestionsAdapter;->mMixedResults:Lme/android/browser/SuggestionsAdapter$SuggestionResults;

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lme/android/browser/SuggestionsAdapter;->mMixedResults:Lme/android/browser/SuggestionsAdapter$SuggestionResults;

    iget-object v0, v0, Lme/android/browser/SuggestionsAdapter$SuggestionResults;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/android/browser/SuggestionsAdapter$SuggestItem;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 143
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 148
    iget-object v2, p0, Lme/android/browser/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 149
    .local v0, "inflater":Landroid/view/LayoutInflater;
    move-object v1, p2

    .line 150
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 151
    const v2, 0x7f04002d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 153
    :cond_0
    invoke-virtual {p0, p1}, Lme/android/browser/SuggestionsAdapter;->getItem(I)Lme/android/browser/SuggestionsAdapter$SuggestItem;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lme/android/browser/SuggestionsAdapter;->bindView(Landroid/view/View;Lme/android/browser/SuggestionsAdapter$SuggestItem;)V

    .line 154
    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/android/browser/SuggestionsAdapter$SuggestItem;

    .line 115
    .local v0, "item":Lme/android/browser/SuggestionsAdapter$SuggestItem;
    const v1, 0x7f0d006c

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 117
    iget-object v1, p0, Lme/android/browser/SuggestionsAdapter;->mListener:Lme/android/browser/SuggestionsAdapter$CompletionListener;

    invoke-static {v0}, Lme/android/browser/SuggestionsAdapter;->getSuggestionUrl(Lme/android/browser/SuggestionsAdapter$SuggestItem;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lme/android/browser/SuggestionsAdapter$CompletionListener;->onSearch(Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lme/android/browser/SuggestionsAdapter;->mListener:Lme/android/browser/SuggestionsAdapter$CompletionListener;

    invoke-static {v0}, Lme/android/browser/SuggestionsAdapter;->getSuggestionUrl(Lme/android/browser/SuggestionsAdapter$SuggestItem;)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lme/android/browser/SuggestionsAdapter$SuggestItem;->type:I

    iget-object v4, v0, Lme/android/browser/SuggestionsAdapter$SuggestItem;->extra:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lme/android/browser/SuggestionsAdapter$CompletionListener;->onSelect(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setIncognitoMode(Z)V
    .locals 0
    .param p1, "incognito"    # Z

    .prologue
    .line 549
    iput-boolean p1, p0, Lme/android/browser/SuggestionsAdapter;->mIncognitoMode:Z

    .line 550
    invoke-virtual {p0}, Lme/android/browser/SuggestionsAdapter;->clearCache()V

    .line 551
    return-void
.end method

.method public setLandscapeMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lme/android/browser/SuggestionsAdapter;->mLandscapeMode:Z

    .line 101
    invoke-virtual {p0}, Lme/android/browser/SuggestionsAdapter;->notifyDataSetChanged()V

    .line 102
    return-void
.end method
