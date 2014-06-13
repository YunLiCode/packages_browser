.class Lme/android/browser/UrlInputView$1;
.super Ljava/lang/Object;
.source "UrlInputView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/UrlInputView;->onFocusChanged(ZILandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/UrlInputView;

.field private final synthetic val$s:I


# direct methods
.method constructor <init>(Lme/android/browser/UrlInputView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/UrlInputView$1;->this$0:Lme/android/browser/UrlInputView;

    iput p2, p0, Lme/android/browser/UrlInputView$1;->val$s:I

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lme/android/browser/UrlInputView$1;->this$0:Lme/android/browser/UrlInputView;

    iget v1, p0, Lme/android/browser/UrlInputView$1;->val$s:I

    # invokes: Lme/android/browser/UrlInputView;->changeState(I)V
    invoke-static {v0, v1}, Lme/android/browser/UrlInputView;->access$1(Lme/android/browser/UrlInputView;I)V

    .line 134
    return-void
.end method
