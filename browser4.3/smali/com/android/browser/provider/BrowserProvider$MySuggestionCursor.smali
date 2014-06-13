.class Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;
.super Landroid/database/AbstractCursor;
.source "BrowserProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/provider/BrowserProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySuggestionCursor"
.end annotation


# instance fields
.field private mHistoryCount:I

.field private mHistoryCursor:Landroid/database/Cursor;

.field private mIncludeWebSearch:Z

.field private mString:Ljava/lang/String;

.field private mSuggestCursor:Landroid/database/Cursor;

.field private mSuggestIntentExtraDataId:I

.field private mSuggestQueryId:I

.field private mSuggestText1Id:I

.field private mSuggestText2Id:I

.field private mSuggestText2UrlId:I

.field private mSuggestionCount:I

.field final synthetic this$0:Lcom/android/browser/provider/BrowserProvider;


# direct methods
.method public constructor <init>(Lcom/android/browser/provider/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 5
    .param p2, "hc"    # Landroid/database/Cursor;
    .param p3, "sc"    # Landroid/database/Cursor;
    .param p4, "string"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 469
    iput-object p1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->this$0:Lcom/android/browser/provider/BrowserProvider;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 470
    iput-object p2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    .line 471
    iput-object p3, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    .line 472
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    .line 473
    if-eqz p3, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestionCount:I

    .line 474
    iget v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestionCount:I

    # getter for: Lcom/android/browser/provider/BrowserProvider;->mMaxSuggestionLongSize:I
    invoke-static {p1}, Lcom/android/browser/provider/BrowserProvider;->access$200(Lcom/android/browser/provider/BrowserProvider;)I

    move-result v2

    iget v3, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_0

    .line 475
    # getter for: Lcom/android/browser/provider/BrowserProvider;->mMaxSuggestionLongSize:I
    invoke-static {p1}, Lcom/android/browser/provider/BrowserProvider;->access$200(Lcom/android/browser/provider/BrowserProvider;)I

    move-result v0

    iget v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestionCount:I

    .line 477
    :cond_0
    iput-object p4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mString:Ljava/lang/String;

    .line 478
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mIncludeWebSearch:Z

    .line 483
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    if-nez v0, :cond_4

    .line 484
    iput v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestText1Id:I

    .line 485
    iput v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestText2Id:I

    .line 486
    iput v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestText2UrlId:I

    .line 487
    iput v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestQueryId:I

    .line 488
    iput v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestIntentExtraDataId:I

    .line 501
    :goto_2
    return-void

    :cond_2
    move v0, v1

    .line 472
    goto :goto_0

    :cond_3
    move v0, v1

    .line 473
    goto :goto_1

    .line 490
    :cond_4
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    const-string v1, "suggest_text_1"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestText1Id:I

    .line 492
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    const-string v1, "suggest_text_2"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestText2Id:I

    .line 494
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    const-string v1, "suggest_text_2_url"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestText2UrlId:I

    .line 496
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    const-string v1, "suggest_intent_query"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestQueryId:I

    .line 498
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    const-string v1, "suggest_intent_extra_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestIntentExtraDataId:I

    goto :goto_2
.end method

.method private getHistoryTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 727
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_1

    .line 729
    :cond_0
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/browser/provider/BrowserProvider;->stripUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/browser/provider/BrowserProvider;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 731
    :cond_1
    return-object v0
.end method

.method private getHistoryUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 742
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 743
    .local v0, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_1

    .line 744
    :cond_0
    const/4 v1, 0x0

    .line 746
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/browser/provider/BrowserProvider;->stripUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/browser/provider/BrowserProvider;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 709
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 710
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 712
    iput-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 716
    iput-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    .line 718
    :cond_1
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 695
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 697
    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->deactivate()V

    .line 698
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 540
    # getter for: Lcom/android/browser/provider/BrowserProvider;->COLUMNS:[Ljava/lang/String;
    invoke-static {}, Lcom/android/browser/provider/BrowserProvider;->access$300()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 531
    iget-boolean v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mIncludeWebSearch:Z

    if-eqz v0, :cond_0

    .line 532
    iget v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    iget v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestionCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 534
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    iget v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestionCount:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getDouble(I)D
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 657
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 662
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 667
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 672
    iget v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 673
    iget v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mPos:I

    int-to-long v0, v0

    return-wide v0

    .line 675
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 680
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 7
    .param p1, "columnIndex"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v6, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 545
    iget v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mPos:I

    if-eq v4, v6, :cond_2

    iget-object v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_2

    .line 546
    const/4 v0, -0x1

    .line 547
    .local v0, "type":I
    iget-boolean v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mIncludeWebSearch:Z

    if-eqz v4, :cond_6

    .line 548
    iget v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-nez v4, :cond_3

    iget v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mPos:I

    if-nez v4, :cond_3

    .line 549
    const/4 v0, 0x0

    .line 557
    :cond_0
    :goto_0
    if-ne v0, v6, :cond_1

    iget v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mPos:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-ge v4, v5, :cond_5

    move v0, v1

    .line 562
    :cond_1
    :goto_1
    packed-switch p1, :pswitch_data_0

    .end local v0    # "type":I
    :cond_2
    move-object v1, v3

    .line 652
    :goto_2
    return-object v1

    .line 550
    .restart local v0    # "type":I
    :cond_3
    iget v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-lez v4, :cond_0

    .line 551
    iget v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mPos:I

    if-nez v4, :cond_4

    .line 552
    const/4 v0, 0x1

    goto :goto_0

    .line 553
    :cond_4
    iget v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mPos:I

    if-ne v4, v1, :cond_0

    .line 554
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    move v0, v2

    .line 557
    goto :goto_1

    .line 559
    :cond_6
    iget v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mPos:I

    iget v5, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-ge v4, v5, :cond_7

    move v0, v1

    :goto_3
    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_3

    .line 564
    :pswitch_0
    if-ne v0, v1, :cond_8

    .line 565
    const-string v1, "android.intent.action.VIEW"

    goto :goto_2

    .line 567
    :cond_8
    const-string v1, "android.intent.action.SEARCH"

    goto :goto_2

    .line 571
    :pswitch_1
    if-ne v0, v1, :cond_9

    .line 572
    iget-object v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_9
    move-object v1, v3

    .line 574
    goto :goto_2

    .line 578
    :pswitch_2
    if-nez v0, :cond_a

    .line 579
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mString:Ljava/lang/String;

    goto :goto_2

    .line 580
    :cond_a
    if-ne v0, v1, :cond_b

    .line 581
    invoke-direct {p0}, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->getHistoryTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 583
    :cond_b
    iget v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestText1Id:I

    if-ne v1, v6, :cond_c

    move-object v1, v3

    goto :goto_2

    .line 584
    :cond_c
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestText1Id:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 588
    :pswitch_3
    if-nez v0, :cond_d

    .line 589
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->this$0:Lcom/android/browser/provider/BrowserProvider;

    invoke-virtual {v1}, Lcom/android/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c011e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 590
    :cond_d
    if-ne v0, v1, :cond_e

    move-object v1, v3

    .line 591
    goto :goto_2

    .line 593
    :cond_e
    iget v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestText2Id:I

    if-ne v1, v6, :cond_f

    move-object v1, v3

    goto :goto_2

    .line 594
    :cond_f
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestText2Id:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 598
    :pswitch_4
    if-nez v0, :cond_10

    move-object v1, v3

    .line 599
    goto :goto_2

    .line 600
    :cond_10
    if-ne v0, v1, :cond_11

    .line 601
    invoke-direct {p0}, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->getHistoryUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 603
    :cond_11
    iget v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestText2UrlId:I

    if-ne v1, v6, :cond_12

    move-object v1, v3

    goto :goto_2

    .line 604
    :cond_12
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestText2UrlId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 608
    :pswitch_5
    if-ne v0, v1, :cond_14

    .line 609
    iget-object v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_13

    .line 610
    const v1, 0x7f02003d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 614
    :cond_13
    const v1, 0x7f02003f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 619
    :cond_14
    const v1, 0x7f020040

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 625
    :pswitch_6
    const-string v1, "0"

    goto/16 :goto_2

    .line 628
    :pswitch_7
    if-nez v0, :cond_15

    .line 629
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mString:Ljava/lang/String;

    goto/16 :goto_2

    .line 630
    :cond_15
    if-ne v0, v1, :cond_16

    .line 635
    iget-object v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 637
    :cond_16
    iget v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestQueryId:I

    if-ne v1, v6, :cond_17

    move-object v1, v3

    goto/16 :goto_2

    .line 638
    :cond_17
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestQueryId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 642
    :pswitch_8
    if-nez v0, :cond_18

    move-object v1, v3

    .line 643
    goto/16 :goto_2

    .line 644
    :cond_18
    if-ne v0, v1, :cond_19

    move-object v1, v3

    .line 645
    goto/16 :goto_2

    .line 647
    :cond_19
    iget v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestIntentExtraDataId:I

    if-ne v1, v6, :cond_1a

    move-object v1, v3

    goto/16 :goto_2

    .line 648
    :cond_1a
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestIntentExtraDataId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 562
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 685
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onMove(II)Z
    .locals 3
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 505
    iget-object v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 526
    :goto_0
    return v0

    .line 508
    :cond_0
    iget-boolean v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mIncludeWebSearch:Z

    if-eqz v2, :cond_4

    .line 509
    iget v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    move v0, v1

    .line 510
    goto :goto_0

    .line 511
    :cond_1
    iget v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-lez v2, :cond_3

    .line 512
    if-nez p2, :cond_2

    .line 513
    iget-object v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v0, v1

    .line 514
    goto :goto_0

    .line 515
    :cond_2
    if-ne p2, v1, :cond_3

    move v0, v1

    .line 516
    goto :goto_0

    .line 519
    :cond_3
    add-int/lit8 p2, p2, -0x1

    .line 521
    :cond_4
    iget v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-le v0, p2, :cond_5

    .line 522
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_1
    move v0, v1

    .line 526
    goto :goto_0

    .line 524
    :cond_5
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    sub-int v2, p2, v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_1
.end method

.method public requery()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 702
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    move-result v1

    :cond_0
    or-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
