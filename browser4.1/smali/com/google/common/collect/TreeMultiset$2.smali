.class Lcom/google/common/collect/TreeMultiset$2;
.super Ljava/lang/Object;
.source "TreeMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeMultiset;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field current:Lcom/google/common/collect/TreeMultiset$AvlNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation
.end field

.field prevEntry:Lcom/google/common/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeMultiset;)V
    .locals 1

    .prologue
    .line 401
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$2;, "Lcom/google/common/collect/TreeMultiset.2;"
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$2;->this$0:Lcom/google/common/collect/TreeMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$2;->this$0:Lcom/google/common/collect/TreeMultiset;

    # invokes: Lcom/google/common/collect/TreeMultiset;->firstNode()Lcom/google/common/collect/TreeMultiset$AvlNode;
    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->access$1200(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$2;->current:Lcom/google/common/collect/TreeMultiset$AvlNode;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$2;, "Lcom/google/common/collect/TreeMultiset.2;"
    const/4 v0, 0x0

    .line 407
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$2;->current:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v1, :cond_0

    .line 413
    :goto_0
    return v0

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$2;->this$0:Lcom/google/common/collect/TreeMultiset;

    # getter for: Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;
    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset;->access$1300(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/GeneralRange;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$2;->current:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-virtual {v2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/GeneralRange;->tooHigh(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 410
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$2;->current:Lcom/google/common/collect/TreeMultiset$AvlNode;

    goto :goto_0

    .line 413
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public next()Lcom/google/common/collect/Multiset$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 419
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$2;, "Lcom/google/common/collect/TreeMultiset.2;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$2;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 420
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 422
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$2;->this$0:Lcom/google/common/collect/TreeMultiset;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$2;->current:Lcom/google/common/collect/TreeMultiset$AvlNode;

    # invokes: Lcom/google/common/collect/TreeMultiset;->wrapEntry(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/Multiset$Entry;
    invoke-static {v1, v2}, Lcom/google/common/collect/TreeMultiset;->access$1400(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    .line 423
    .local v0, "result":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<TE;>;"
    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$2;->prevEntry:Lcom/google/common/collect/Multiset$Entry;

    .line 424
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$2;->current:Lcom/google/common/collect/TreeMultiset$AvlNode;

    # getter for: Lcom/google/common/collect/TreeMultiset$AvlNode;->succ:Lcom/google/common/collect/TreeMultiset$AvlNode;
    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$900(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$2;->this$0:Lcom/google/common/collect/TreeMultiset;

    # getter for: Lcom/google/common/collect/TreeMultiset;->header:Lcom/google/common/collect/TreeMultiset$AvlNode;
    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset;->access$1500(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 425
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$2;->current:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 429
    :goto_0
    return-object v0

    .line 427
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$2;->current:Lcom/google/common/collect/TreeMultiset$AvlNode;

    # getter for: Lcom/google/common/collect/TreeMultiset$AvlNode;->succ:Lcom/google/common/collect/TreeMultiset$AvlNode;
    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$900(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$2;->current:Lcom/google/common/collect/TreeMultiset$AvlNode;

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 401
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$2;, "Lcom/google/common/collect/TreeMultiset.2;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$2;->next()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$2;, "Lcom/google/common/collect/TreeMultiset.2;"
    const/4 v1, 0x0

    .line 434
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$2;->prevEntry:Lcom/google/common/collect/Multiset$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 435
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$2;->this$0:Lcom/google/common/collect/TreeMultiset;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$2;->prevEntry:Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v2}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/TreeMultiset;->setCount(Ljava/lang/Object;I)I

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$2;->prevEntry:Lcom/google/common/collect/Multiset$Entry;

    .line 437
    return-void

    :cond_0
    move v0, v1

    .line 434
    goto :goto_0
.end method
