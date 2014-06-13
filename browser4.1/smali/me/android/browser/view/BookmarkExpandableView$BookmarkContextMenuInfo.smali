.class public Lme/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;
.super Ljava/lang/Object;
.source "BookmarkExpandableView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/view/BookmarkExpandableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BookmarkContextMenuInfo"
.end annotation


# instance fields
.field public childPosition:I

.field public groupPosition:I


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .param p1, "childPosition"    # I
    .param p2, "groupPosition"    # I

    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    iput p1, p0, Lme/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;->childPosition:I

    .line 446
    iput p2, p0, Lme/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;->groupPosition:I

    .line 447
    return-void
.end method

.method synthetic constructor <init>(IILme/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;)V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0, p1, p2}, Lme/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;-><init>(II)V

    return-void
.end method
