.class Lme/android/browser/UrlInputView$2;
.super Ljava/lang/Object;
.source "UrlInputView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/UrlInputView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/UrlInputView;


# direct methods
.method constructor <init>(Lme/android/browser/UrlInputView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/UrlInputView$2;->this$0:Lme/android/browser/UrlInputView;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lme/android/browser/UrlInputView$2;->this$0:Lme/android/browser/UrlInputView;

    const/4 v1, 0x2

    # invokes: Lme/android/browser/UrlInputView;->changeState(I)V
    invoke-static {v0, v1}, Lme/android/browser/UrlInputView;->access$1(Lme/android/browser/UrlInputView;I)V

    .line 147
    return-void
.end method