.class Lme/android/browser/NavScreen$2;
.super Ljava/lang/Object;
.source "NavScreen.java"

# interfaces
.implements Lme/android/browser/NavTabScroller$OnLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/NavScreen;->openNewTab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/NavScreen;

.field private final synthetic val$tab:Lme/android/browser/Tab;

.field private final synthetic val$tix:I


# direct methods
.method constructor <init>(Lme/android/browser/NavScreen;ILme/android/browser/Tab;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/NavScreen$2;->this$0:Lme/android/browser/NavScreen;

    iput p2, p0, Lme/android/browser/NavScreen$2;->val$tix:I

    iput-object p3, p0, Lme/android/browser/NavScreen$2;->val$tab:Lme/android/browser/Tab;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(IIII)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lme/android/browser/NavScreen$2;->this$0:Lme/android/browser/NavScreen;

    iget-object v0, v0, Lme/android/browser/NavScreen;->mUi:Lme/android/browser/PhoneUi;

    iget v1, p0, Lme/android/browser/NavScreen$2;->val$tix:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lme/android/browser/PhoneUi;->hideNavScreen(IZ)V

    .line 180
    iget-object v0, p0, Lme/android/browser/NavScreen$2;->this$0:Lme/android/browser/NavScreen;

    iget-object v1, p0, Lme/android/browser/NavScreen$2;->val$tab:Lme/android/browser/Tab;

    # invokes: Lme/android/browser/NavScreen;->switchToTab(Lme/android/browser/Tab;)V
    invoke-static {v0, v1}, Lme/android/browser/NavScreen;->access$0(Lme/android/browser/NavScreen;Lme/android/browser/Tab;)V

    .line 181
    return-void
.end method
