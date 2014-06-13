.class Lme/android/browser/SuggestionsAdapter$SuggestFilter;
.super Landroid/widget/Filter;
.source "SuggestionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/SuggestionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuggestFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/SuggestionsAdapter;


# direct methods
.method constructor <init>(Lme/android/browser/SuggestionsAdapter;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lme/android/browser/SuggestionsAdapter$SuggestFilter;->this$0:Lme/android/browser/SuggestionsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method private shouldProcessEmptyQuery()Z
    .locals 2

    .prologue
    .line 269
    iget-object v1, p0, Lme/android/browser/SuggestionsAdapter$SuggestFilter;->this$0:Lme/android/browser/SuggestionsAdapter;

    iget-object v1, v1, Lme/android/browser/SuggestionsAdapter;->mSettings:Lme/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lme/android/browser/BrowserSettings;->getSearchEngine()Lme/android/browser/search/SearchEngine;

    move-result-object v0

    .line 270
    .local v0, "searchEngine":Lme/android/browser/search/SearchEngine;
    invoke-interface {v0}, Lme/android/browser/search/SearchEngine;->wantsEmptyQuery()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 252
    const-string v1, ""

    .line 258
    :goto_0
    return-object v1

    :cond_0
    move-object v0, p1

    .line 254
    check-cast v0, Lme/android/browser/SuggestionsAdapter$SuggestItem;

    .line 255
    .local v0, "sitem":Lme/android/browser/SuggestionsAdapter$SuggestItem;
    iget-object v1, v0, Lme/android/browser/SuggestionsAdapter$SuggestItem;->title:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, v0, Lme/android/browser/SuggestionsAdapter$SuggestItem;->title:Ljava/lang/String;

    goto :goto_0

    .line 258
    :cond_1
    iget-object v1, v0, Lme/android/browser/SuggestionsAdapter$SuggestItem;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method mixResults(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lme/android/browser/SuggestionsAdapter$SuggestItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lme/android/browser/SuggestionsAdapter$SuggestItem;>;"
    iget-object v6, p0, Lme/android/browser/SuggestionsAdapter$SuggestFilter;->this$0:Lme/android/browser/SuggestionsAdapter;

    # invokes: Lme/android/browser/SuggestionsAdapter;->getMaxLines()I
    invoke-static {v6}, Lme/android/browser/SuggestionsAdapter;->access$1(Lme/android/browser/SuggestionsAdapter;)I

    move-result v2

    .line 300
    .local v2, "maxLines":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lme/android/browser/SuggestionsAdapter$SuggestFilter;->this$0:Lme/android/browser/SuggestionsAdapter;

    iget-object v6, v6, Lme/android/browser/SuggestionsAdapter;->mSources:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v0, v6, :cond_0

    .line 310
    return-void

    .line 301
    :cond_0
    iget-object v6, p0, Lme/android/browser/SuggestionsAdapter$SuggestFilter;->this$0:Lme/android/browser/SuggestionsAdapter;

    iget-object v6, v6, Lme/android/browser/SuggestionsAdapter;->mSources:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lme/android/browser/SuggestionsAdapter$CursorSource;

    .line 302
    .local v5, "s":Lme/android/browser/SuggestionsAdapter$CursorSource;
    invoke-virtual {v5}, Lme/android/browser/SuggestionsAdapter$CursorSource;->getCount()I

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 303
    .local v4, "n":I
    sub-int/2addr v2, v4

    .line 304
    const/4 v3, 0x0

    .line 305
    .local v3, "more":Z
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-lt v1, v4, :cond_1

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_1
    invoke-virtual {v5}, Lme/android/browser/SuggestionsAdapter$CursorSource;->getItem()Lme/android/browser/SuggestionsAdapter$SuggestItem;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-virtual {v5}, Lme/android/browser/SuggestionsAdapter$CursorSource;->moveToNext()Z

    move-result v3

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 275
    new-instance v2, Landroid/widget/Filter$FilterResults;

    invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 276
    .local v2, "res":Landroid/widget/Filter$FilterResults;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lme/android/browser/SuggestionsAdapter$SuggestFilter;->shouldProcessEmptyQuery()Z

    move-result v4

    if-nez v4, :cond_0

    .line 277
    const/4 v4, 0x0

    iput v4, v2, Landroid/widget/Filter$FilterResults;->count:I

    .line 278
    const/4 v4, 0x0

    iput-object v4, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 295
    :goto_0
    return-object v2

    .line 281
    :cond_0
    invoke-virtual {p0, p1}, Lme/android/browser/SuggestionsAdapter$SuggestFilter;->startSuggestionsAsync(Ljava/lang/CharSequence;)V

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v0, "filterResults":Ljava/util/List;, "Ljava/util/List<Lme/android/browser/SuggestionsAdapter$SuggestItem;>;"
    if-eqz p1, :cond_1

    .line 284
    iget-object v4, p0, Lme/android/browser/SuggestionsAdapter$SuggestFilter;->this$0:Lme/android/browser/SuggestionsAdapter;

    iget-object v4, v4, Lme/android/browser/SuggestionsAdapter;->mSources:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 287
    invoke-virtual {p0, v0}, Lme/android/browser/SuggestionsAdapter$SuggestFilter;->mixResults(Ljava/util/List;)V

    .line 289
    :cond_1
    iget-object v4, p0, Lme/android/browser/SuggestionsAdapter$SuggestFilter;->this$0:Lme/android/browser/SuggestionsAdapter;

    iget-object v5, v4, Lme/android/browser/SuggestionsAdapter;->mResultsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 290
    :try_start_0
    iget-object v4, p0, Lme/android/browser/SuggestionsAdapter$SuggestFilter;->this$0:Lme/android/browser/SuggestionsAdapter;

    iput-object v0, v4, Lme/android/browser/SuggestionsAdapter;->mFilterResults:Ljava/util/List;

    .line 289
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    iget-object v4, p0, Lme/android/browser/SuggestionsAdapter$SuggestFilter;->this$0:Lme/android/browser/SuggestionsAdapter;

    invoke-virtual {v4}, Lme/android/browser/SuggestionsAdapter;->buildSuggestionResults()Lme/android/browser/SuggestionsAdapter$SuggestionResults;

    move-result-object v1

    .line 293
    .local v1, "mixed":Lme/android/browser/SuggestionsAdapter$SuggestionResults;
    invoke-virtual {v1}, Lme/android/browser/SuggestionsAdapter$SuggestionResults;->getLineCount()I

    move-result v4

    iput v4, v2, Landroid/widget/Filter$FilterResults;->count:I

    .line 294
    iput-object v1, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_0

    .line 284
    .end local v1    # "mixed":Lme/android/browser/SuggestionsAdapter$SuggestionResults;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/android/browser/SuggestionsAdapter$CursorSource;

    .line 285
    .local v3, "sc":Lme/android/browser/SuggestionsAdapter$CursorSource;
    invoke-virtual {v3, p1}, Lme/android/browser/SuggestionsAdapter$CursorSource;->runQuery(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 289
    .end local v3    # "sc":Lme/android/browser/SuggestionsAdapter$CursorSource;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "fresults"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 314
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    instance-of v0, v0, Lme/android/browser/SuggestionsAdapter$SuggestionResults;

    if-eqz v0, :cond_0

    .line 315
    iget-object v1, p0, Lme/android/browser/SuggestionsAdapter$SuggestFilter;->this$0:Lme/android/browser/SuggestionsAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Lme/android/browser/SuggestionsAdapter$SuggestionResults;

    iput-object v0, v1, Lme/android/browser/SuggestionsAdapter;->mMixedResults:Lme/android/browser/SuggestionsAdapter$SuggestionResults;

    .line 316
    iget-object v0, p0, Lme/android/browser/SuggestionsAdapter$SuggestFilter;->this$0:Lme/android/browser/SuggestionsAdapter;

    invoke-virtual {v0}, Lme/android/browser/SuggestionsAdapter;->notifyDataSetChanged()V

    .line 318
    :cond_0
    return-void
.end method

.method startSuggestionsAsync(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 263
    iget-object v0, p0, Lme/android/browser/SuggestionsAdapter$SuggestFilter;->this$0:Lme/android/browser/SuggestionsAdapter;

    iget-boolean v0, v0, Lme/android/browser/SuggestionsAdapter;->mIncognitoMode:Z

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Lme/android/browser/SuggestionsAdapter$SlowFilterTask;

    iget-object v1, p0, Lme/android/browser/SuggestionsAdapter$SuggestFilter;->this$0:Lme/android/browser/SuggestionsAdapter;

    invoke-direct {v0, v1}, Lme/android/browser/SuggestionsAdapter$SlowFilterTask;-><init>(Lme/android/browser/SuggestionsAdapter;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lme/android/browser/SuggestionsAdapter$SlowFilterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 266
    :cond_0
    return-void
.end method
