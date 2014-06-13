.class Lcom/android/browser/Tab$SaveCallback;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mResult:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/Tab$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/browser/Tab$1;

    .prologue
    .line 1805
    invoke-direct {p0}, Lcom/android/browser/Tab$SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 1810
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/browser/Tab$SaveCallback;->mResult:Z

    .line 1811
    monitor-enter p0

    .line 1812
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1813
    monitor-exit p0

    .line 1814
    return-void

    .line 1813
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1805
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/browser/Tab$SaveCallback;->onReceiveValue(Ljava/lang/Boolean;)V

    return-void
.end method
