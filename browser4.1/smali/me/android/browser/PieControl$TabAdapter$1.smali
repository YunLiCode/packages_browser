.class Lme/android/browser/PieControl$TabAdapter$1;
.super Ljava/lang/Object;
.source "PieControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/PieControl$TabAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lme/android/browser/PieControl$TabAdapter;

.field private final synthetic val$tab:Lme/android/browser/Tab;


# direct methods
.method constructor <init>(Lme/android/browser/PieControl$TabAdapter;Lme/android/browser/Tab;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/PieControl$TabAdapter$1;->this$1:Lme/android/browser/PieControl$TabAdapter;

    iput-object p2, p0, Lme/android/browser/PieControl$TabAdapter$1;->val$tab:Lme/android/browser/Tab;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 332
    iget-object v0, p0, Lme/android/browser/PieControl$TabAdapter$1;->this$1:Lme/android/browser/PieControl$TabAdapter;

    iget-object v0, v0, Lme/android/browser/PieControl$TabAdapter;->mUiController:Lme/android/browser/UiController;

    iget-object v1, p0, Lme/android/browser/PieControl$TabAdapter$1;->val$tab:Lme/android/browser/Tab;

    invoke-interface {v0, v1}, Lme/android/browser/UiController;->switchToTab(Lme/android/browser/Tab;)Z

    .line 333
    return-void
.end method
