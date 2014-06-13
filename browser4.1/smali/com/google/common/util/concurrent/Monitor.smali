.class public final Lcom/google/common/util/concurrent/Monitor;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Monitor$Guard;
    }
.end annotation


# instance fields
.field private activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final fair:Z

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Monitor;-><init>(Z)V

    .line 312
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "fair"    # Z

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 321
    iput-boolean p1, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    .line 322
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 323
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/util/concurrent/Monitor;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/Monitor;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private await(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    .locals 1
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "signalBeforeWaiting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 957
    if-eqz p2, :cond_0

    .line 958
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V

    .line 960
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->beginWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 963
    :cond_1
    :try_start_0
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 964
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 966
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 968
    return-void

    .line 966
    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    throw v0
.end method

.method private awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z
    .locals 2
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "nanos"    # J
    .param p4, "signalBeforeWaiting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 988
    if-eqz p4, :cond_0

    .line 989
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V

    .line 991
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->beginWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 994
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_2

    .line 995
    const/4 v0, 0x0

    .line 1001
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    :goto_0
    return v0

    .line 997
    :cond_2
    :try_start_0
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p2

    .line 998
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 999
    const/4 v0, 0x1

    .line 1001
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    throw v0
.end method

.method private awaitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    .locals 1
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "signalBeforeWaiting"    # Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 972
    if-eqz p2, :cond_0

    .line 973
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V

    .line 975
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->beginWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 978
    :cond_1
    :try_start_0
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    .line 979
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 981
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 983
    return-void

    .line 981
    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    throw v0
.end method

.method private beginWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 2
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 918
    iget v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    .line 919
    .local v0, "waiters":I
    if-nez v0, :cond_0

    .line 921
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    iput-object v1, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 922
    iput-object p1, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 924
    :cond_0
    return-void
.end method

.method private endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 4
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 931
    iget v3, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    add-int/lit8 v2, v3, -0x1

    iput v2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    .line 932
    .local v2, "waiters":I
    if-nez v2, :cond_0

    .line 934
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    .local v0, "p":Lcom/google/common/util/concurrent/Monitor$Guard;
    const/4 v1, 0x0

    .line 935
    .local v1, "pred":Lcom/google/common/util/concurrent/Monitor$Guard;
    :goto_0
    if-ne v0, p1, :cond_2

    .line 936
    if-nez v1, :cond_1

    .line 937
    iget-object v3, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    iput-object v3, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 941
    :goto_1
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 946
    .end local v0    # "p":Lcom/google/common/util/concurrent/Monitor$Guard;
    .end local v1    # "pred":Lcom/google/common/util/concurrent/Monitor$Guard;
    :cond_0
    return-void

    .line 939
    .restart local v0    # "p":Lcom/google/common/util/concurrent/Monitor$Guard;
    .restart local v1    # "pred":Lcom/google/common/util/concurrent/Monitor$Guard;
    :cond_1
    iget-object v3, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    iput-object v3, v1, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    goto :goto_1

    .line 934
    :cond_2
    move-object v1, v0

    iget-object v0, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    goto :goto_0
.end method

.method private isSatisfied(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 2
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 896
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalAllWaiters()V

    .line 899
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private signalAllWaiters()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 908
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    .local v0, "guard":Lcom/google/common/util/concurrent/Monitor$Guard;
    :goto_0
    if-eqz v0, :cond_0

    .line 909
    iget-object v1, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 908
    iget-object v0, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    goto :goto_0

    .line 911
    :cond_0
    return-void
.end method

.method private signalNextWaiter()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 863
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    .local v0, "guard":Lcom/google/common/util/concurrent/Monitor$Guard;
    :goto_0
    if-eqz v0, :cond_0

    .line 864
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Monitor;->isSatisfied(Lcom/google/common/util/concurrent/Monitor$Guard;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 865
    iget-object v1, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 869
    :cond_0
    return-void

    .line 863
    :cond_1
    iget-object v0, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 330
    return-void
.end method

.method public enter(JLjava/util/concurrent/TimeUnit;)Z
    .locals 9
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 345
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    .line 346
    .local v5, "timeoutNanos":J
    iget-object v4, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 347
    .local v4, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-boolean v7, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    if-nez v7, :cond_1

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 348
    const/4 v7, 0x1

    .line 363
    :cond_0
    :goto_0
    return v7

    .line 350
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    add-long v0, v7, v5

    .line 351
    .local v0, "deadline":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    .line 355
    .local v3, "interrupted":Z
    :goto_1
    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 362
    if-eqz v3, :cond_0

    .line 363
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 356
    :catch_0
    move-exception v2

    .line 357
    .local v2, "interrupt":Ljava/lang/InterruptedException;
    const/4 v3, 0x1

    .line 358
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v7

    sub-long v5, v0, v7

    .line 359
    goto :goto_1

    .line 362
    .end local v2    # "interrupt":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    if-eqz v3, :cond_2

    .line 363
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw v7
.end method

.method public enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 3
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .prologue
    .line 540
    iget-object v2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v2, p0, :cond_0

    .line 541
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 544
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 546
    const/4 v1, 0x0

    .line 548
    .local v1, "satisfied":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 550
    if-nez v1, :cond_1

    .line 551
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    return v1

    .line 550
    :catchall_0
    move-exception v2

    if-nez v1, :cond_2

    .line 551
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    throw v2
.end method

.method public enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 586
    iget-object v1, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v1, p0, :cond_0

    .line 587
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1

    .line 589
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/common/util/concurrent/Monitor;->enter(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 590
    const/4 v0, 0x0

    .line 598
    :cond_1
    :goto_0
    return v0

    .line 593
    :cond_2
    const/4 v0, 0x0

    .line 595
    .local v0, "satisfied":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 597
    if-nez v0, :cond_1

    .line 598
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 597
    :catchall_0
    move-exception v1

    if-nez v0, :cond_3

    .line 598
    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_3
    throw v1
.end method

.method public enterIfInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 3
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 563
    iget-object v2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v2, p0, :cond_0

    .line 564
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 567
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 569
    const/4 v1, 0x0

    .line 571
    .local v1, "satisfied":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 573
    if-nez v1, :cond_1

    .line 574
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    return v1

    .line 573
    :catchall_0
    move-exception v2

    if-nez v1, :cond_2

    .line 574
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    throw v2
.end method

.method public enterIfInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 611
    iget-object v2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v2, p0, :cond_0

    .line 612
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 615
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 616
    const/4 v1, 0x0

    .line 624
    :cond_1
    :goto_0
    return v1

    .line 619
    :cond_2
    const/4 v1, 0x0

    .line 621
    .local v1, "satisfied":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 623
    if-nez v1, :cond_1

    .line 624
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 623
    :catchall_0
    move-exception v2

    if-nez v1, :cond_3

    .line 624
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_3
    throw v2
.end method

.method public enterInterruptibly()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 337
    return-void
.end method

.method public enterInterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public enterWhen(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 4
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 392
    iget-object v3, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v3, p0, :cond_0

    .line 393
    new-instance v3, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v3}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v3

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 396
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    .line 397
    .local v2, "signalBeforeWaiting":Z
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 399
    const/4 v1, 0x0

    .line 401
    .local v1, "satisfied":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v3

    if-nez v3, :cond_1

    .line 402
    invoke-direct {p0, p1, v2}, Lcom/google/common/util/concurrent/Monitor;->await(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    :cond_1
    const/4 v1, 0x1

    .line 406
    if-nez v1, :cond_2

    .line 407
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 410
    :cond_2
    return-void

    .line 406
    :catchall_0
    move-exception v3

    if-nez v1, :cond_3

    .line 407
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    :cond_3
    throw v3
.end method

.method public enterWhen(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 11
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 444
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 445
    .local v6, "timeoutNanos":J
    iget-object v9, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v9, p0, :cond_0

    .line 446
    new-instance v8, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v8}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v8

    .line 448
    :cond_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 449
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    .line 450
    .local v3, "reentrant":Z
    iget-boolean v9, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    if-nez v9, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v9

    if-nez v9, :cond_3

    .line 451
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    add-long v0, v9, v6

    .line 452
    .local v0, "deadline":J
    invoke-virtual {v2, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 472
    .end local v0    # "deadline":J
    :goto_0
    return v8

    .line 455
    .restart local v0    # "deadline":J
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long v6, v0, v9

    .line 458
    .end local v0    # "deadline":J
    :cond_3
    const/4 v4, 0x0

    .line 459
    .local v4, "satisfied":Z
    const/4 v5, 0x1

    .line 461
    .local v5, "threw":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-direct {p0, p1, v6, v7, v3}, Lcom/google/common/util/concurrent/Monitor;->awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v9

    if-eqz v9, :cond_7

    :cond_4
    const/4 v4, 0x1

    .line 462
    :goto_1
    const/4 v5, 0x0

    .line 465
    if-nez v4, :cond_6

    .line 468
    if-eqz v5, :cond_5

    if-nez v3, :cond_5

    .line 469
    :try_start_1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    :cond_5
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_6
    move v8, v4

    goto :goto_0

    :cond_7
    move v4, v8

    .line 461
    goto :goto_1

    .line 472
    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v8

    .line 465
    :catchall_1
    move-exception v8

    if-nez v4, :cond_9

    .line 468
    if-eqz v5, :cond_8

    if-nez v3, :cond_8

    .line 469
    :try_start_2
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 472
    :cond_8
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_9
    throw v8

    :catchall_2
    move-exception v8

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v8
.end method

.method public enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 4
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .prologue
    .line 416
    iget-object v3, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v3, p0, :cond_0

    .line 417
    new-instance v3, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v3}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v3

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 420
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    .line 421
    .local v2, "signalBeforeWaiting":Z
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 423
    const/4 v1, 0x0

    .line 425
    .local v1, "satisfied":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v3

    if-nez v3, :cond_1

    .line 426
    invoke-direct {p0, p1, v2}, Lcom/google/common/util/concurrent/Monitor;->awaitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :cond_1
    const/4 v1, 0x1

    .line 430
    if-nez v1, :cond_2

    .line 431
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 434
    :cond_2
    return-void

    .line 430
    :catchall_0
    move-exception v3

    if-nez v1, :cond_3

    .line 431
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    :cond_3
    throw v3
.end method

.method public enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 15
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 485
    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v11

    .line 486
    .local v11, "timeoutNanos":J
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v13, p0, :cond_0

    .line 487
    new-instance v13, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v13}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v13

    .line 489
    :cond_0
    iget-object v7, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 490
    .local v7, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    add-long v3, v13, v11

    .line 491
    .local v3, "deadline":J
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v10

    .line 492
    .local v10, "signalBeforeWaiting":Z
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    .line 494
    .local v6, "interrupted":Z
    :try_start_0
    iget-boolean v13, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    if-nez v13, :cond_1

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v13

    if-nez v13, :cond_5

    .line 495
    :cond_1
    const/4 v8, 0x0

    .line 498
    .local v8, "locked":Z
    :cond_2
    :try_start_1
    sget-object v13, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v11, v12, v13}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    .line 499
    if-nez v8, :cond_4

    .line 500
    const/4 v9, 0x0

    .line 527
    if-eqz v6, :cond_3

    .line 528
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->interrupt()V

    .end local v8    # "locked":Z
    :cond_3
    :goto_0
    return v9

    .line 502
    .restart local v8    # "locked":Z
    :catch_0
    move-exception v5

    .line 503
    .local v5, "interrupt":Ljava/lang/InterruptedException;
    const/4 v6, 0x1

    .line 505
    .end local v5    # "interrupt":Ljava/lang/InterruptedException;
    :cond_4
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v13

    sub-long v11, v3, v13

    .line 506
    if-eqz v8, :cond_2

    .line 509
    .end local v8    # "locked":Z
    :cond_5
    const/4 v9, 0x0

    .line 513
    .local v9, "satisfied":Z
    :goto_1
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v13

    if-nez v13, :cond_6

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v11, v12, v10}, Lcom/google/common/util/concurrent/Monitor;->awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v13

    if-eqz v13, :cond_8

    :cond_6
    const/4 v9, 0x1

    .line 522
    :goto_2
    if-nez v9, :cond_7

    .line 523
    :try_start_4
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 527
    :cond_7
    if-eqz v6, :cond_3

    .line 528
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 513
    :cond_8
    const/4 v9, 0x0

    goto :goto_2

    .line 515
    :catch_1
    move-exception v5

    .line 516
    .restart local v5    # "interrupt":Ljava/lang/InterruptedException;
    const/4 v6, 0x1

    .line 517
    const/4 v10, 0x0

    .line 518
    :try_start_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v13

    sub-long v11, v3, v13

    .line 519
    goto :goto_1

    .line 522
    .end local v5    # "interrupt":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v13

    if-nez v9, :cond_9

    .line 523
    :try_start_6
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_9
    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 527
    .end local v9    # "satisfied":Z
    :catchall_1
    move-exception v13

    if-eqz v6, :cond_a

    .line 528
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->interrupt()V

    :cond_a
    throw v13
.end method

.method public getOccupiedDepth()I
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    return v0
.end method

.method public getQueueLength()I
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    move-result v0

    return v0
.end method

.method public getWaitQueueLength(Lcom/google/common/util/concurrent/Monitor$Guard;)I
    .locals 2
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .prologue
    .line 826
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v0, p0, :cond_0

    .line 827
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 831
    :try_start_0
    iget v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public hasQueuedThread(Ljava/lang/Thread;)Z
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 806
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantLock;->hasQueuedThread(Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method

.method public hasQueuedThreads()Z
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->hasQueuedThreads()Z

    move-result v0

    return v0
.end method

.method public hasWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 1
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .prologue
    .line 816
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->getWaitQueueLength(Lcom/google/common/util/concurrent/Monitor$Guard;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFair()Z
    .locals 1

    .prologue
    .line 752
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    return v0
.end method

.method public isOccupied()Z
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    return v0
.end method

.method public isOccupiedByCurrentThread()Z
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public leave()V
    .locals 3

    .prologue
    .line 737
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 740
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 741
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 746
    return-void

    .line 744
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public tryEnter()Z
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    return v0
.end method

.method public tryEnterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 3
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .prologue
    .line 638
    iget-object v2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v2, p0, :cond_0

    .line 639
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 642
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v2

    if-nez v2, :cond_2

    .line 643
    const/4 v1, 0x0

    .line 651
    :cond_1
    :goto_0
    return v1

    .line 646
    :cond_2
    const/4 v1, 0x0

    .line 648
    .local v1, "satisfied":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 650
    if-nez v1, :cond_1

    .line 651
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 650
    :catchall_0
    move-exception v2

    if-nez v1, :cond_3

    .line 651
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_3
    throw v2
.end method

.method public waitFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 3
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 661
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 662
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 661
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 664
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_2

    .line 665
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/Monitor;->await(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V

    .line 667
    :cond_2
    return-void
.end method

.method public waitFor(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 689
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 690
    .local v0, "timeoutNanos":J
    iget-object v2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v2, p0, :cond_0

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v5

    and-int/2addr v2, v5

    if-nez v2, :cond_1

    .line 691
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    :cond_0
    move v2, v4

    .line 690
    goto :goto_0

    .line 693
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/google/common/util/concurrent/Monitor;->awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v4, v3

    :cond_3
    return v4
.end method

.method public waitForUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 3
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .prologue
    const/4 v1, 0x1

    .line 674
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 675
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 674
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 677
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_2

    .line 678
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/Monitor;->awaitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V

    .line 680
    :cond_2
    return-void
.end method

.method public waitForUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 11
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const/4 v8, 0x1

    .line 703
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    .line 704
    .local v5, "timeoutNanos":J
    iget-object v7, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v7, p0, :cond_0

    move v7, v8

    :goto_0
    iget-object v9, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v9

    and-int/2addr v7, v9

    if-nez v7, :cond_1

    .line 705
    new-instance v7, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v7}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v7

    .line 704
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 707
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 728
    :cond_2
    :goto_1
    return v8

    .line 710
    :cond_3
    const/4 v4, 0x1

    .line 711
    .local v4, "signalBeforeWaiting":Z
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    add-long v0, v9, v5

    .line 712
    .local v0, "deadline":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    .line 716
    .local v3, "interrupted":Z
    :goto_2
    :try_start_0
    invoke-direct {p0, p1, v5, v6, v4}, Lcom/google/common/util/concurrent/Monitor;->awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 727
    if-eqz v3, :cond_2

    .line 728
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 717
    :catch_0
    move-exception v2

    .line 718
    .local v2, "interrupt":Ljava/lang/InterruptedException;
    const/4 v3, 0x1

    .line 719
    :try_start_1
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_4

    .line 727
    if-eqz v3, :cond_2

    .line 728
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 722
    :cond_4
    const/4 v4, 0x0

    .line 723
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v9

    sub-long v5, v0, v9

    .line 724
    goto :goto_2

    .line 727
    .end local v2    # "interrupt":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    if-eqz v3, :cond_5

    .line 728
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    throw v7
.end method
