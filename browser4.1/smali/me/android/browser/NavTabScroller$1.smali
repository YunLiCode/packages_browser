.class Lme/android/browser/NavTabScroller$1;
.super Landroid/database/DataSetObserver;
.source "NavTabScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/NavTabScroller;->setAdapter(Landroid/widget/BaseAdapter;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/NavTabScroller;


# direct methods
.method constructor <init>(Lme/android/browser/NavTabScroller;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/NavTabScroller$1;->this$0:Lme/android/browser/NavTabScroller;

    .line 165
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 170
    iget-object v0, p0, Lme/android/browser/NavTabScroller$1;->this$0:Lme/android/browser/NavTabScroller;

    invoke-virtual {v0}, Lme/android/browser/NavTabScroller;->handleDataChanged()V

    .line 171
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 175
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 176
    return-void
.end method
