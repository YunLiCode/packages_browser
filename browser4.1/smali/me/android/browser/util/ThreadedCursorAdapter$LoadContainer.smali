.class Lme/android/browser/util/ThreadedCursorAdapter$LoadContainer;
.super Ljava/lang/Object;
.source "ThreadedCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/util/ThreadedCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadContainer"
.end annotation


# instance fields
.field bind_object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field generation:J

.field loaded:Z

.field owner:Landroid/widget/Adapter;

.field position:I

.field final synthetic this$0:Lme/android/browser/util/ThreadedCursorAdapter;

.field view:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lme/android/browser/util/ThreadedCursorAdapter;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lme/android/browser/util/ThreadedCursorAdapter$LoadContainer;->this$0:Lme/android/browser/util/ThreadedCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/android/browser/util/ThreadedCursorAdapter;Lme/android/browser/util/ThreadedCursorAdapter$LoadContainer;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lme/android/browser/util/ThreadedCursorAdapter$LoadContainer;-><init>(Lme/android/browser/util/ThreadedCursorAdapter;)V

    return-void
.end method
