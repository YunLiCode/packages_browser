.class Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "BookmarkExpandableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/view/BookmarkExpandableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BookmarkAccountAdapter"
.end annotation


# instance fields
.field mBreadcrumbs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/browser/BreadCrumbView;",
            ">;"
        }
    .end annotation
.end field

.field mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/BrowserBookmarksAdapter;",
            ">;"
        }
    .end annotation
.end field

.field mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mInflater:Landroid/view/LayoutInflater;

.field mLastViewWidth:I

.field mObserver:Landroid/database/DataSetObserver;

.field mRowCount:I

.field mRowPadding:I

.field final synthetic this$0:Lcom/android/browser/view/BookmarkExpandableView;


# direct methods
.method public constructor <init>(Lcom/android/browser/view/BookmarkExpandableView;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 289
    iput-object p1, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mBreadcrumbs:Ljava/util/HashMap;

    .line 274
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mRowCount:I

    .line 275
    iput v1, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mLastViewWidth:I

    .line 276
    iput v1, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mRowPadding:I

    .line 277
    new-instance v0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter$1;-><init>(Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;)V

    iput-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mObserver:Landroid/database/DataSetObserver;

    .line 290
    # setter for: Lcom/android/browser/view/BookmarkExpandableView;->mContext:Landroid/content/Context;
    invoke-static {p1, p2}, Lcom/android/browser/view/BookmarkExpandableView;->access$302(Lcom/android/browser/view/BookmarkExpandableView;Landroid/content/Context;)Landroid/content/Context;

    .line 291
    # getter for: Lcom/android/browser/view/BookmarkExpandableView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/browser/view/BookmarkExpandableView;->access$300(Lcom/android/browser/view/BookmarkExpandableView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mGroups:Ljava/util/ArrayList;

    .line 294
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 298
    iget-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 299
    invoke-virtual {p0}, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->notifyDataSetChanged()V

    .line 300
    return-void
.end method

.method public getBreadCrumbView(I)Lcom/android/browser/BreadCrumbView;
    .locals 5
    .param p1, "groupPosition"    # I

    .prologue
    .line 414
    iget-object v2, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mBreadcrumbs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/BreadCrumbView;

    .line 415
    .local v1, "crumbs":Lcom/android/browser/BreadCrumbView;
    if-nez v1, :cond_0

    .line 416
    iget-object v2, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04000c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .end local v1    # "crumbs":Lcom/android/browser/BreadCrumbView;
    check-cast v1, Lcom/android/browser/BreadCrumbView;

    .line 418
    .restart local v1    # "crumbs":Lcom/android/browser/BreadCrumbView;
    iget-object v2, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v1, v2}, Lcom/android/browser/BreadCrumbView;->setController(Lcom/android/browser/BreadCrumbView$Controller;)V

    .line 419
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/browser/BreadCrumbView;->setUseBackButton(Z)V

    .line 420
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/browser/BreadCrumbView;->setMaxVisible(I)V

    .line 421
    iget-object v2, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    # getter for: Lcom/android/browser/view/BookmarkExpandableView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/browser/view/BookmarkExpandableView;->access$300(Lcom/android/browser/view/BookmarkExpandableView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0050

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "bookmarks":Ljava/lang/String;
    const/4 v2, 0x0

    sget-object v3, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/browser/BreadCrumbView;->pushView(Ljava/lang/String;ZLjava/lang/Object;)Landroid/view/View;

    .line 424
    const/high16 v2, 0x7f0d0000

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/browser/BreadCrumbView;->setTag(ILjava/lang/Object;)V

    .line 425
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/browser/BreadCrumbView;->setVisibility(I)V

    .line 426
    iget-object v2, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mBreadcrumbs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .end local v0    # "bookmarks":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 309
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    .line 315
    if-nez p4, :cond_0

    .line 316
    iget-object v7, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040004

    invoke-virtual {v7, v8, p5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 318
    :cond_0
    iget-object v7, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserBookmarksAdapter;

    .line 319
    .local v0, "childAdapter":Lcom/android/browser/BrowserBookmarksAdapter;
    iget v5, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mRowCount:I

    .local v5, "rowCount":I
    move-object v4, p4

    .line 320
    check-cast v4, Landroid/widget/LinearLayout;

    .line 321
    .local v4, "row":Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-le v7, v5, :cond_1

    .line 322
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v4, v5, v7}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 324
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_7

    .line 325
    const/4 v1, 0x0

    .line 326
    .local v1, "cv":Landroid/view/View;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-le v7, v2, :cond_2

    .line 327
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 329
    :cond_2
    mul-int v7, p2, v5

    add-int v3, v7, v2

    .line 330
    .local v3, "realChildPosition":I
    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksAdapter;->getCount()I

    move-result v7

    if-ge v3, v7, :cond_6

    .line 331
    invoke-virtual {v0, v3, v1, v4}, Lcom/android/browser/BrowserBookmarksAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 332
    .local v6, "v":Landroid/view/View;
    const/high16 v7, 0x7f0d0000

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 333
    const v7, 0x7f0d0001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 334
    iget-object v7, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    # getter for: Lcom/android/browser/view/BookmarkExpandableView;->mChildClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v7}, Lcom/android/browser/view/BookmarkExpandableView;->access$400(Lcom/android/browser/view/BookmarkExpandableView;)Landroid/view/View$OnClickListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v7, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    # getter for: Lcom/android/browser/view/BookmarkExpandableView;->mLongClickable:Z
    invoke-static {v7}, Lcom/android/browser/view/BookmarkExpandableView;->access$500(Lcom/android/browser/view/BookmarkExpandableView;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setLongClickable(Z)V

    .line 336
    if-nez v1, :cond_4

    .line 337
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 324
    .end local v6    # "v":Landroid/view/View;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    .restart local v6    # "v":Landroid/view/View;
    :cond_4
    if-eq v1, v6, :cond_5

    .line 339
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 340
    invoke-virtual {v4, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 342
    :cond_5
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 344
    .end local v6    # "v":Landroid/view/View;
    :cond_6
    if-eqz v1, :cond_3

    .line 345
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 348
    .end local v1    # "cv":Landroid/view/View;
    .end local v3    # "realChildPosition":I
    :cond_7
    return-object v4
.end method

.method public getChildrenCount(I)I
    .locals 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserBookmarksAdapter;

    .line 354
    .local v0, "adapter":Lcom/android/browser/BrowserBookmarksAdapter;
    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksAdapter;->getCount()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mRowCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    return v1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 386
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "view"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 392
    if-nez p3, :cond_0

    .line 393
    iget-object v4, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040005

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 394
    iget-object v4, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    # getter for: Lcom/android/browser/view/BookmarkExpandableView;->mGroupOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v4}, Lcom/android/browser/view/BookmarkExpandableView;->access$800(Lcom/android/browser/view/BookmarkExpandableView;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    :cond_0
    const/high16 v4, 0x7f0d0000

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 397
    const v4, 0x7f0d0016

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 398
    .local v0, "crumbHolder":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 399
    invoke-virtual {p0, p1}, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->getBreadCrumbView(I)Lcom/android/browser/BreadCrumbView;

    move-result-object v1

    .line 400
    .local v1, "crumbs":Lcom/android/browser/BreadCrumbView;
    invoke-virtual {v1}, Lcom/android/browser/BreadCrumbView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 401
    invoke-virtual {v1}, Lcom/android/browser/BreadCrumbView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 403
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 404
    const v4, 0x7f0d0015

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 405
    .local v3, "name":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 406
    .local v2, "groupName":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 407
    iget-object v4, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    # getter for: Lcom/android/browser/view/BookmarkExpandableView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/browser/view/BookmarkExpandableView;->access$300(Lcom/android/browser/view/BookmarkExpandableView;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0152

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 409
    :cond_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 438
    const/4 v0, 0x1

    return v0
.end method

.method public measureChildren(I)V
    .locals 4
    .param p1, "viewWidth"    # I

    .prologue
    .line 368
    iget v3, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mLastViewWidth:I

    if-ne v3, p1, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v3, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    # getter for: Lcom/android/browser/view/BookmarkExpandableView;->mColumnWidth:I
    invoke-static {v3}, Lcom/android/browser/view/BookmarkExpandableView;->access$600(Lcom/android/browser/view/BookmarkExpandableView;)I

    move-result v3

    div-int v1, p1, v3

    .line 371
    .local v1, "rowCount":I
    iget-object v3, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    # getter for: Lcom/android/browser/view/BookmarkExpandableView;->mMaxColumnCount:I
    invoke-static {v3}, Lcom/android/browser/view/BookmarkExpandableView;->access$700(Lcom/android/browser/view/BookmarkExpandableView;)I

    move-result v3

    if-lez v3, :cond_2

    .line 372
    iget-object v3, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    # getter for: Lcom/android/browser/view/BookmarkExpandableView;->mMaxColumnCount:I
    invoke-static {v3}, Lcom/android/browser/view/BookmarkExpandableView;->access$700(Lcom/android/browser/view/BookmarkExpandableView;)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 374
    :cond_2
    iget-object v3, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    # getter for: Lcom/android/browser/view/BookmarkExpandableView;->mColumnWidth:I
    invoke-static {v3}, Lcom/android/browser/view/BookmarkExpandableView;->access$600(Lcom/android/browser/view/BookmarkExpandableView;)I

    move-result v3

    mul-int/2addr v3, v1

    sub-int v3, p1, v3

    div-int/lit8 v2, v3, 0x2

    .line 375
    .local v2, "rowPadding":I
    iget v3, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mRowCount:I

    if-ne v1, v3, :cond_3

    iget v3, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mRowPadding:I

    if-eq v2, v3, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 376
    .local v0, "notify":Z
    :goto_1
    iput v1, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mRowCount:I

    .line 377
    iput v2, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mRowPadding:I

    .line 378
    iput p1, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mLastViewWidth:I

    .line 379
    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 375
    .end local v0    # "notify":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
