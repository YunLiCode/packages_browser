.class Lme/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;
.super Landroid/widget/BaseAdapter;
.source "ErrorConsoleView.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/ErrorConsoleView$ErrorConsoleListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorConsoleMessageList"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$android$webkit$ConsoleMessage$MessageLevel:[I


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mMessages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/webkit/ConsoleMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$android$webkit$ConsoleMessage$MessageLevel()[I
    .locals 3

    .prologue
    .line 233
    sget-object v0, Lme/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;->$SWITCH_TABLE$android$webkit$ConsoleMessage$MessageLevel:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/webkit/ConsoleMessage$MessageLevel;->values()[Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->DEBUG:Landroid/webkit/ConsoleMessage$MessageLevel;

    invoke-virtual {v1}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->ERROR:Landroid/webkit/ConsoleMessage$MessageLevel;

    invoke-virtual {v1}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->LOG:Landroid/webkit/ConsoleMessage$MessageLevel;

    invoke-virtual {v1}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->TIP:Landroid/webkit/ConsoleMessage$MessageLevel;

    invoke-virtual {v1}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->WARNING:Landroid/webkit/ConsoleMessage$MessageLevel;

    invoke-virtual {v1}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lme/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;->$SWITCH_TABLE$android$webkit$ConsoleMessage$MessageLevel:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 240
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lme/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;->mMessages:Ljava/util/Vector;

    .line 242
    const-string v0, "layout_inflater"

    .line 241
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lme/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;->mInflater:Landroid/view/LayoutInflater;

    .line 243
    return-void
.end method


# virtual methods
.method public add(Landroid/webkit/ConsoleMessage;)V
    .locals 1
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 249
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;->mMessages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-virtual {p0}, Lme/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;->notifyDataSetChanged()V

    .line 251
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;->mMessages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 258
    invoke-virtual {p0}, Lme/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;->notifyDataSetChanged()V

    .line 259
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;->mMessages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lme/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;->mMessages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 272
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 293
    iget-object v4, p0, Lme/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;->mMessages:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ConsoleMessage;

    .line 295
    .local v0, "error":Landroid/webkit/ConsoleMessage;
    if-nez v0, :cond_0

    .line 296
    const/4 v3, 0x0

    .line 324
    :goto_0
    return-object v3

    .line 299
    :cond_0
    if-nez p2, :cond_1

    .line 300
    iget-object v4, p0, Lme/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x109000d

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 305
    .local v3, "view":Landroid/view/View;
    :goto_1
    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 306
    .local v1, "headline":Landroid/widget/TextView;
    const v4, 0x1020015

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 307
    .local v2, "subText":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    invoke-virtual {v0}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    invoke-static {}, Lme/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;->$SWITCH_TABLE$android$webkit$ConsoleMessage$MessageLevel()[I

    move-result-object v4

    invoke-virtual {v0}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 321
    :pswitch_0
    const v4, -0x333334

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 302
    .end local v1    # "headline":Landroid/widget/TextView;
    .end local v2    # "subText":Landroid/widget/TextView;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    move-object v3, p2

    .restart local v3    # "view":Landroid/view/View;
    goto :goto_1

    .line 311
    .restart local v1    # "headline":Landroid/widget/TextView;
    .restart local v2    # "subText":Landroid/widget/TextView;
    :pswitch_1
    const/high16 v4, -0x10000

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 315
    :pswitch_2
    const/16 v4, 0xff

    const/16 v5, 0xc0

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 318
    :pswitch_3
    const v4, -0xffff01

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method
