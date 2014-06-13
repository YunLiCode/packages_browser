.class abstract Lme/android/browser/SuggestionsAdapter$CursorSource;
.super Ljava/lang/Object;
.source "SuggestionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/SuggestionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "CursorSource"
.end annotation


# instance fields
.field mCursor:Landroid/database/Cursor;

.field final synthetic this$0:Lme/android/browser/SuggestionsAdapter;


# direct methods
.method constructor <init>(Lme/android/browser/SuggestionsAdapter;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lme/android/browser/SuggestionsAdapter$CursorSource;->this$0:Lme/android/browser/SuggestionsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lme/android/browser/SuggestionsAdapter$CursorSource;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lme/android/browser/SuggestionsAdapter$CursorSource;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 412
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lme/android/browser/SuggestionsAdapter$CursorSource;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/android/browser/SuggestionsAdapter$CursorSource;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getItem()Lme/android/browser/SuggestionsAdapter$SuggestItem;
.end method

.method moveToNext()Z
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lme/android/browser/SuggestionsAdapter$CursorSource;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public abstract runQuery(Ljava/lang/CharSequence;)V
.end method
