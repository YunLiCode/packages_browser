.class public Lme/android/browser/BrowserBookmarksAdapter;
.super Lme/android/browser/util/ThreadedCursorAdapter;
.source "BrowserBookmarksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/android/browser/util/ThreadedCursorAdapter",
        "<",
        "Lme/android/browser/BrowserBookmarksAdapterItem;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lme/android/browser/util/ThreadedCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lme/android/browser/BrowserBookmarksAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 48
    iput-object p1, p0, Lme/android/browser/BrowserBookmarksAdapter;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method


# virtual methods
.method bindGridView(Landroid/view/View;Landroid/content/Context;Lme/android/browser/BrowserBookmarksAdapterItem;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "item"    # Lme/android/browser/BrowserBookmarksAdapterItem;

    .prologue
    .line 81
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 82
    const v4, 0x7f0c0025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 83
    .local v0, "padding":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 83
    invoke-virtual {p1, v0, v3, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 85
    const v3, 0x7f0d001e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 86
    .local v1, "thumb":Landroid/widget/ImageView;
    const v3, 0x7f0d0018

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 88
    .local v2, "tv":Landroid/widget/TextView;
    iget-object v3, p3, Lme/android/browser/BrowserBookmarksAdapterItem;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-boolean v3, p3, Lme/android/browser/BrowserBookmarksAdapterItem;->is_folder:Z

    if-eqz v3, :cond_0

    .line 91
    const v3, 0x7f02005a

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 93
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 103
    :goto_0
    return-void

    .line 95
    :cond_0
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 96
    iget-object v3, p3, Lme/android/browser/BrowserBookmarksAdapterItem;->thumbnail:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    iget-boolean v3, p3, Lme/android/browser/BrowserBookmarksAdapterItem;->has_thumbnail:Z

    if-nez v3, :cond_2

    .line 97
    :cond_1
    const v3, 0x7f02000e

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    :goto_1
    const v3, 0x7f02000c

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object v3, p3, Lme/android/browser/BrowserBookmarksAdapterItem;->thumbnail:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public bridge synthetic bindView(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Lme/android/browser/BrowserBookmarksAdapterItem;

    invoke-virtual {p0, p1, p2}, Lme/android/browser/BrowserBookmarksAdapter;->bindView(Landroid/view/View;Lme/android/browser/BrowserBookmarksAdapterItem;)V

    return-void
.end method

.method public bindView(Landroid/view/View;Lme/android/browser/BrowserBookmarksAdapterItem;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Lme/android/browser/BrowserBookmarksAdapterItem;

    .prologue
    .line 63
    move-object v0, p1

    check-cast v0, Lme/android/browser/view/BookmarkContainer;

    .line 64
    .local v0, "container":Lme/android/browser/view/BookmarkContainer;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lme/android/browser/view/BookmarkContainer;->setIgnoreRequestLayout(Z)V

    .line 65
    iget-object v1, p0, Lme/android/browser/BrowserBookmarksAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v1, p2}, Lme/android/browser/BrowserBookmarksAdapter;->bindGridView(Landroid/view/View;Landroid/content/Context;Lme/android/browser/BrowserBookmarksAdapterItem;)V

    .line 66
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/android/browser/view/BookmarkContainer;->setIgnoreRequestLayout(Z)V

    .line 67
    return-void
.end method

.method protected getItemId(Landroid/database/Cursor;)J
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getLoadingObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lme/android/browser/BrowserBookmarksAdapter;->getLoadingObject()Lme/android/browser/BrowserBookmarksAdapterItem;

    move-result-object v0

    return-object v0
.end method

.method public getLoadingObject()Lme/android/browser/BrowserBookmarksAdapterItem;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lme/android/browser/BrowserBookmarksAdapterItem;

    invoke-direct {v0}, Lme/android/browser/BrowserBookmarksAdapterItem;-><init>()V

    .line 128
    .local v0, "item":Lme/android/browser/BrowserBookmarksAdapterItem;
    return-object v0
.end method

.method public bridge synthetic getRowObject(Landroid/database/Cursor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lme/android/browser/BrowserBookmarksAdapterItem;

    invoke-virtual {p0, p1, p2}, Lme/android/browser/BrowserBookmarksAdapter;->getRowObject(Landroid/database/Cursor;Lme/android/browser/BrowserBookmarksAdapterItem;)Lme/android/browser/BrowserBookmarksAdapterItem;

    move-result-object v0

    return-object v0
.end method

.method public getRowObject(Landroid/database/Cursor;Lme/android/browser/BrowserBookmarksAdapterItem;)Lme/android/browser/BrowserBookmarksAdapterItem;
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "item"    # Lme/android/browser/BrowserBookmarksAdapterItem;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 108
    if-nez p2, :cond_0

    .line 109
    new-instance p2, Lme/android/browser/BrowserBookmarksAdapterItem;

    .end local p2    # "item":Lme/android/browser/BrowserBookmarksAdapterItem;
    invoke-direct {p2}, Lme/android/browser/BrowserBookmarksAdapterItem;-><init>()V

    .line 111
    .restart local p2    # "item":Lme/android/browser/BrowserBookmarksAdapterItem;
    :cond_0
    iget-object v1, p2, Lme/android/browser/BrowserBookmarksAdapterItem;->thumbnail:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_4

    iget-object v1, p2, Lme/android/browser/BrowserBookmarksAdapterItem;->thumbnail:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 113
    .local v0, "thumbnail":Landroid/graphics/Bitmap;
    :goto_0
    const/4 v1, 0x4

    .line 112
    invoke-static {p1, v1, v0}, Lme/android/browser/BrowserBookmarksPage;->getBitmap(Landroid/database/Cursor;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_5

    move v1, v2

    :goto_1
    iput-boolean v1, p2, Lme/android/browser/BrowserBookmarksAdapterItem;->has_thumbnail:Z

    .line 115
    if-eqz v0, :cond_2

    .line 116
    iget-object v1, p2, Lme/android/browser/BrowserBookmarksAdapterItem;->thumbnail:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lme/android/browser/BrowserBookmarksAdapterItem;->thumbnail:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, v0, :cond_2

    .line 117
    :cond_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lme/android/browser/BrowserBookmarksAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p2, Lme/android/browser/BrowserBookmarksAdapterItem;->thumbnail:Landroid/graphics/drawable/BitmapDrawable;

    .line 119
    :cond_2
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3

    move v3, v2

    :cond_3
    iput-boolean v3, p2, Lme/android/browser/BrowserBookmarksAdapterItem;->is_folder:Z

    .line 120
    invoke-virtual {p0, p1}, Lme/android/browser/BrowserBookmarksAdapter;->getTitle(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p2, Lme/android/browser/BrowserBookmarksAdapterItem;->title:Ljava/lang/CharSequence;

    .line 121
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lme/android/browser/BrowserBookmarksAdapterItem;->url:Ljava/lang/String;

    .line 122
    return-object p2

    .line 111
    .end local v0    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_5
    move v1, v3

    .line 114
    goto :goto_1
.end method

.method getTitle(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 70
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 71
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 75
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 73
    :pswitch_0
    iget-object v1, p0, Lme/android/browser/BrowserBookmarksAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f08013e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 58
    iget-object v0, p0, Lme/android/browser/BrowserBookmarksAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
