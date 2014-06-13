.class public Lcom/android/common/Search;
.super Ljava/lang/Object;
.source "Search.java"


# static fields
.field public static final SOURCE:Ljava/lang/String; = "source"

.field public static final SUGGEST_COLUMN_LAST_ACCESS_HINT:Ljava/lang/String; = "suggest_last_access_hint"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static getSuggestions(Landroid/content/Context;Landroid/app/SearchableInfo;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "searchable"    # Landroid/app/SearchableInfo;
    .param p2, "query"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/common/Search;->getSuggestions(Landroid/content/Context;Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getSuggestions(Landroid/content/Context;Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "searchable"    # Landroid/app/SearchableInfo;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "limit"    # I

    .prologue
    const/4 v2, 0x0

    .line 89
    if-nez p1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-object v2

    .line 93
    :cond_1
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "authority":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 98
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "content"

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 106
    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 110
    .local v8, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, "contentPath":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 112
    invoke-virtual {v8, v7}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 116
    :cond_2
    const-string v0, "search_suggest_query"

    invoke-virtual {v8, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 119
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    move-result-object v3

    .local v3, "selection":Ljava/lang/String;
    move-object v4, v2

    .line 121
    check-cast v4, [Ljava/lang/String;

    .line 122
    .local v4, "selArgs":[Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 123
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4    # "selArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 128
    .restart local v4    # "selArgs":[Ljava/lang/String;
    :goto_1
    if-lez p3, :cond_3

    .line 129
    const-string v0, "limit"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v0, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 132
    :cond_3
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 135
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 125
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_4
    invoke-virtual {v8, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1
.end method
