.class Lme/android/browser/PieControl$1;
.super Ljava/lang/Object;
.source "PieControl.java"

# interfaces
.implements Lme/android/browser/view/PieMenu$PieView$OnLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/PieControl;->populateMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/PieControl;


# direct methods
.method constructor <init>(Lme/android/browser/PieControl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/PieControl$1;->this$0:Lme/android/browser/PieControl;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(IIZ)V
    .locals 1
    .param p1, "ax"    # I
    .param p2, "ay"    # I
    .param p3, "left"    # Z

    .prologue
    .line 156
    iget-object v0, p0, Lme/android/browser/PieControl$1;->this$0:Lme/android/browser/PieControl;

    # invokes: Lme/android/browser/PieControl;->buildTabs()V
    invoke-static {v0}, Lme/android/browser/PieControl;->access$0(Lme/android/browser/PieControl;)V

    .line 157
    return-void
.end method
