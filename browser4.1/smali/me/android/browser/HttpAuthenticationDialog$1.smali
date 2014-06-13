.class Lme/android/browser/HttpAuthenticationDialog$1;
.super Ljava/lang/Object;
.source "HttpAuthenticationDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/HttpAuthenticationDialog;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/HttpAuthenticationDialog;


# direct methods
.method constructor <init>(Lme/android/browser/HttpAuthenticationDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/HttpAuthenticationDialog$1;->this$0:Lme/android/browser/HttpAuthenticationDialog;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 118
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 119
    iget-object v0, p0, Lme/android/browser/HttpAuthenticationDialog$1;->this$0:Lme/android/browser/HttpAuthenticationDialog;

    # getter for: Lme/android/browser/HttpAuthenticationDialog;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lme/android/browser/HttpAuthenticationDialog;->access$0(Lme/android/browser/HttpAuthenticationDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 120
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
