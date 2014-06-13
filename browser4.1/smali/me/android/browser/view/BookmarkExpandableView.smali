.class public Lme/android/browser/view/BookmarkExpandableView;
.super Landroid/widget/ExpandableListView;
.source "BookmarkExpandableView.java"

# interfaces
.implements Lme/android/browser/BreadCrumbView$Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;,
        Lme/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;
    }
.end annotation


# static fields
.field public static final LOCAL_ACCOUNT_NAME:Ljava/lang/String; = "local"


# instance fields
.field private mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

.field private mBreadcrumbController:Lme/android/browser/BreadCrumbView$Controller;

.field private mChildClickListener:Landroid/view/View$OnClickListener;

.field private mColumnWidth:I

.field private mContext:Landroid/content/Context;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mGroupOnClickListener:Landroid/view/View$OnClickListener;

.field private mLongClickable:Z

.field private mMaxColumnCount:I

.field private mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 218
    new-instance v0, Lme/android/browser/view/BookmarkExpandableView$1;

    invoke-direct {v0, p0}, Lme/android/browser/view/BookmarkExpandableView$1;-><init>(Lme/android/browser/view/BookmarkExpandableView;)V

    iput-object v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mChildClickListener:Landroid/view/View$OnClickListener;

    .line 239
    new-instance v0, Lme/android/browser/view/BookmarkExpandableView$2;

    invoke-direct {v0, p0}, Lme/android/browser/view/BookmarkExpandableView$2;-><init>(Lme/android/browser/view/BookmarkExpandableView;)V

    iput-object v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mGroupOnClickListener:Landroid/view/View$OnClickListener;

    .line 63
    invoke-virtual {p0, p1}, Lme/android/browser/view/BookmarkExpandableView;->init(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 218
    new-instance v0, Lme/android/browser/view/BookmarkExpandableView$1;

    invoke-direct {v0, p0}, Lme/android/browser/view/BookmarkExpandableView$1;-><init>(Lme/android/browser/view/BookmarkExpandableView;)V

    iput-object v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mChildClickListener:Landroid/view/View$OnClickListener;

    .line 239
    new-instance v0, Lme/android/browser/view/BookmarkExpandableView$2;

    invoke-direct {v0, p0}, Lme/android/browser/view/BookmarkExpandableView$2;-><init>(Lme/android/browser/view/BookmarkExpandableView;)V

    iput-object v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mGroupOnClickListener:Landroid/view/View$OnClickListener;

    .line 68
    invoke-virtual {p0, p1}, Lme/android/browser/view/BookmarkExpandableView;->init(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 218
    new-instance v0, Lme/android/browser/view/BookmarkExpandableView$1;

    invoke-direct {v0, p0}, Lme/android/browser/view/BookmarkExpandableView$1;-><init>(Lme/android/browser/view/BookmarkExpandableView;)V

    iput-object v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mChildClickListener:Landroid/view/View$OnClickListener;

    .line 239
    new-instance v0, Lme/android/browser/view/BookmarkExpandableView$2;

    invoke-direct {v0, p0}, Lme/android/browser/view/BookmarkExpandableView$2;-><init>(Lme/android/browser/view/BookmarkExpandableView;)V

    iput-object v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mGroupOnClickListener:Landroid/view/View$OnClickListener;

    .line 74
    invoke-virtual {p0, p1}, Lme/android/browser/view/BookmarkExpandableView;->init(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method static synthetic access$0(Lme/android/browser/view/BookmarkExpandableView;)Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lme/android/browser/view/BookmarkExpandableView;)Landroid/widget/ExpandableListView$OnChildClickListener;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    return-object v0
.end method

.method static synthetic access$2(Lme/android/browser/view/BookmarkExpandableView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lme/android/browser/view/BookmarkExpandableView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$3(Lme/android/browser/view/BookmarkExpandableView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lme/android/browser/view/BookmarkExpandableView;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mChildClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$5(Lme/android/browser/view/BookmarkExpandableView;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mLongClickable:Z

    return v0
.end method

.method static synthetic access$6(Lme/android/browser/view/BookmarkExpandableView;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mColumnWidth:I

    return v0
.end method

.method static synthetic access$7(Lme/android/browser/view/BookmarkExpandableView;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mMaxColumnCount:I

    return v0
.end method

.method static synthetic access$8(Lme/android/browser/view/BookmarkExpandableView;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mGroupOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public addAccount(Ljava/lang/String;Lme/android/browser/BrowserBookmarksAdapter;Z)V
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "adapter"    # Lme/android/browser/BrowserBookmarksAdapter;
    .param p3, "expandGroup"    # Z

    .prologue
    .line 122
    iget-object v2, p0, Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    iget-object v2, v2, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 123
    .local v1, "indexOf":I
    if-ltz v1, :cond_2

    .line 124
    iget-object v2, p0, Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    iget-object v2, v2, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/android/browser/BrowserBookmarksAdapter;

    .line 125
    .local v0, "existing":Lme/android/browser/BrowserBookmarksAdapter;
    if-eq v0, p2, :cond_0

    .line 126
    iget-object v2, p0, Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    iget-object v2, v2, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v2}, Lme/android/browser/BrowserBookmarksAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 128
    iget-object v2, p0, Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    iget-object v2, v2, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 129
    iget-object v2, p0, Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    iget-object v2, v2, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 130
    iget-object v2, p0, Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    iget-object v2, v2, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p2, v2}, Lme/android/browser/BrowserBookmarksAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 137
    .end local v0    # "existing":Lme/android/browser/BrowserBookmarksAdapter;
    :cond_0
    :goto_0
    iget-object v2, p0, Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    invoke-virtual {v2}, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->notifyDataSetChanged()V

    .line 138
    if-eqz p3, :cond_1

    .line 139
    iget-object v2, p0, Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    invoke-virtual {v2}, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->getGroupCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lme/android/browser/view/BookmarkExpandableView;->expandGroup(I)Z

    .line 141
    :cond_1
    return-void

    .line 133
    :cond_2
    iget-object v2, p0, Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    iget-object v2, v2, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v2, p0, Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    iget-object v2, v2, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v2, p0, Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    iget-object v2, v2, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p2, v2}, Lme/android/browser/BrowserBookmarksAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public clearAccounts()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    invoke-virtual {v0}, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->clear()V

    .line 117
    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    .line 164
    invoke-virtual {p0}, Lme/android/browser/view/BookmarkExpandableView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .local v0, "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    move-object v1, p1

    .line 168
    check-cast v1, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 170
    invoke-virtual {p0, p1}, Lme/android/browser/view/BookmarkExpandableView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 171
    iget-object v1, p0, Lme/android/browser/view/BookmarkExpandableView;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lme/android/browser/view/BookmarkExpandableView;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v1, p1, p0, v0}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_0
    move-object v1, p1

    .line 177
    check-cast v1, Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 179
    iget-object v1, p0, Lme/android/browser/view/BookmarkExpandableView;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lme/android/browser/view/BookmarkExpandableView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p1}, Landroid/view/ViewParent;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 182
    :cond_1
    return-void
.end method

.method public getBreadCrumbs(I)Lme/android/browser/BreadCrumbView;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    invoke-virtual {v0, p1}, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->getBreadCrumbView(I)Lme/android/browser/BreadCrumbView;

    move-result-object v0

    return-object v0
.end method

.method public getChildAdapter(I)Lme/android/browser/BrowserBookmarksAdapter;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    iget-object v0, v0, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/android/browser/BrowserBookmarksAdapter;

    return-object v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    iput-object p1, p0, Lme/android/browser/view/BookmarkExpandableView;->mContext:Landroid/content/Context;

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lme/android/browser/view/BookmarkExpandableView;->setItemsCanFocus(Z)V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lme/android/browser/view/BookmarkExpandableView;->setLongClickable(Z)V

    .line 81
    iget-object v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    const v1, 0x7f0e0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 81
    iput v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mMaxColumnCount:I

    .line 83
    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0}, Lme/android/browser/view/BookmarkExpandableView;->setScrollBarStyle(I)V

    .line 84
    new-instance v0, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    iget-object v1, p0, Lme/android/browser/view/BookmarkExpandableView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;-><init>(Lme/android/browser/view/BookmarkExpandableView;Landroid/content/Context;)V

    iput-object v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    .line 85
    iget-object v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    invoke-super {p0, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 86
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 91
    .local v0, "width":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 92
    .local v1, "widthMode":I
    if-lez v0, :cond_0

    .line 93
    iget-object v2, p0, Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    invoke-virtual {v2, v0}, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->measureChildren(I)V

    .line 94
    iget-object v2, p0, Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    iget v2, v2, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mRowPadding:I

    iget-object v3, p0, Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    iget v3, v3, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mRowPadding:I

    invoke-virtual {p0, v2, v4, v3, v4}, Lme/android/browser/view/BookmarkExpandableView;->setPadding(IIII)V

    .line 95
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 97
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ExpandableListView;->onMeasure(II)V

    .line 98
    invoke-virtual {p0}, Lme/android/browser/view/BookmarkExpandableView;->getMeasuredWidth()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 99
    iget-object v2, p0, Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    invoke-virtual {p0}, Lme/android/browser/view/BookmarkExpandableView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->measureChildren(I)V

    .line 101
    :cond_1
    return-void
.end method

.method public onTop(Lme/android/browser/BreadCrumbView;ILjava/lang/Object;)V
    .locals 1
    .param p1, "view"    # Lme/android/browser/BreadCrumbView;
    .param p2, "level"    # I
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 200
    iget-object v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mBreadcrumbController:Lme/android/browser/BreadCrumbView$Controller;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mBreadcrumbController:Lme/android/browser/BreadCrumbView$Controller;

    invoke-interface {v0, p1, p2, p3}, Lme/android/browser/BreadCrumbView$Controller;->onTop(Lme/android/browser/BreadCrumbView;ILjava/lang/Object;)V

    .line 203
    :cond_0
    return-void
.end method

.method public saveGroupState()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 257
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 258
    .local v3, "obj":Lorg/json/JSONObject;
    iget-object v4, p0, Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    invoke-virtual {v4}, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->getGroupCount()I

    move-result v1

    .line 259
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 265
    return-object v3

    .line 260
    :cond_0
    iget-object v4, p0, Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    iget-object v4, v4, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 261
    .local v0, "acctName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lme/android/browser/view/BookmarkExpandableView;->isGroupExpanded(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 262
    if-eqz v0, :cond_2

    .end local v0    # "acctName":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 259
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 262
    .restart local v0    # "acctName":Ljava/lang/String;
    :cond_2
    const-string v0, "local"

    goto :goto_1
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBreadcrumbController(Lme/android/browser/BreadCrumbView$Controller;)V
    .locals 0
    .param p1, "controller"    # Lme/android/browser/BreadCrumbView$Controller;

    .prologue
    .line 206
    iput-object p1, p0, Lme/android/browser/view/BookmarkExpandableView;->mBreadcrumbController:Lme/android/browser/BreadCrumbView$Controller;

    .line 207
    return-void
.end method

.method public setColumnWidthFromLayout(I)V
    .locals 4
    .param p1, "layout"    # I

    .prologue
    .line 109
    iget-object v2, p0, Lme/android/browser/view/BookmarkExpandableView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 110
    .local v0, "infalter":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 111
    .local v1, "v":Landroid/view/View;
    sget v2, Landroid/view/View$MeasureSpec;->UNSPECIFIED:I

    sget v3, Landroid/view/View$MeasureSpec;->UNSPECIFIED:I

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 112
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lme/android/browser/view/BookmarkExpandableView;->mColumnWidth:I

    .line 113
    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
    .locals 0
    .param p1, "onChildClickListener"    # Landroid/widget/ExpandableListView$OnChildClickListener;

    .prologue
    .line 145
    iput-object p1, p0, Lme/android/browser/view/BookmarkExpandableView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 146
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 150
    iput-object p1, p0, Lme/android/browser/view/BookmarkExpandableView;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 151
    iget-boolean v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mLongClickable:Z

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mLongClickable:Z

    .line 153
    iget-object v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lme/android/browser/view/BookmarkExpandableView;->mAdapter:Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    invoke-virtual {v0}, Lme/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->notifyDataSetChanged()V

    .line 157
    :cond_0
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 186
    const/high16 v2, 0x7f0d0000

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 187
    .local v1, "groupPosition":I
    const v2, 0x7f0d0001

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 189
    .local v0, "childPosition":I
    new-instance v2, Lme/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;

    .line 190
    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lme/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;-><init>(IILme/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;)V

    .line 189
    iput-object v2, p0, Lme/android/browser/view/BookmarkExpandableView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 191
    invoke-virtual {p0}, Lme/android/browser/view/BookmarkExpandableView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 192
    invoke-virtual {p0}, Lme/android/browser/view/BookmarkExpandableView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    .line 195
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
