.class Lme/android/browser/Tab$3$3;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/Tab$3;->setupAutoFill(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lme/android/browser/Tab$3;

.field private final synthetic val$layout:Landroid/view/View;

.field private final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lme/android/browser/Tab$3;Landroid/view/View;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/Tab$3$3;->this$1:Lme/android/browser/Tab$3;

    iput-object p2, p0, Lme/android/browser/Tab$3$3;->val$layout:Landroid/view/View;

    iput-object p3, p0, Lme/android/browser/Tab$3$3;->val$msg:Landroid/os/Message;

    .line 1017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1020
    iget-object v1, p0, Lme/android/browser/Tab$3$3;->val$layout:Landroid/view/View;

    .line 1021
    const v2, 0x7f0d0066

    .line 1020
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1023
    .local v0, "disableAutoFill":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1025
    iget-object v1, p0, Lme/android/browser/Tab$3$3;->this$1:Lme/android/browser/Tab$3;

    # getter for: Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;
    invoke-static {v1}, Lme/android/browser/Tab$3;->access$2(Lme/android/browser/Tab$3;)Lme/android/browser/Tab;

    move-result-object v1

    # getter for: Lme/android/browser/Tab;->mSettings:Lme/android/browser/BrowserSettings;
    invoke-static {v1}, Lme/android/browser/Tab;->access$13(Lme/android/browser/Tab;)Lme/android/browser/BrowserSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lme/android/browser/BrowserSettings;->setAutofillEnabled(Z)V

    .line 1026
    iget-object v1, p0, Lme/android/browser/Tab$3$3;->this$1:Lme/android/browser/Tab$3;

    # getter for: Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;
    invoke-static {v1}, Lme/android/browser/Tab$3;->access$2(Lme/android/browser/Tab$3;)Lme/android/browser/Tab;

    move-result-object v1

    iget-object v1, v1, Lme/android/browser/Tab;->mContext:Landroid/content/Context;

    .line 1027
    const v2, 0x7f08009e

    .line 1028
    const/4 v3, 0x1

    .line 1026
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 1028
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1035
    :goto_0
    return-void

    .line 1033
    :cond_0
    iget-object v1, p0, Lme/android/browser/Tab$3$3;->this$1:Lme/android/browser/Tab$3;

    # getter for: Lme/android/browser/Tab$3;->this$0:Lme/android/browser/Tab;
    invoke-static {v1}, Lme/android/browser/Tab$3;->access$2(Lme/android/browser/Tab$3;)Lme/android/browser/Tab;

    move-result-object v1

    iget-object v1, v1, Lme/android/browser/Tab;->mWebViewController:Lme/android/browser/WebViewController;

    iget-object v2, p0, Lme/android/browser/Tab$3$3;->val$msg:Landroid/os/Message;

    invoke-interface {v1, v2}, Lme/android/browser/WebViewController;->setupAutoFill(Landroid/os/Message;)V

    goto :goto_0
.end method
