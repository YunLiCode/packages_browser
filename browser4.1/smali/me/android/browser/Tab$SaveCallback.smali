.class Lme/android/browser/Tab$SaveCallback;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/Tab;
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
    .line 1802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/android/browser/Tab$SaveCallback;)V
    .locals 0

    .prologue
    .line 1802
    invoke-direct {p0}, Lme/android/browser/Tab$SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 1807
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lme/android/browser/Tab$SaveCallback;->mResult:Z

    .line 1808
    monitor-enter p0

    .line 1809
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1808
    monitor-exit p0

    .line 1811
    return-void

    .line 1808
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lme/android/browser/Tab$SaveCallback;->onReceiveValue(Ljava/lang/Boolean;)V

    return-void
.end method
